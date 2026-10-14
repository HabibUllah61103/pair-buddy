/**
 * withPairWidgetsIOS — Expo config plugin for Pair Buddy's iOS WidgetKit widget.
 *
 * The app is managed workflow (no ios/ directory in the repo). At prebuild
 * time this plugin materializes the widget extension's native sources:
 *
 *   ios/PairWidgets/
 *     PairWidgets.swift          WidgetKit provider + small/medium views
 *     PairWidgetsBundle.swift    @main WidgetBundle
 *     PairWidgets-Info.plist     extension Info.plist
 *     PairWidgets.entitlements   App Groups entitlement for the extension
 *   ios/<ProjectName>/
 *     PairWidgetDataModule.h/.m  legacy NativeModule bridge: JS -> App Group
 *     <ProjectName>.entitlements  App Groups entitlement for the main app
 *                                 (only when the target has none yet)
 *
 * plus full Xcode project surgery via withXcodeProject:
 *   - a PBXNativeTarget "PairWidgets" (app_extension, com.pairbuddy.app.widgets),
 *     automatically embedded in the main app via an "Embed App Extensions"
 *     Copy Files phase,
 *   - a Sources build phase with both Swift files in a real "PairWidgets" group,
 *   - extension build settings (Swift 5, deployment target, entitlements),
 *   - the data module compiled into the main target,
 *   - the App Groups entitlement on the main target (merged, never clobbered).
 *
 * Data flow (mirrors the Android plugin): JS calls
 * NativeModules.PairWidgetDataModule.setWidgetData(json); the module writes
 * the payload into the shared App Group container and asks WidgetCenter to
 * reload timelines. The Swift TimelineProvider reads the same JSON.
 *
 * Run `npx expo prebuild` (or `npx expo run:ios`) on a Mac with Xcode to apply.
 *
 * Clean-room implementation for Pair Buddy. No third-party widget code.
 */

const {
  withDangerousMod,
  withXcodeProject,
} = require('@expo/config-plugins');
const fs = require('fs');
const path = require('path');

const EXTENSION_NAME = 'PairWidgets';
const EXTENSION_BUNDLE_ID = 'com.pairbuddy.app.widgets';
const APP_GROUP = 'group.com.pairbuddy.app';
const PAYLOAD_KEY = 'widget_data_json';
const ENTITLEMENTS_KEY = 'com.apple.security.application-groups';

// ---------------------------------------------------------------------------
// Native sources (written verbatim)
// ---------------------------------------------------------------------------

const PAIR_WIDGETS_SWIFT = `import SwiftUI
import WidgetKit

// MARK: - Payload

/// The JSON payload written by the app (see src/lib/widgets.ts) into the
/// shared App Group container under the key "${PAYLOAD_KEY}".
/// Decoding is tolerant: the widget renders a fallback instead of crashing
/// on a partial payload.
struct WidgetPayload: Decodable {
    var type: String
    var title: String
    var line1: String
    var line2: String?

    init() {
        type = "countdown"
        title = "Pair Buddy"
        line1 = "Open the app"
        line2 = nil
    }

    enum CodingKeys: String, CodingKey {
        case type, title, line1, line2
    }

    init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let value = try? container.decode(String.self, forKey: .type) { type = value }
        if let value = try? container.decode(String.self, forKey: .title) { title = value }
        if let value = try? container.decode(String.self, forKey: .line1) { line1 = value }
        line2 = try? container.decode(String.self, forKey: .line2)
    }
}

// MARK: - Timeline

struct PairEntry: TimelineEntry {
    let date: Date
    let payload: WidgetPayload
}

private let appGroupId = "${APP_GROUP}"
private let payloadKey = "${PAYLOAD_KEY}"

func readWidgetPayload() -> WidgetPayload {
    let fallback = WidgetPayload()
    guard
        let defaults = UserDefaults(suiteName: appGroupId),
        let raw = defaults.string(forKey: payloadKey),
        let data = raw.data(using: .utf8),
        let payload = try? JSONDecoder().decode(WidgetPayload.self, from: data)
    else {
        return fallback
    }
    return payload
}

struct PairProvider: TimelineProvider {
    func placeholder(in context: Context) -> PairEntry {
        PairEntry(date: Date(), payload: WidgetPayload())
    }

    func getSnapshot(in context: Context, completion: @escaping (PairEntry) -> Void) {
        completion(PairEntry(date: Date(), payload: readWidgetPayload()))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<PairEntry>) -> Void) {
        let entry = PairEntry(date: Date(), payload: readWidgetPayload())
        // The app pushes fresh data on every relevant change; refresh at most
        // every 30 minutes as a backstop.
        let nextRefresh = Calendar.current.date(byAdding: .minute, value: 30, to: Date()) ?? Date()
        completion(Timeline(entries: [entry], policy: .after(nextRefresh)))
    }
}

// MARK: - Views

struct PairWidgetView: View {
    var entry: PairEntry
    @Environment(\\.widgetFamily) private var family

    private var navy: Color { Color(red: 0x12 / 255, green: 0x3B / 255, blue: 0x63 / 255) }
    private var teal: Color { Color(red: 0x14 / 255, green: 0xB8 / 255, blue: 0xA6 / 255) }
    private var muted: Color { Color(red: 0x8A / 255, green: 0xA0 / 255, blue: 0xB8 / 255) }

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(entry.payload.title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(teal)
                .lineLimit(1)
            Text(entry.payload.line1)
                .font(family == .systemSmall ? .headline : .title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .lineLimit(2)
            if family != .systemSmall, let line2 = entry.payload.line2 {
                Text(line2)
                    .font(.caption)
                    .foregroundColor(muted)
                    .lineLimit(2)
            }
            Spacer(minLength: 0)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(navy)
        .widgetURL(URL(string: "pairbuddy://"))
    }
}

struct PairBuddyWidget: Widget {
    let kind = "com.pairbuddy.app.widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: PairProvider()) { entry in
            PairWidgetView(entry: entry)
        }
        .configurationDisplayName("Pair Buddy")
        .description("Your countdown, Daily Spark, or distance at a glance.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}
`;

const PAIR_WIDGETS_BUNDLE_SWIFT = `import SwiftUI
import WidgetKit

@main
struct PairWidgetsBundle: WidgetBundle {
    var body: some Widget {
        PairBuddyWidget()
    }
}
`;

const EXTENSION_INFO_PLIST = `<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
\t<key>CFBundleDevelopmentRegion</key>
\t<string>$(DEVELOPMENT_LANGUAGE)</string>
\t<key>CFBundleDisplayName</key>
\t<string>Pair Widgets</string>
\t<key>CFBundleExecutable</key>
\t<string>$(EXECUTABLE_NAME)</string>
\t<key>CFBundleIdentifier</key>
\t<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
\t<key>CFBundleInfoDictionaryVersion</key>
\t<string>6.0</string>
\t<key>CFBundleName</key>
\t<string>$(PRODUCT_NAME)</string>
\t<key>CFBundlePackageType</key>
\t<string>$(PRODUCT_BUNDLE_PACKAGE_TYPE)</string>
\t<key>CFBundleShortVersionString</key>
\t<string>1.0</string>
\t<key>CFBundleVersion</key>
\t<string>1</string>
\t<key>NSExtension</key>
\t<dict>
\t\t<key>NSExtensionPointIdentifier</key>
\t\t<string>com.apple.widgetkit-extension</string>
\t</dict>
</dict>
</plist>
`;

function extensionEntitlements() {
  return `<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
\t<key>${ENTITLEMENTS_KEY}</key>
\t<array>
\t\t<string>${APP_GROUP}</string>
\t</array>
</dict>
</plist>
`;
}

const DATA_MODULE_H = `#import <React/RCTBridgeModule.h>

@interface PairWidgetDataModule : NSObject <RCTBridgeModule>
@end
`;

const DATA_MODULE_M = `#import "PairWidgetDataModule.h"

#if __has_include(<WidgetKit/WidgetKit.h>)
#import <WidgetKit/WidgetKit.h>
#endif
#import <React/RCTLog.h>

static NSString *const kPairWidgetAppGroup = @"${APP_GROUP}";
static NSString *const kPairWidgetPayloadKey = @"${PAYLOAD_KEY}";

/**
 * Legacy NativeModule bridge (parity with the Android PairWidgetModule).
 * JS calls setWidgetData(json); the payload lands in the shared App Group
 * container and WidgetCenter reloads the timelines immediately.
 */
@implementation PairWidgetDataModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setWidgetData:(NSString *)json)
{
  @try {
    NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:kPairWidgetAppGroup];
    if (shared != nil) {
      [shared setObject:(json ?: @"") forKey:kPairWidgetPayloadKey];
      [shared synchronize];
    } else {
      RCTLogWarn(@"[PairWidgetDataModule] App Group container unavailable; "
                 @"add ${APP_GROUP} to the App Groups capability.");
    }
#if __has_include(<WidgetKit/WidgetKit.h>)
    if (@available(iOS 14.0, *)) {
      [WidgetCenter.sharedCenter reloadAllTimelines];
    }
#endif
  } @catch (NSException *exception) {
    // Widget writes are best-effort; never fail the JS call.
    RCTLogWarn(@"[PairWidgetDataModule] setWidgetData failed: %@", exception.reason);
  }
}

@end
`;

// ---------------------------------------------------------------------------
// Small helpers
// ---------------------------------------------------------------------------

function stripQuotes(value) {
  return typeof value === 'string' ? value.replace(/^"(.*)"$/, '$1') : value;
}

/** { value, comment } or a bare value -> the raw value. */
function refValue(ref) {
  return ref && typeof ref === 'object' && 'value' in ref ? ref.value : ref;
}

function findXcodeProjectName(iosRoot) {
  const entries = fs
    .readdirSync(iosRoot)
    .filter((e) => e.endsWith('.xcodeproj'))
    .sort();
  if (!entries.length) {
    throw new Error(
      '[withPairWidgetsIOS] No .xcodeproj found under ios/. Run `npx expo prebuild` first.'
    );
  }
  return entries[0].slice(0, -'.xcodeproj'.length);
}

function findTargetByName(project, name) {
  const section = project.hash.project.objects['PBXNativeTarget'] || {};
  for (const uuid of Object.keys(section)) {
    if (uuid.endsWith('_comment')) continue;
    const target = section[uuid];
    if (target && stripQuotes(target.name) === name) return { uuid, target };
  }
  return null;
}

function hasFileWithBasename(project, basename) {
  const section = project.pbxFileReferenceSection() || {};
  for (const uuid of Object.keys(section)) {
    if (uuid.endsWith('_comment')) continue;
    const ref = section[uuid];
    if (ref && stripQuotes(ref.path) === basename) return true;
  }
  return false;
}

/** Find a PBXGroup by name, or create it under the main group. */
function ensureGroup(project, name, groupPath) {
  const groups = project.hash.project.objects['PBXGroup'];
  for (const uuid of Object.keys(groups)) {
    if (uuid.endsWith('_comment')) continue;
    const group = groups[uuid];
    if (group && stripQuotes(group.name) === name) return uuid;
  }
  const uuid = project.generateUuid();
  groups[uuid] = {
    isa: 'PBXGroup',
    children: [],
    name: `"${name}"`,
    path: `"${groupPath}"`,
    sourceTree: '"<group>"',
  };
  groups[`${uuid}_comment`] = name;
  const firstProject = project.getFirstProject();
  const mainGroupUuid = refValue(firstProject.firstProject.mainGroup);
  groups[mainGroupUuid].children.push({ value: uuid, comment: name });
  return uuid;
}

/**
 * Add a file reference inside `groupUuid` (path relative to the group) and,
 * when `phase` is given, a build file in that build phase.
 */
function addFileToGroupAndPhase(project, groupUuid, basename, fileType, phase) {
  if (hasFileWithBasename(project, basename)) return;
  const fileRef = project.generateUuid();
  const buildFile = project.generateUuid();
  const fileRefs = project.pbxFileReferenceSection();
  const buildFiles = project.pbxBuildFileSection();
  if (!fileRefs || !buildFiles) {
    throw new Error(
      '[withPairWidgetsIOS] project.pbxproj is missing the file reference sections. ' +
        'Open the project in Xcode once, then re-run prebuild.'
    );
  }
  fileRefs[fileRef] = {
    isa: 'PBXFileReference',
    lastKnownFileType: `"${fileType}"`,
    name: `"${basename}"`,
    path: `"${basename}"`,
    sourceTree: '"<group>"',
  };
  fileRefs[`${fileRef}_comment`] = basename;
  buildFiles[buildFile] = {
    isa: 'PBXBuildFile',
    fileRef,
    fileRef_comment: basename,
  };
  buildFiles[`${buildFile}_comment`] = `${basename} in Sources`;
  project.hash.project.objects['PBXGroup'][groupUuid].children.push({
    value: fileRef,
    comment: basename,
  });
  if (phase) {
    phase.files.push({ value: buildFile, comment: `${basename} in Sources` });
  }
}

/** Read the main target's iOS deployment target so the extension matches it. */
function readMainDeploymentTarget(project) {
  try {
    const mainTarget = project.getFirstTarget();
    const listUuid = refValue(mainTarget.firstTarget.buildConfigurationList);
    const list = project.pbxXCConfigurationList()[listUuid];
    const firstRef = list.buildConfigurations[0];
    const config = project.pbxXCBuildConfigurationSection()[refValue(firstRef)];
    return config.buildSettings.IPHONEOS_DEPLOYMENT_TARGET || null;
  } catch {
    return null;
  }
}

function applyExtensionBuildSettings(project, targetUuid) {
  const deploymentTarget = readMainDeploymentTarget(project) || '"15.1"';
  const configs = project.pbxXCBuildConfigurationSection();
  for (const key of Object.keys(configs)) {
    if (key.endsWith('_comment')) continue;
    const settings = configs[key].buildSettings;
    if (!settings) continue;
    if (stripQuotes(settings.PRODUCT_BUNDLE_IDENTIFIER) === EXTENSION_BUNDLE_ID) {
      settings.SWIFT_VERSION = '"5.0"';
      settings.IPHONEOS_DEPLOYMENT_TARGET = deploymentTarget;
      settings.TARGETED_DEVICE_FAMILY = '"1,2"';
      settings.CODE_SIGN_ENTITLEMENTS = `"${EXTENSION_NAME}/${EXTENSION_NAME}.entitlements"`;
      settings.GENERATE_INFOPLIST_FILE = 'NO';
    }
  }
}

/** Merge the App Group into an existing entitlements plist (never clobber). */
function mergeAppGroupIntoEntitlements(absPath) {
  const content = fs.readFileSync(absPath, 'utf8');
  if (content.includes(APP_GROUP)) return;
  let plist;
  try {
    plist = require('@expo/plist');
  } catch {
    throw new Error(
      `[withPairWidgetsIOS] ${absPath} exists but lacks the App Group. ` +
        `Add "${APP_GROUP}" to ${ENTITLEMENTS_KEY} manually in Xcode.`
    );
  }
  const data = plist.parse(content);
  const current = Array.isArray(data[ENTITLEMENTS_KEY]) ? data[ENTITLEMENTS_KEY] : [];
  if (!current.includes(APP_GROUP)) current.push(APP_GROUP);
  data[ENTITLEMENTS_KEY] = current;
  fs.writeFileSync(absPath, plist.build(data));
}

// ---------------------------------------------------------------------------
// Config mods
// ---------------------------------------------------------------------------

/** Write the extension + bridge sources into the prebuild ios project. */
function withWidgetSources(config) {
  return withDangerousMod(config, [
    'ios',
    async (modConfig) => {
      const iosRoot = modConfig.modRequest.platformProjectRoot;
      const projectName = findXcodeProjectName(iosRoot);
      const files = {
        [`${EXTENSION_NAME}/PairWidgets.swift`]: PAIR_WIDGETS_SWIFT,
        [`${EXTENSION_NAME}/PairWidgetsBundle.swift`]: PAIR_WIDGETS_BUNDLE_SWIFT,
        [`${EXTENSION_NAME}/${EXTENSION_NAME}-Info.plist`]: EXTENSION_INFO_PLIST,
        [`${EXTENSION_NAME}/${EXTENSION_NAME}.entitlements`]: extensionEntitlements(),
        [`${projectName}/PairWidgetDataModule.h`]: DATA_MODULE_H,
        [`${projectName}/PairWidgetDataModule.m`]: DATA_MODULE_M,
      };
      for (const [rel, content] of Object.entries(files)) {
        const abs = path.join(iosRoot, rel);
        fs.mkdirSync(path.dirname(abs), { recursive: true });
        fs.writeFileSync(abs, content);
      }
      return modConfig;
    },
  ]);
}

/** Register the extension target, its sources, and the main-app wiring. */
function withWidgetTarget(config) {
  return withXcodeProject(config, (modConfig) => {
    const project = modConfig.modResults;
    const iosRoot =
      modConfig.modRequest.platformProjectRoot ||
      path.join(modConfig.modRequest.projectRoot, 'ios');
    const projectName = findXcodeProjectName(iosRoot);

    // Sections addTarget and the file helpers assume.
    const objects = project.hash.project.objects;
    for (const section of [
      'PBXTargetDependency',
      'PBXContainerItemProxy',
      'PBXFileReference',
      'PBXBuildFile',
    ]) {
      if (!objects[section]) objects[section] = {};
    }

    // Idempotent: a previous prebuild already registered the target.
    if (findTargetByName(project, EXTENSION_NAME)) return modConfig;

    // 1. Extension target (addTarget also embeds the .appex in the main app
    //    via an "Embed App Extensions" Copy Files phase).
    const target = project.addTarget(
      EXTENSION_NAME,
      'app_extension',
      EXTENSION_NAME,
      EXTENSION_BUNDLE_ID
    );
    const targetUuid = target.uuid;

    // 2. Sources phase + a real group + both Swift files.
    const sources = project.addBuildPhase([], 'PBXSourcesBuildPhase', 'Sources', targetUuid);
    const groupUuid = ensureGroup(project, EXTENSION_NAME, EXTENSION_NAME);
    for (const file of ['PairWidgets.swift', 'PairWidgetsBundle.swift']) {
      addFileToGroupAndPhase(project, groupUuid, file, 'sourcecode.swift', sources.buildPhase);
    }

    // 3. Extension build settings.
    applyExtensionBuildSettings(project, targetUuid);

    // 4. Main app target: compile the data module, add the App Group entitlement.
    const mainTarget = project.getFirstTarget();
    const mainUuid = mainTarget.uuid;
    const mainSources = project.pbxSourcesBuildPhaseObj(mainUuid);
    if (!mainSources) {
      throw new Error(
        '[withPairWidgetsIOS] The main app target has no Sources build phase. ' +
          'Open the project in Xcode once, then re-run prebuild.'
      );
    }
    const appGroupUuid = ensureGroup(project, projectName, projectName);
    addFileToGroupAndPhase(
      project,
      appGroupUuid,
      'PairWidgetDataModule.m',
      'sourcecode.c.objc',
      mainSources
    );
    addFileToGroupAndPhase(project, appGroupUuid, 'PairWidgetDataModule.h', 'sourcecode.c.h', null);

    const configListUuid = refValue(mainTarget.firstTarget.buildConfigurationList);
    const configList = project.pbxXCConfigurationList()[configListUuid];
    const entitlementsRel = `${projectName}/${projectName}.entitlements`;
    for (const ref of configList.buildConfigurations) {
      const buildConfig = project.pbxXCBuildConfigurationSection()[refValue(ref)];
      const settings = buildConfig.buildSettings;
      if (!settings.CODE_SIGN_ENTITLEMENTS) {
        settings.CODE_SIGN_ENTITLEMENTS = `"${entitlementsRel}"`;
      } else {
        mergeAppGroupIntoEntitlements(
          path.join(iosRoot, stripQuotes(settings.CODE_SIGN_ENTITLEMENTS))
        );
      }
    }
    const entitlementsAbs = path.join(iosRoot, entitlementsRel);
    if (!fs.existsSync(entitlementsAbs)) {
      fs.writeFileSync(entitlementsAbs, extensionEntitlements());
    }

    return modConfig;
  });
}

function withPairWidgetsIOS(config) {
  config = withWidgetSources(config);
  config = withWidgetTarget(config);
  return config;
}

module.exports = withPairWidgetsIOS;
