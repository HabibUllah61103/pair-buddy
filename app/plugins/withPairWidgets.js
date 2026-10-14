/**
 * withPairWidgets — Expo config plugin for Pair Buddy's Android home-screen widget.
 *
 * The app is managed workflow (no android/ directory in the repo). At prebuild
 * time this plugin materializes the widget's native sources:
 *
 *   android/app/src/main/java/com/pairbuddy/app/widgets/
 *     PairWidgetProvider.kt   AppWidgetProvider (RemoteViews, 3 size layouts)
 *     PairWidgetModule.kt     legacy NativeModule bridge: JS -> SharedPreferences
 *     PairWidgetPackage.kt    ReactPackage registering the module
 *   android/app/src/main/res/
 *     xml/pair_widget_info.xml
 *     layout/widget_small.xml / widget_medium.xml / widget_large.xml
 *     drawable/widget_background.xml
 *     values/pair_widgets.xml
 *
 * plus the AndroidManifest receiver entry and the MainApplication package
 * registration. Run `npx expo prebuild` (or `npx expo run:android`) to apply.
 *
 * Clean-room implementation for Pair Buddy. No third-party widget code.
 */

const {
  withAndroidManifest,
  withDangerousMod,
  withMainApplication,
} = require('@expo/config-plugins');
const fs = require('fs');
const path = require('path');

const WIDGET_PACKAGE = 'com.pairbuddy.app.widgets';
const WIDGET_SRC_DIR = 'app/src/main/java/com/pairbuddy/app/widgets';

// ---------------------------------------------------------------------------
// Native sources (written verbatim by withDangerousMod)
// ---------------------------------------------------------------------------

const PROVIDER_KT = `package ${WIDGET_PACKAGE}

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.os.Bundle
import android.widget.RemoteViews
import com.pairbuddy.app.R
import org.json.JSONObject

/**
 * Pair Buddy home-screen widget. Pure RemoteViews: no WebView, no Compose.
 *
 * All content is pre-rendered by the JS bridge (src/lib/widgets.ts) into
 * SharedPreferences as a small JSON payload { title, line1, line2 }; this
 * provider only binds those strings into the size-appropriate layout.
 */
class PairWidgetProvider : AppWidgetProvider() {

    override fun onUpdate(
        context: Context,
        manager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        for (id in appWidgetIds) updateOne(context, manager, id)
    }

    override fun onAppWidgetOptionsChanged(
        context: Context,
        manager: AppWidgetManager,
        appWidgetId: Int,
        newOptions: Bundle
    ) {
        updateOne(context, manager, appWidgetId)
    }

    private fun updateOne(context: Context, manager: AppWidgetManager, appWidgetId: Int) {
        val options = manager.getAppWidgetOptions(appWidgetId)
        val minWidth = options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, 0)
        val layout = when {
            minWidth >= 250 -> R.layout.widget_large
            minWidth >= 150 -> R.layout.widget_medium
            else -> R.layout.widget_small
        }
        val views = RemoteViews(context.packageName, layout)
        val payload = readPayload(context)
        // Every layout declares all three ids (small hides line2), so binding
        // never touches a missing view.
        views.setTextViewText(R.id.widget_title, payload.optString("title", "Pair Buddy"))
        views.setTextViewText(R.id.widget_line1, payload.optString("line1", ""))
        views.setTextViewText(R.id.widget_line2, payload.optString("line2", ""))
        try {
            manager.updateAppWidget(appWidgetId, views)
        } catch (_: Exception) {
            // A failing widget must never crash the host process.
        }
    }

    private fun readPayload(context: Context): JSONObject {
        return try {
            val prefs = context.getSharedPreferences(
                PairWidgetModule.PREFS_NAME, Context.MODE_PRIVATE
            )
            val raw = prefs.getString(PairWidgetModule.KEY_DATA, null)
            if (raw.isNullOrBlank()) JSONObject() else JSONObject(raw)
        } catch (_: Exception) {
            JSONObject()
        }
    }

    companion object {
        /** Push the latest payload to every installed widget instance. */
        fun requestUpdate(context: Context) {
            try {
                val manager = AppWidgetManager.getInstance(context)
                val ids = manager.getAppWidgetIds(
                    ComponentName(context, PairWidgetProvider::class.java)
                )
                if (ids.isEmpty()) return
                val provider = PairWidgetProvider()
                for (id in ids) provider.updateOne(context, manager, id)
            } catch (_: Exception) {
            }
        }
    }
}
`;

const MODULE_KT = `package ${WIDGET_PACKAGE}

import android.content.Context
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod

/**
 * Legacy NativeModule bridge (simpler than a TurboModule spec for one method).
 * JS calls setWidgetData(json); the payload lands in SharedPreferences and all
 * installed widget instances re-render immediately.
 */
class PairWidgetModule(reactContext: ReactApplicationContext) :
    ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String = NAME

    @ReactMethod
    fun setWidgetData(json: String) {
        try {
            val prefs = reactApplicationContext.getSharedPreferences(
                PREFS_NAME, Context.MODE_PRIVATE
            )
            prefs.edit().putString(KEY_DATA, json).apply()
            PairWidgetProvider.requestUpdate(reactApplicationContext)
        } catch (_: Exception) {
            // Widget writes are best-effort; never fail the JS call.
        }
    }

    companion object {
        const val NAME = "PairWidgetModule"
        const val PREFS_NAME = "pair_buddy_widget"
        const val KEY_DATA = "widget_data_json"
    }
}
`;

const PACKAGE_KT = `package ${WIDGET_PACKAGE}

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ViewManager

class PairWidgetPackage : ReactPackage {
    override fun createNativeModules(
        reactContext: ReactApplicationContext
    ): List<NativeModule> = listOf(PairWidgetModule(reactContext))

    override fun createViewManagers(
        reactContext: ReactApplicationContext
    ): List<ViewManager<*, *>> = emptyList()
}
`;

const WIDGET_INFO_XML = `<?xml version="1.0" encoding="utf-8"?>
<appwidget-provider xmlns:android="http://schemas.android.com/apk/res/android"
    android:minWidth="110dp"
    android:minHeight="40dp"
    android:targetCellWidth="2"
    android:targetCellHeight="1"
    android:updatePeriodMillis="1800000"
    android:initialLayout="@layout/widget_small"
    android:description="@string/pair_widget_desc"
    android:resizeMode="horizontal|vertical"
    android:widgetCategory="home_screen" />
`;

const WIDGET_BACKGROUND_XML = `<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android"
    android:shape="rectangle">
    <solid android:color="#123B63" />
    <corners android:radius="16dp" />
</shape>
`;

const WIDGET_STRINGS_XML = `<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="pair_widget_desc">Pair Buddy: your countdown, daily spark, or distance at a glance.</string>
</resources>
`;

function layoutXml(size) {
  const titleSize = size === 'small' ? '11sp' : '12sp';
  const line1Size = size === 'small' ? '16sp' : size === 'medium' ? '18sp' : '22sp';
  const line2Visibility =
    size === 'small' ? '\n        android:visibility="gone"' : '';
  const padding = size === 'large' ? '16dp' : '12dp';
  return `<?xml version="1.0" encoding="utf-8"?>
<!-- Pair Buddy widget (${size}). All three ids exist in every size. -->
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center_vertical"
    android:padding="${padding}"
    android:background="@drawable/widget_background">

    <TextView
        android:id="@+id/widget_title"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:textColor="#14B8A6"
        android:textSize="${titleSize}"
        android:textStyle="bold"
        android:maxLines="1"
        android:ellipsize="end"
        android:text="Pair Buddy" />

    <TextView
        android:id="@+id/widget_line1"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:textColor="#FFFFFF"
        android:textSize="${line1Size}"
        android:textStyle="bold"
        android:maxLines="2"
        android:ellipsize="end"
        android:layout_marginTop="4dp" />

    <TextView
        android:id="@+id/widget_line2"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"${line2Visibility}
        android:textColor="#8AA0B8"
        android:textSize="13sp"
        android:maxLines="2"
        android:ellipsize="end"
        android:layout_marginTop="4dp" />

</LinearLayout>
`;
}

function widgetFiles() {
  return {
    [`${WIDGET_SRC_DIR}/PairWidgetProvider.kt`]: PROVIDER_KT,
    [`${WIDGET_SRC_DIR}/PairWidgetModule.kt`]: MODULE_KT,
    [`${WIDGET_SRC_DIR}/PairWidgetPackage.kt`]: PACKAGE_KT,
    'app/src/main/res/xml/pair_widget_info.xml': WIDGET_INFO_XML,
    'app/src/main/res/layout/widget_small.xml': layoutXml('small'),
    'app/src/main/res/layout/widget_medium.xml': layoutXml('medium'),
    'app/src/main/res/layout/widget_large.xml': layoutXml('large'),
    'app/src/main/res/drawable/widget_background.xml': WIDGET_BACKGROUND_XML,
    'app/src/main/res/values/pair_widgets.xml': WIDGET_STRINGS_XML,
  };
}

// ---------------------------------------------------------------------------
// Config mods
// ---------------------------------------------------------------------------

/** Write the widget's native sources into the prebuild android project. */
function withWidgetSources(config) {
  return withDangerousMod(config, [
    'android',
    async (modConfig) => {
      const root = modConfig.modRequest.platformProjectRoot;
      for (const [rel, content] of Object.entries(widgetFiles())) {
        const abs = path.join(root, rel);
        fs.mkdirSync(path.dirname(abs), { recursive: true });
        fs.writeFileSync(abs, content);
      }
      return modConfig;
    },
  ]);
}

/** Register the AppWidgetProvider receiver in AndroidManifest.xml. */
function withWidgetReceiver(config) {
  return withAndroidManifest(config, (modConfig) => {
    const app = modConfig.modResults.manifest.application[0];
    app.receiver = app.receiver || [];
    const name = '.widgets.PairWidgetProvider';
    const exists = app.receiver.some(
      (r) => r.$ && r.$['android:name'] === name
    );
    if (!exists) {
      app.receiver.push({
        $: {
          'android:name': name,
          'android:exported': 'false',
          'android:label': 'Pair Buddy',
        },
        'intent-filter': [
          {
            action: [
              { $: { 'android:name': 'android.appwidget.action.APPWIDGET_UPDATE' } },
            ],
          },
        ],
        'meta-data': [
          {
            $: {
              'android:name': 'android.appwidget.provider',
              'android:resource': '@xml/pair_widget_info',
            },
          },
        ],
      });
    }
    return modConfig;
  });
}

/** Register PairWidgetPackage in MainApplication (Kotlin or Java). */
function withWidgetPackage(config) {
  return withMainApplication(config, (modConfig) => {
    const { contents, language } = modConfig.modResults;
    const importLine = 'import com.pairbuddy.app.widgets.PairWidgetPackage';
    if (contents.includes('PairWidgetPackage()')) return modConfig; // idempotent

    let next = contents;
    if (language === 'java') {
      const javaImport = 'import com.pairbuddy.app.widgets.PairWidgetPackage;';
      if (!next.includes(javaImport)) {
        next = next.replace(
          /(import [^;]+;\n)(?!import)/,
          `$1${javaImport}\n`
        );
      }
      const anchor =
        '// Packages that cannot be autolinked yet can be added manually here';
      if (next.includes(anchor)) {
        next = next.replace(
          anchor,
          `${anchor}\n      packages.add(new PairWidgetPackage());`
        );
      } else if (next.includes('new PackageList(this).getPackages()')) {
        next = next.replace(
          'new PackageList(this).getPackages();',
          'new PackageList(this).getPackages();\n      packages.add(new PairWidgetPackage());'
        );
      } else {
        throw new Error(
          '[withPairWidgets] Could not find the package list in MainApplication.java. ' +
            'Register it manually: packages.add(new PairWidgetPackage()); inside getPackages().'
        );
      }
    } else {
      // Kotlin (Expo SDK 53 default)
      if (!next.includes(importLine)) {
        const lines = next.split('\n');
        let lastImport = -1;
        lines.forEach((line, i) => {
          if (/^import\s+/.test(line)) lastImport = i;
        });
        if (lastImport >= 0) lines.splice(lastImport + 1, 0, importLine);
        next = lines.join('\n');
      }
      const anchor =
        '// Packages that cannot be autolinked yet can be added manually here';
      if (next.includes(anchor)) {
        next = next.replace(
          anchor,
          `${anchor}\n          add(PairWidgetPackage())`
        );
      } else if (next.includes('PackageList(this).packages.apply {')) {
        next = next.replace(
          'PackageList(this).packages.apply {',
          'PackageList(this).packages.apply {\n          add(PairWidgetPackage())'
        );
      } else {
        throw new Error(
          '[withPairWidgets] Could not find the package list in MainApplication. ' +
            'Register PairWidgetPackage manually: add(PairWidgetPackage()) inside getPackages().'
        );
      }
    }
    modConfig.modResults.contents = next;
    return modConfig;
  });
}

function withPairWidgets(config) {
  config = withWidgetSources(config);
  config = withWidgetReceiver(config);
  config = withWidgetPackage(config);
  return config;
}

module.exports = withPairWidgets;
