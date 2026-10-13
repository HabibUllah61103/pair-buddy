.class public abstract Lcom/fourplex/lovio/BaseDaysTogetherWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "DaysTogetherWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDaysTogetherWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DaysTogetherWidget.kt\ncom/fourplex/lovio/BaseDaysTogetherWidget\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,156:1\n13493#2,2:157\n*S KotlinDebug\n*F\n+ 1 DaysTogetherWidget.kt\ncom/fourplex/lovio/BaseDaysTogetherWidget\n*L\n18#1:157,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/fourplex/lovio/BaseDaysTogetherWidget;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "theme",
        "Lcom/fourplex/lovio/DaysTogetherTheme;",
        "getTheme",
        "()Lcom/fourplex/lovio/DaysTogetherTheme;",
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

    .line 9
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private final updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 4

    .line 28
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fourplex/lovio/R$layout;->widget_days_together:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    sget-object v1, Lcom/fourplex/lovio/WidgetDataParser;->INSTANCE:Lcom/fourplex/lovio/WidgetDataParser;

    invoke-virtual {v1, p1}, Lcom/fourplex/lovio/WidgetDataParser;->loadRelationshipWidgetData(Landroid/content/Context;)Lcom/fourplex/lovio/RelationshipWidgetData;

    move-result-object v1

    .line 31
    sget v2, Lcom/fourplex/lovio/R$id;->widget_heart_icon:I

    invoke-virtual {p0}, Lcom/fourplex/lovio/BaseDaysTogetherWidget;->getTheme()Lcom/fourplex/lovio/DaysTogetherTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fourplex/lovio/DaysTogetherTheme;->getHeartResId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 32
    sget v2, Lcom/fourplex/lovio/R$id;->widget_days_count:I

    invoke-virtual {v1}, Lcom/fourplex/lovio/RelationshipWidgetData;->getDaysTogether()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 34
    sget v1, Lcom/fourplex/lovio/R$id;->widget_days_label:I

    .line 35
    sget-object v2, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DaysTogether:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v2, p1, v3}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 37
    sget p1, Lcom/fourplex/lovio/R$id;->widget_days_count:I

    invoke-virtual {p0}, Lcom/fourplex/lovio/BaseDaysTogetherWidget;->getTheme()Lcom/fourplex/lovio/DaysTogetherTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fourplex/lovio/DaysTogetherTheme;->getCountColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 38
    sget p1, Lcom/fourplex/lovio/R$id;->widget_days_label:I

    invoke-virtual {p0}, Lcom/fourplex/lovio/BaseDaysTogetherWidget;->getTheme()Lcom/fourplex/lovio/DaysTogetherTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fourplex/lovio/DaysTogetherTheme;->getLabelColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 40
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method protected abstract getTheme()Lcom/fourplex/lovio/DaysTogetherTheme;
.end method

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

    .line 19
    invoke-direct {p0, p1, p2, v2}, Lcom/fourplex/lovio/BaseDaysTogetherWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
