.class public final Lcom/fourplex/lovio/WidgetUpdateDispatcher;
.super Ljava/lang/Object;
.source "WidgetSupport.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWidgetSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WidgetSupport.kt\ncom/fourplex/lovio/WidgetUpdateDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,502:1\n1869#2,2:503\n1374#2:505\n1460#2,5:506\n1869#2,2:511\n1869#2,2:513\n*S KotlinDebug\n*F\n+ 1 WidgetSupport.kt\ncom/fourplex/lovio/WidgetUpdateDispatcher\n*L\n442#1:503,2\n446#1:505\n446#1:506,5\n448#1:511,2\n452#1:513,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ&\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ(\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\u0014\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u0011H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/fourplex/lovio/WidgetUpdateDispatcher;",
        "",
        "<init>",
        "()V",
        "memoryWidgetClasses",
        "",
        "Ljava/lang/Class;",
        "Landroid/appwidget/AppWidgetProvider;",
        "allWidgetClasses",
        "reloadAllWidgets",
        "",
        "context",
        "Landroid/content/Context;",
        "refreshOnly",
        "",
        "reloadKinds",
        "kinds",
        "",
        "refreshMemoryWidgets",
        "sendAppWidgetUpdate",
        "receiverClass",
        "classesForKind",
        "kind",
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


# static fields
.field public static final INSTANCE:Lcom/fourplex/lovio/WidgetUpdateDispatcher;

.field private static final allWidgetClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/appwidget/AppWidgetProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final memoryWidgetClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/appwidget/AppWidgetProvider;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/fourplex/lovio/WidgetUpdateDispatcher;

    invoke-direct {v0}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;-><init>()V

    sput-object v0, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->INSTANCE:Lcom/fourplex/lovio/WidgetUpdateDispatcher;

    const/4 v0, 0x2

    .line 425
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/fourplex/lovio/MemoriesWidget;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 426
    const-class v2, Lcom/fourplex/lovio/CombinedWidget;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 424
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->memoryWidgetClasses:Ljava/util/List;

    const/16 v1, 0x9

    .line 430
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/fourplex/lovio/DrawingWidget;

    aput-object v2, v1, v3

    .line 431
    const-class v2, Lcom/fourplex/lovio/MemoriesWidget;

    aput-object v2, v1, v4

    .line 432
    const-class v2, Lcom/fourplex/lovio/CombinedWidget;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    .line 433
    const-class v2, Lcom/fourplex/lovio/DaysTogetherCoralWidget;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    .line 434
    const-class v2, Lcom/fourplex/lovio/DaysTogetherBlueWidget;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    .line 435
    const-class v2, Lcom/fourplex/lovio/DaysTogetherWhiteWidget;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    .line 436
    const-class v2, Lcom/fourplex/lovio/DaysTogetherLockSmallWidget;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    .line 437
    const-class v2, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    .line 438
    const-class v2, Lcom/fourplex/lovio/DistanceWidgetMedium;

    aput-object v2, v1, v0

    .line 429
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->allWidgetClasses:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final classesForKind(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/appwidget/AppWidgetProvider;",
            ">;>;"
        }
    .end annotation

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "DaysTogetherLockSmallWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 484
    :cond_0
    const-class p1, Lcom/fourplex/lovio/DaysTogetherLockSmallWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_1
    const-string v0, "AnniversaryWidgetWhite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "AnniversaryWidgetCoral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "DaysTogetherBlueWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "DrawingWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 478
    :cond_1
    const-class p1, Lcom/fourplex/lovio/DrawingWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_5
    const-string v0, "DaysTogetherWhiteWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 483
    :cond_2
    const-class p1, Lcom/fourplex/lovio/DaysTogetherWhiteWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_6
    const-string v0, "DaysTogetherCoralWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 481
    :cond_3
    const-class p1, Lcom/fourplex/lovio/DaysTogetherCoralWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_7
    const-string v0, "CombinedWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 480
    :cond_4
    const-class p1, Lcom/fourplex/lovio/CombinedWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_8
    const-string v0, "AnniversaryWidgetBlue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 482
    :cond_5
    const-class p1, Lcom/fourplex/lovio/DaysTogetherBlueWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_9
    const-string v0, "AnniversaryWidgetLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    .line 488
    new-array p1, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/fourplex/lovio/DaysTogetherLockSmallWidget;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 489
    const-class v1, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;

    aput-object v1, p1, v0

    .line 487
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_a
    const-string v0, "MemoriesWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 479
    :cond_7
    const-class p1, Lcom/fourplex/lovio/MemoriesWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_b
    const-string v0, "DistanceWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :sswitch_c
    const-string v0, "DaysTogetherCountdownWidget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 485
    :cond_8
    const-class p1, Lcom/fourplex/lovio/DaysTogetherCountdownWidget;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 477
    :sswitch_d
    const-string v0, "DistanceWidgetMedium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 486
    :cond_9
    const-class p1, Lcom/fourplex/lovio/DistanceWidgetMedium;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 491
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bea2072 -> :sswitch_d
        -0x5fae343c -> :sswitch_c
        -0x5658ed47 -> :sswitch_b
        -0x2e565f5d -> :sswitch_a
        -0x16aead95 -> :sswitch_9
        -0xe105bb2 -> :sswitch_8
        -0xa3b5a37 -> :sswitch_7
        0xc448944 -> :sswitch_6
        0xd23373c -> :sswitch_5
        0x16959be2 -> :sswitch_4
        0x1eea79ef -> :sswitch_3
        0x4c144ebd -> :sswitch_2
        0x4d2ad6b5 -> :sswitch_1
        0x559f9bef -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic reloadAllWidgets$default(Lcom/fourplex/lovio/WidgetUpdateDispatcher;Landroid/content/Context;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 441
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->reloadAllWidgets(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic reloadKinds$default(Lcom/fourplex/lovio/WidgetUpdateDispatcher;Landroid/content/Context;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 445
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->reloadKinds(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic sendAppWidgetUpdate$default(Lcom/fourplex/lovio/WidgetUpdateDispatcher;Landroid/content/Context;Ljava/lang/Class;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 455
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->sendAppWidgetUpdate(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public final refreshMemoryWidgets(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->memoryWidgetClasses:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 513
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 452
    sget-object v2, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->INSTANCE:Lcom/fourplex/lovio/WidgetUpdateDispatcher;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->sendAppWidgetUpdate(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reloadAllWidgets(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->allWidgetClasses:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 503
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 442
    sget-object v2, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->INSTANCE:Lcom/fourplex/lovio/WidgetUpdateDispatcher;

    invoke-virtual {v2, p1, v1, p2}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->sendAppWidgetUpdate(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reloadKinds(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kinds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    check-cast p2, Ljava/lang/Iterable;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 506
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 507
    check-cast v1, Ljava/lang/String;

    .line 446
    invoke-direct {p0, v1}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->classesForKind(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 507
    check-cast v1, Ljava/lang/Iterable;

    .line 508
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 510
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 505
    check-cast v0, Ljava/lang/Iterable;

    .line 447
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 511
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 448
    sget-object v1, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->INSTANCE:Lcom/fourplex/lovio/WidgetUpdateDispatcher;

    invoke-virtual {v1, p1, v0, p3}, Lcom/fourplex/lovio/WidgetUpdateDispatcher;->sendAppWidgetUpdate(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final sendAppWidgetUpdate(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/appwidget/AppWidgetProvider;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 461
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 464
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    .line 468
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    const-string p2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string p2, "appWidgetIds"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 471
    const-string p2, "refresh_only"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 473
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
