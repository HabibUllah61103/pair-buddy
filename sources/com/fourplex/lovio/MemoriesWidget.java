package com.fourplex.lovio;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.RemoteViews;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MemoriesWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002¨\u0006\u0012"}, d2 = {"Lcom/fourplex/lovio/MemoriesWidget;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "onUpdate", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetIds", "", "updateAppWidget", "appWidgetId", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MemoriesWidget extends AppWidgetProvider {
    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String action = intent.getAction();
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode != 358010981) {
                if (iHashCode == 1619576947 && action.equals("android.appwidget.action.APPWIDGET_UPDATE")) {
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
                    int[] intArrayExtra = intent.getIntArrayExtra("appWidgetIds");
                    if (intArrayExtra == null) {
                        intArrayExtra = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) MemoriesWidget.class));
                    }
                    if (!intent.getBooleanExtra(WidgetSupportKt.EXTRA_REFRESH_ONLY, false)) {
                        WidgetState.INSTANCE.rotateMemoryIndexIfNeeded(context);
                    }
                    Intrinsics.checkNotNull(appWidgetManager);
                    Intrinsics.checkNotNull(intArrayExtra);
                    onUpdate(context, appWidgetManager, intArrayExtra);
                    return;
                }
            } else if (action.equals(WidgetSupportKt.ACTION_NEXT_MEMORY)) {
                WidgetState.INSTANCE.advanceMemoryIndex(context);
                WidgetUpdateDispatcher.INSTANCE.refreshMemoryWidgets(context);
                return;
            }
        }
        super.onReceive(context, intent);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0051  */
    private final void updateAppWidget(Context context, AppWidgetManager appWidgetManager, int appWidgetId) {
        Bitmap bitmapDecodeFile;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_memories);
        int memoriesCount = WidgetState.INSTANCE.getMemoriesCount(context);
        int currentMemoryIndex = WidgetState.INSTANCE.getCurrentMemoryIndex(context);
        remoteViews.setTextViewText(R.id.widget_memories_empty_text, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.NoMemories));
        if (memoriesCount > 0) {
            File memoryFile = WidgetState.INSTANCE.getMemoryFile(context, currentMemoryIndex);
            if (memoryFile.exists() && (bitmapDecodeFile = BitmapFactory.decodeFile(memoryFile.getAbsolutePath())) != null) {
                remoteViews.setImageViewBitmap(R.id.widget_memory_image, bitmapDecodeFile);
                remoteViews.setViewVisibility(R.id.widget_memory_image, 0);
                remoteViews.setViewVisibility(R.id.widget_empty_state, 8);
            } else {
                remoteViews.setViewVisibility(R.id.widget_memory_image, 8);
                remoteViews.setViewVisibility(R.id.widget_empty_state, 0);
            }
        } else {
            remoteViews.setViewVisibility(R.id.widget_memory_image, 8);
            remoteViews.setViewVisibility(R.id.widget_empty_state, 0);
        }
        Intent intent = new Intent(context, (Class<?>) MemoriesWidget.class);
        intent.setAction(WidgetSupportKt.ACTION_NEXT_MEMORY);
        remoteViews.setOnClickPendingIntent(R.id.widget_root, PendingIntent.getBroadcast(context, appWidgetId, intent, 201326592));
        appWidgetManager.updateAppWidget(appWidgetId, remoteViews);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appWidgetManager, "appWidgetManager");
        Intrinsics.checkNotNullParameter(appWidgetIds, "appWidgetIds");
        for (int i : appWidgetIds) {
            updateAppWidget(context, appWidgetManager, i);
        }
    }
}
