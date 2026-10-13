.class public final Lcom/fourplex/lovio/DrawingWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "DrawingWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawingWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawingWidget.kt\ncom/fourplex/lovio/DrawingWidget\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n13493#2,2:54\n1#3:56\n*S KotlinDebug\n*F\n+ 1 DrawingWidget.kt\ncom/fourplex/lovio/DrawingWidget\n*L\n17#1:54,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/fourplex/lovio/DrawingWidget;",
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

    .line 10
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private final updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 5

    .line 27
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fourplex/lovio/R$layout;->widget_drawing:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 30
    sget v1, Lcom/fourplex/lovio/R$id;->widget_drawing_placeholder_text:I

    .line 31
    sget-object v2, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->WaitingForDrawing:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v2, p1, v3}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 34
    sget-object v1, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {v1, p1}, Lcom/fourplex/lovio/WidgetState;->getDrawingFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 38
    sget v4, Lcom/fourplex/lovio/R$id;->widget_image:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 39
    sget v1, Lcom/fourplex/lovio/R$id;->widget_image:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 40
    sget v1, Lcom/fourplex/lovio/R$id;->widget_placeholder:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 42
    :cond_1
    sget v1, Lcom/fourplex/lovio/R$id;->widget_image:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 43
    sget v1, Lcom/fourplex/lovio/R$id;->widget_placeholder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 46
    :goto_1
    sget-object v1, Lcom/fourplex/lovio/WidgetIntents;->INSTANCE:Lcom/fourplex/lovio/WidgetIntents;

    const-string v2, "/drawing"

    invoke-virtual {v1, p1, v2, p3}, Lcom/fourplex/lovio/WidgetIntents;->createDeepLinkPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 47
    sget v1, Lcom/fourplex/lovio/R$id;->widget_image:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 48
    sget v1, Lcom/fourplex/lovio/R$id;->widget_placeholder:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 50
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

    .line 54
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    .line 18
    invoke-direct {p0, p1, p2, v2}, Lcom/fourplex/lovio/DrawingWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
