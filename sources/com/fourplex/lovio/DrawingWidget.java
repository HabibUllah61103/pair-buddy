package com.fourplex.lovio;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.RemoteViews;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DrawingWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u000f"}, d2 = {"Lcom/fourplex/lovio/DrawingWidget;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "onUpdate", "", "context", "Landroid/content/Context;", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetIds", "", "updateAppWidget", "appWidgetId", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DrawingWidget extends AppWidgetProvider {
    private final void updateAppWidget(Context context, AppWidgetManager appWidgetManager, int appWidgetId) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_drawing);
        remoteViews.setTextViewText(R.id.widget_drawing_placeholder_text, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.WaitingForDrawing));
        File drawingFile = WidgetState.INSTANCE.getDrawingFile(context);
        Bitmap bitmapDecodeFile = drawingFile != null ? BitmapFactory.decodeFile(drawingFile.getAbsolutePath()) : null;
        if (bitmapDecodeFile != null) {
            remoteViews.setImageViewBitmap(R.id.widget_image, bitmapDecodeFile);
            remoteViews.setViewVisibility(R.id.widget_image, 0);
            remoteViews.setViewVisibility(R.id.widget_placeholder, 8);
        } else {
            remoteViews.setViewVisibility(R.id.widget_image, 8);
            remoteViews.setViewVisibility(R.id.widget_placeholder, 0);
        }
        PendingIntent pendingIntentCreateDeepLinkPendingIntent = WidgetIntents.INSTANCE.createDeepLinkPendingIntent(context, "/drawing", appWidgetId);
        remoteViews.setOnClickPendingIntent(R.id.widget_image, pendingIntentCreateDeepLinkPendingIntent);
        remoteViews.setOnClickPendingIntent(R.id.widget_placeholder, pendingIntentCreateDeepLinkPendingIntent);
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
