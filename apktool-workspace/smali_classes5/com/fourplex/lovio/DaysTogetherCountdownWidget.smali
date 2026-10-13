.class public final Lcom/fourplex/lovio/DaysTogetherCountdownWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "DaysTogetherWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDaysTogetherWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DaysTogetherWidget.kt\ncom/fourplex/lovio/DaysTogetherCountdownWidget\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,156:1\n13493#2,2:157\n*S KotlinDebug\n*F\n+ 1 DaysTogetherWidget.kt\ncom/fourplex/lovio/DaysTogetherCountdownWidget\n*L\n103#1:157,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J(\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/fourplex/lovio/DaysTogetherCountdownWidget;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "onUpdate",
        "",
        "context",
        "Landroid/content/Context;",
        "appWidgetManager",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetIds",
        "",
        "updateAppWidget",
        "appWidgetId",
        "",
        "setCountdownSegmentVisibility",
        "views",
        "Landroid/widget/RemoteViews;",
        "clockViewId",
        "staticViewId",
        "showLiveCountdown",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private final setCountdownSegmentVisibility(Landroid/widget/RemoteViews;IIZ)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 151
    :goto_0
    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p4, :cond_1

    move v0, v1

    .line 152
    :cond_1
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private final updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 5

    .line 113
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fourplex/lovio/R$layout;->widget_days_together_countdown:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 114
    sget-object v1, Lcom/fourplex/lovio/WidgetDataParser;->INSTANCE:Lcom/fourplex/lovio/WidgetDataParser;

    invoke-virtual {v1, p1}, Lcom/fourplex/lovio/WidgetDataParser;->loadRelationshipWidgetData(Landroid/content/Context;)Lcom/fourplex/lovio/RelationshipWidgetData;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/fourplex/lovio/RelationshipWidgetData;->getHasAnniversaryDate()Z

    move-result v2

    .line 117
    sget v3, Lcom/fourplex/lovio/R$id;->widget_countdown_days_value:I

    invoke-virtual {v1}, Lcom/fourplex/lovio/RelationshipWidgetData;->getDaysTogether()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_title:I

    .line 120
    sget-object v3, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->TogetherFor:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v3, p1, v4}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_days_label:I

    .line 124
    sget-object v3, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v3, p1, v4}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    invoke-virtual {v4, p1}, Lcom/fourplex/lovio/WidgetLocalization;->locale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toUpperCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_hours_label:I

    .line 128
    sget-object v3, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->HoursShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v3, p1, v4}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 126
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_minutes_label:I

    .line 132
    sget-object v3, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->MinutesShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v3, p1, v4}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 135
    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_seconds_label:I

    .line 136
    sget-object v3, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->SecondsShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v3, p1, v4}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    sget p1, Lcom/fourplex/lovio/R$id;->widget_countdown_hours_clock:I

    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_hours_static:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;->setCountdownSegmentVisibility(Landroid/widget/RemoteViews;IIZ)V

    .line 139
    sget p1, Lcom/fourplex/lovio/R$id;->widget_countdown_minutes_clock:I

    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_minutes_static:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;->setCountdownSegmentVisibility(Landroid/widget/RemoteViews;IIZ)V

    .line 140
    sget p1, Lcom/fourplex/lovio/R$id;->widget_countdown_seconds_clock:I

    sget v1, Lcom/fourplex/lovio/R$id;->widget_countdown_seconds_static:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;->setCountdownSegmentVisibility(Landroid/widget/RemoteViews;IIZ)V

    .line 142
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    .line 104
    invoke-direct {p0, p1, p2, v2}, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
