.class public final Lcom/fourplex/lovio/CombinedWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "CombinedWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCombinedWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CombinedWidget.kt\ncom/fourplex/lovio/CombinedWidget\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,264:1\n13493#2,2:265\n*S KotlinDebug\n*F\n+ 1 CombinedWidget.kt\ncom/fourplex/lovio/CombinedWidget\n*L\n53#1:265,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/fourplex/lovio/CombinedWidget;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "onUpdate",
        "appWidgetManager",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetIds",
        "",
        "updateAppWidget",
        "appWidgetId",
        "",
        "loadBitmap",
        "Landroid/graphics/Bitmap;",
        "file",
        "Ljava/io/File;",
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

    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private final loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private final updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 7

    .line 63
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fourplex/lovio/R$layout;->widget_combined:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 64
    sget-object v1, Lcom/fourplex/lovio/WidgetDataParser;->INSTANCE:Lcom/fourplex/lovio/WidgetDataParser;

    invoke-virtual {v1, p1}, Lcom/fourplex/lovio/WidgetDataParser;->loadRelationshipWidgetData(Landroid/content/Context;)Lcom/fourplex/lovio/RelationshipWidgetData;

    move-result-object v1

    .line 67
    sget v2, Lcom/fourplex/lovio/R$id;->widget_combined_days:I

    .line 68
    invoke-virtual {v1}, Lcom/fourplex/lovio/RelationshipWidgetData;->getDaysTogether()I

    move-result v1

    sget-object v3, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v3, p1, v4}, Lcom/fourplex/lovio/WidgetLocalization;->lowercased(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    sget v1, Lcom/fourplex/lovio/R$id;->widget_combined_together:I

    .line 72
    sget-object v2, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Together:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-virtual {v2, p1, v3}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    sget v1, Lcom/fourplex/lovio/R$id;->widget_combined_avatars:I

    .line 77
    new-instance v2, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;

    invoke-direct {v2, p1}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "avatar_user.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/fourplex/lovio/CombinedWidget;->loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "avatar_partner.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/fourplex/lovio/CombinedWidget;->loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    invoke-virtual {v2, v3, v4}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 83
    sget-object v1, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {v1, p1}, Lcom/fourplex/lovio/WidgetState;->getMemoriesCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    .line 85
    sget-object v1, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    sget-object v2, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {v2, p1}, Lcom/fourplex/lovio/WidgetState;->getCurrentMemoryIndex(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/fourplex/lovio/WidgetState;->getMemoryFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    sget v2, Lcom/fourplex/lovio/R$id;->widget_combined_memory:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 89
    :cond_0
    sget v1, Lcom/fourplex/lovio/R$id;->widget_combined_memory:I

    sget v2, Lcom/fourplex/lovio/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 91
    :cond_1
    sget v1, Lcom/fourplex/lovio/R$id;->widget_combined_memory:I

    sget v2, Lcom/fourplex/lovio/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 94
    :cond_2
    sget v1, Lcom/fourplex/lovio/R$id;->widget_combined_memory:I

    sget v2, Lcom/fourplex/lovio/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 97
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fourplex/lovio/CombinedWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v2, "com.fourplex.lovio.ACTION_NEXT_MEMORY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    .line 100
    invoke-static {p1, p3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 106
    sget v1, Lcom/fourplex/lovio/R$id;->widget_combined_memory:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1556d065

    if-eq v1, v2, :cond_4

    const v2, 0x6088c873

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 34
    const-string v1, "appWidgetIds"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    if-nez v1, :cond_2

    .line 35
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/fourplex/lovio/CombinedWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 37
    :cond_2
    const-string v2, "refresh_only"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    .line 38
    sget-object p2, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {p2, p1}, Lcom/fourplex/lovio/WidgetState;->rotateMemoryIndexIfNeeded(Landroid/content/Context;)Z

    .line 41
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/fourplex/lovio/CombinedWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void

    .line 26
    :cond_4
    const-string v1, "com.fourplex.lovio.ACTION_NEXT_MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 28
    :cond_5
    sget-object p2, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {p2, p1}, Lcom/fourplex/lovio/WidgetState;->advanceMemoryIndex(Landroid/content/Context;)Z

    .line 29
    sget-object p2, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->INSTANCE:Lcom/fourplex/lovio/WidgetUpdateDispatcher;

    invoke-virtual {p2, p1}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->refreshMemoryWidgets(Landroid/content/Context;)V

    return-void

    .line 44
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    .line 54
    invoke-direct {p0, p1, p2, v2}, Lcom/fourplex/lovio/CombinedWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
