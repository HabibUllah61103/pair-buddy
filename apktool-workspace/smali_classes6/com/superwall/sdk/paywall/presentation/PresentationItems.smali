.class public final Lcom/superwall/sdk/paywall/presentation/PresentationItems;
.super Ljava/lang/Object;
.source "PresentationItems.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/PresentationItems;",
        "",
        "<init>",
        "()V",
        "queue",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "newValue",
        "Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;",
        "last",
        "getLast",
        "()Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;",
        "setLast",
        "(Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;)V",
        "_last",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "paywallInfo",
        "getPaywallInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "setPaywallInfo",
        "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V",
        "_paywallInfo",
        "reset",
        "",
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
.field private _last:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

.field private _paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field private final queue:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->queue:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 14
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$get_last$p(Lcom/superwall/sdk/paywall/presentation/PresentationItems;)Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->_last:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    return-object p0
.end method

.method public static final synthetic access$get_paywallInfo$p(Lcom/superwall/sdk/paywall/presentation/PresentationItems;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->_paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object p0
.end method

.method public static final synthetic access$set_last$p(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->_last:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    return-void
.end method

.method public static final synthetic access$set_paywallInfo$p(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->_paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-void
.end method


# virtual methods
.method public final getLast()Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->queue:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$1;-><init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    return-object v0
.end method

.method public final getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->queue:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$paywallInfo$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$paywallInfo$1;-><init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public final reset()V
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$reset$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$reset$1;-><init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setLast(Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;)V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;-><init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setPaywallInfo(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$paywallInfo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$paywallInfo$2;-><init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
