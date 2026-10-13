.class public final Lcom/superwall/sdk/storage/EventsQueue;
.super Landroid/content/BroadcastReceiver;
.source "EventsQueue.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u001d\u001a\u00020\u001eH\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010 \u001a\u00020\u001eH\u0002J\u0016\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020$J\u0010\u0010%\u001a\u00020&2\u0006\u0010#\u001a\u00020$H\u0002J\u0018\u0010\'\u001a\u00020\u001e2\u0008\u0008\u0002\u0010(\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010)J\u001c\u0010*\u001a\u00020\u001e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006-"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/EventsQueue;",
        "Landroid/content/BroadcastReceiver;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Landroid/content/Context;",
        "network",
        "Lcom/superwall/sdk/network/Network;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "mainScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "configManager",
        "Lcom/superwall/sdk/config/ConfigManager;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/MainScope;Lcom/superwall/sdk/config/ConfigManager;)V",
        "maxEventCount",
        "",
        "elements",
        "",
        "Lcom/superwall/sdk/models/events/EventData;",
        "timer",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "setupTimer",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addObserver",
        "enqueue",
        "data",
        "event",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "externalDataCollectionAllowed",
        "",
        "flushInternal",
        "depth",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onReceive",
        "intent",
        "Landroid/content/Intent;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final configManager:Lcom/superwall/sdk/config/ConfigManager;

.field private final context:Landroid/content/Context;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/events/EventData;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private job:Lkotlinx/coroutines/Job;

.field private final mainScope:Lcom/superwall/sdk/misc/MainScope;

.field private final maxEventCount:I

.field private final network:Lcom/superwall/sdk/network/Network;

.field private final timer:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/MainScope;Lcom/superwall/sdk/config/ConfigManager;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/superwall/sdk/storage/EventsQueue;->network:Lcom/superwall/sdk/network/Network;

    .line 25
    iput-object p3, p0, Lcom/superwall/sdk/storage/EventsQueue;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 26
    iput-object p4, p0, Lcom/superwall/sdk/storage/EventsQueue;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    .line 27
    iput-object p5, p0, Lcom/superwall/sdk/storage/EventsQueue;->configManager:Lcom/superwall/sdk/config/ConfigManager;

    const/16 p1, 0x32

    .line 30
    iput p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->maxEventCount:I

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->elements:Ljava/util/List;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 32
    invoke-static {p2, p2, p3, p1, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->timer:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p5, 0x2

    invoke-static {p1, p2, p3, p5, p3}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    iput-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 37
    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/storage/EventsQueue$1;

    invoke-direct {p1, p0, p3}, Lcom/superwall/sdk/storage/EventsQueue$1;-><init>(Lcom/superwall/sdk/storage/EventsQueue;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$addObserver(Lcom/superwall/sdk/storage/EventsQueue;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/superwall/sdk/storage/EventsQueue;->addObserver()V

    return-void
.end method

.method public static final synthetic access$getElements$p(Lcom/superwall/sdk/storage/EventsQueue;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/storage/EventsQueue;->elements:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getIoScope$p(Lcom/superwall/sdk/storage/EventsQueue;)Lcom/superwall/sdk/misc/IOScope;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/storage/EventsQueue;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    return-object p0
.end method

.method public static final synthetic access$getMaxEventCount$p(Lcom/superwall/sdk/storage/EventsQueue;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/superwall/sdk/storage/EventsQueue;->maxEventCount:I

    return p0
.end method

.method public static final synthetic access$getNetwork$p(Lcom/superwall/sdk/storage/EventsQueue;)Lcom/superwall/sdk/network/Network;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/storage/EventsQueue;->network:Lcom/superwall/sdk/network/Network;

    return-object p0
.end method

.method public static final synthetic access$getTimer$p(Lcom/superwall/sdk/storage/EventsQueue;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/storage/EventsQueue;->timer:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$setupTimer(Lcom/superwall/sdk/storage/EventsQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/superwall/sdk/storage/EventsQueue;->setupTimer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addObserver()V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/superwall/sdk/storage/EventsQueue;->context:Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final externalDataCollectionAllowed(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)Z
    .locals 2

    .line 78
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isExternalDataCollectionEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$TriggerFire;

    if-nez v0, :cond_2

    .line 83
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    if-nez v0, :cond_2

    .line 84
    instance-of p1, p1, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic flushInternal$default(Lcom/superwall/sdk/storage/EventsQueue;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/16 p1, 0xa

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/EventsQueue;->flushInternal(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final setupTimer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;

    iget v1, v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;-><init>(Lcom/superwall/sdk/storage/EventsQueue;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v2, v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->configManager:Lcom/superwall/sdk/config/ConfigManager;

    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getNetworkEnvironment()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    instance-of p1, p1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x14

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x1

    .line 47
    :goto_2
    iget-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$2;

    invoke-direct {p1, v4, v5, p0, v2}, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$2;-><init>(JLcom/superwall/sdk/storage/EventsQueue;Lkotlin/coroutines/Continuation;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->job:Lkotlinx/coroutines/Job;

    .line 53
    iget-object p1, p0, Lcom/superwall/sdk/storage/EventsQueue;->timer:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v2, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$3;

    invoke-direct {v2, p0}, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$3;-><init>(Lcom/superwall/sdk/storage/EventsQueue;)V

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iput v3, v0, Lcom/superwall/sdk/storage/EventsQueue$setupTimer$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final enqueue(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)V
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p2}, Lcom/superwall/sdk/storage/EventsQueue;->externalDataCollectionAllowed(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/storage/EventsQueue$enqueue$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/superwall/sdk/storage/EventsQueue$enqueue$1;-><init>(Lcom/superwall/sdk/storage/EventsQueue;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final flushInternal(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/superwall/sdk/storage/EventsQueue$flushInternal$2;-><init>(Lcom/superwall/sdk/storage/EventsQueue;ILkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 109
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/storage/EventsQueue;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7ed8ea7f

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 119
    iget-object p2, p0, Lcom/superwall/sdk/storage/EventsQueue;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/superwall/sdk/storage/EventsQueue$onReceive$1;

    invoke-direct {p2, p0, p1}, Lcom/superwall/sdk/storage/EventsQueue$onReceive$1;-><init>(Lcom/superwall/sdk/storage/EventsQueue;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_1
    return-void
.end method
