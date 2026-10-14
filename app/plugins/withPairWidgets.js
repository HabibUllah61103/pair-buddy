/**
 * withPairWidgets — Expo config plugin for Pair Buddy's Android home-screen widget.
 *
 * The app is managed workflow (no android/ directory in the repo). At prebuild
 * time this plugin materializes the widget's native sources:
 *
 *   android/app/src/main/java/com/pairbuddy/app/widgets/
 *     PairWidgetProvider.kt   AppWidgetProvider (RemoteViews, 3 size layouts,
 *                             tap deep-links, periodic-refresh scheduling)
 *     PairWidgetModule.kt     legacy NativeModule bridge: JS -> SharedPreferences
 *     PairWidgetPackage.kt    ReactPackage registering the module
 *     PairWidgetRefreshWorker.kt  WorkManager worker: re-render every ~30 min,
 *                             recomputing countdown days locally
 *     PairWidgetScheduler.kt  idempotent WorkManager scheduling helper
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
  withAppBuildGradle,
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

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.RemoteViews
import com.pairbuddy.app.R
import org.json.JSONObject

/**
 * Pair Buddy home-screen widget. Pure RemoteViews: no WebView, no Compose.
 *
 * All content is pre-rendered by the JS bridge (src/lib/widgets.ts) into
 * SharedPreferences as a small JSON payload { type, title, line1, line2 };
 * this provider only binds those strings into the size-appropriate layout.
 *
 * Tapping the widget deep-links into the app (pairbuddy://), landing on the
 * screen behind the widget's type: countdown -> date plans, spark -> the
 * Spark tab, distance -> the Distance tab.
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

    override fun onEnabled(context: Context) {
        // First widget instance placed: start the periodic refresh worker.
        // (Also scheduled from setWidgetData; the KEEP policy keeps it singular.)
        PairWidgetScheduler.schedule(context)
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
        views.setOnClickPendingIntent(R.id.widget_root, tapIntent(context, appWidgetId, payload))
        try {
            manager.updateAppWidget(appWidgetId, views)
        } catch (_: Exception) {
            // A failing widget must never crash the host process.
        }
    }

    /**
     * Tap target for the whole widget. Deep-links to the screen behind the
     * widget type; falls back to the app root for unknown payloads.
     * FLAG_IMMUTABLE is required on Android 12+.
     */
    private fun tapIntent(context: Context, appWidgetId: Int, payload: JSONObject): PendingIntent {
        val deepLink = when (payload.optString("type")) {
            "countdown" -> "pairbuddy://date-plans"
            "spark" -> "pairbuddy://(tabs)/spark"
            "distance" -> "pairbuddy://(tabs)/distance"
            else -> "pairbuddy://"
        }
        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(deepLink)).apply {
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }
        return PendingIntent.getActivity(
            context,
            appWidgetId,
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
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
            // Keep the periodic worker scheduled (idempotent: KEEP policy).
            PairWidgetScheduler.schedule(reactApplicationContext)
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

const WORKER_KT = `package ${WIDGET_PACKAGE}

import android.content.Context
import androidx.work.Worker
import androidx.work.WorkerParameters
import org.json.JSONObject
import kotlin.math.roundToInt

/**
 * Periodic widget refresh, roughly every 30 minutes (see PairWidgetScheduler).
 *
 * Re-reads the last payload from SharedPreferences and re-renders every
 * widget instance, so the widget stays alive even when the system batches the
 * AppWidgetProvider's own update ticks. For countdown widgets it also
 * recomputes the days-left locally from the payload's targetDate using the
 * same noon-based rounding as the JS bridge (app/src/lib/widgets.ts), so the
 * countdown rolls over at midnight without opening the app.
 *
 * Spark and distance payloads need network data to rebuild, so they are
 * re-rendered as-is; fresh values arrive when the app runs refreshWidgets().
 */
class PairWidgetRefreshWorker(appContext: Context, params: WorkerParameters) :
    Worker(appContext, params) {

    override fun doWork(): Result {
        return try {
            val prefs = applicationContext.getSharedPreferences(
                PairWidgetModule.PREFS_NAME, Context.MODE_PRIVATE
            )
            val raw = prefs.getString(PairWidgetModule.KEY_DATA, null)
            if (!raw.isNullOrBlank()) {
                val refreshed = refreshCountdown(JSONObject(raw))
                prefs.edit()
                    .putString(PairWidgetModule.KEY_DATA, refreshed.toString())
                    .apply()
            }
            PairWidgetProvider.requestUpdate(applicationContext)
            Result.success()
        } catch (_: Exception) {
            Result.retry()
        }
    }

    private fun refreshCountdown(payload: JSONObject): JSONObject {
        if (payload.optString("type") != "countdown") return payload
        val target = payload.optString("targetDate").takeIf { it.isNotBlank() }
            ?: return payload
        val days = daysUntil(target)
        // Mirrors the JS label: "Today!" / "1 day to go" / "N days to go".
        val label = if (days <= 0) "Today!" else "$days day\${if (days == 1) "" else "s"} to go"
        payload.put("line1", label)
        return payload
    }

    /**
     * Days from today to an ISO date (yyyy-MM-dd), comparing at local noon.
     * Mirrors daysUntil() in app/src/lib/widgets.ts.
     */
    private fun daysUntil(isoDate: String): Int {
        return try {
            val parser = java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.US)
            val target = parser.parse(isoDate) ?: return 0
            fun noon(millis: Long): Long {
                val cal = java.util.Calendar.getInstance()
                cal.timeInMillis = millis
                cal.set(java.util.Calendar.HOUR_OF_DAY, 12)
                cal.set(java.util.Calendar.MINUTE, 0)
                cal.set(java.util.Calendar.SECOND, 0)
                cal.set(java.util.Calendar.MILLISECOND, 0)
                return cal.timeInMillis
            }
            val now = java.util.Calendar.getInstance().timeInMillis
            ((noon(target.time) - noon(now)) / 86400000.0).roundToInt()
        } catch (_: Exception) {
            0
        }
    }
}
`;

const SCHEDULER_KT = `package ${WIDGET_PACKAGE}

import android.content.Context
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import java.util.concurrent.TimeUnit

/**
 * Schedules the widget's periodic refresh worker. Idempotent: the unique work
 * name combined with ExistingPeriodicWorkPolicy.KEEP means repeated calls
 * never enqueue a duplicate worker.
 */
object PairWidgetScheduler {
    private const val UNIQUE_WORK_NAME = "pair_buddy_widget_refresh"

    fun schedule(context: Context) {
        try {
            val request = PeriodicWorkRequestBuilder<PairWidgetRefreshWorker>(
                30, TimeUnit.MINUTES
            ).build()
            WorkManager.getInstance(context.applicationContext)
                .enqueueUniquePeriodicWork(
                    UNIQUE_WORK_NAME,
                    ExistingPeriodicWorkPolicy.KEEP,
                    request
                )
        } catch (_: Exception) {
            // Background scheduling is best-effort. The widget still renders
            // on data pushes, taps, resizes, and the provider's own ticks.
        }
    }
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
    android:id="@+id/widget_root"
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
    [`${WIDGET_SRC_DIR}/PairWidgetRefreshWorker.kt`]: WORKER_KT,
    [`${WIDGET_SRC_DIR}/PairWidgetScheduler.kt`]: SCHEDULER_KT,
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
      const anchorRe =
        /\/\/ Packages that cannot be autolinked yet can be added manually here(, for example:)?/;
      if (anchorRe.test(next)) {
        next = next.replace(
          anchorRe,
          (m) => `${m}\n      packages.add(new PairWidgetPackage());`
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
      // The stock comment may end with ", for example:"; swallow it so no
      // dangling text remains after the inserted statement.
      const anchorRe =
        /\/\/ Packages that cannot be autolinked yet can be added manually here(, for example:)?/;
      if (anchorRe.test(next)) {
        next = next.replace(
          anchorRe,
          (m) => `${m}\n          packages.add(PairWidgetPackage())`
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

/** Add the WorkManager dependency to app/build.gradle (idempotent). */
function withWorkManagerDep(config) {
  return withAppBuildGradle(config, (modConfig) => {
    let contents = modConfig.modResults.contents;
    if (contents.includes('androidx.work:work-runtime')) return modConfig; // idempotent
    const dep = '    implementation("androidx.work:work-runtime-ktx:2.9.0")';
    if (!contents.includes('dependencies {')) {
      throw new Error(
        '[withPairWidgets] Could not find the dependencies block in app/build.gradle. ' +
          'Add it manually: implementation("androidx.work:work-runtime-ktx:2.9.0").'
      );
    }
    contents = contents.replace('dependencies {', `dependencies {\n${dep}`);
    modConfig.modResults.contents = contents;
    return modConfig;
  });
}

function withPairWidgets(config) {
  config = withWidgetSources(config);
  config = withWidgetReceiver(config);
  config = withWidgetPackage(config);
  config = withWorkManagerDep(config);
  return config;
}

module.exports = withPairWidgets;
