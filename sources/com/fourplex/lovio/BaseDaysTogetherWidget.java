package com.fourplex.lovio;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DaysTogetherWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u0012\u0010\u0004\u001a\u00020\u0005X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/fourplex/lovio/BaseDaysTogetherWidget;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "theme", "Lcom/fourplex/lovio/DaysTogetherTheme;", "getTheme", "()Lcom/fourplex/lovio/DaysTogetherTheme;", "onUpdate", "", "context", "Landroid/content/Context;", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetIds", "", "updateAppWidget", "appWidgetId", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseDaysTogetherWidget extends AppWidgetProvider {
    protected abstract DaysTogetherTheme getTheme();

    private final void updateAppWidget(Context context, AppWidgetManager appWidgetManager, int appWidgetId) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_days_together);
        RelationshipWidgetData relationshipWidgetDataLoadRelationshipWidgetData = WidgetDataParser.INSTANCE.loadRelationshipWidgetData(context);
        remoteViews.setImageViewResource(R.id.widget_heart_icon, getTheme().getHeartResId());
        remoteViews.setTextViewText(R.id.widget_days_count, String.valueOf(relationshipWidgetDataLoadRelationshipWidgetData.getDaysTogether()));
        remoteViews.setTextViewText(R.id.widget_days_label, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.DaysTogether));
        remoteViews.setTextColor(R.id.widget_days_count, getTheme().getCountColor());
        remoteViews.setTextColor(R.id.widget_days_label, getTheme().getLabelColor());
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
