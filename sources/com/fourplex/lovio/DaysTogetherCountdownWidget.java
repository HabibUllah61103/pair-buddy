package com.fourplex.lovio;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DaysTogetherWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J(\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002¨\u0006\u0016"}, d2 = {"Lcom/fourplex/lovio/DaysTogetherCountdownWidget;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "onUpdate", "", "context", "Landroid/content/Context;", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetIds", "", "updateAppWidget", "appWidgetId", "", "setCountdownSegmentVisibility", "views", "Landroid/widget/RemoteViews;", "clockViewId", "staticViewId", "showLiveCountdown", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DaysTogetherCountdownWidget extends AppWidgetProvider {
    private final void updateAppWidget(Context context, AppWidgetManager appWidgetManager, int appWidgetId) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_days_together_countdown);
        RelationshipWidgetData relationshipWidgetDataLoadRelationshipWidgetData = WidgetDataParser.INSTANCE.loadRelationshipWidgetData(context);
        boolean hasAnniversaryDate = relationshipWidgetDataLoadRelationshipWidgetData.getHasAnniversaryDate();
        remoteViews.setTextViewText(R.id.widget_countdown_days_value, String.valueOf(relationshipWidgetDataLoadRelationshipWidgetData.getDaysTogether()));
        remoteViews.setTextViewText(R.id.widget_countdown_title, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.TogetherFor));
        int i = R.id.widget_countdown_days_label;
        String upperCase = WidgetLocalization.INSTANCE.text(context, WidgetStringKey.Days).toUpperCase(WidgetLocalization.INSTANCE.locale(context));
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        remoteViews.setTextViewText(i, upperCase);
        remoteViews.setTextViewText(R.id.widget_countdown_hours_label, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.HoursShort));
        remoteViews.setTextViewText(R.id.widget_countdown_minutes_label, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.MinutesShort));
        remoteViews.setTextViewText(R.id.widget_countdown_seconds_label, WidgetLocalization.INSTANCE.text(context, WidgetStringKey.SecondsShort));
        setCountdownSegmentVisibility(remoteViews, R.id.widget_countdown_hours_clock, R.id.widget_countdown_hours_static, hasAnniversaryDate);
        setCountdownSegmentVisibility(remoteViews, R.id.widget_countdown_minutes_clock, R.id.widget_countdown_minutes_static, hasAnniversaryDate);
        setCountdownSegmentVisibility(remoteViews, R.id.widget_countdown_seconds_clock, R.id.widget_countdown_seconds_static, hasAnniversaryDate);
        appWidgetManager.updateAppWidget(appWidgetId, remoteViews);
    }

    private final void setCountdownSegmentVisibility(RemoteViews views, int clockViewId, int staticViewId, boolean showLiveCountdown) {
        views.setViewVisibility(clockViewId, showLiveCountdown ? 0 : 8);
        views.setViewVisibility(staticViewId, showLiveCountdown ? 8 : 0);
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
