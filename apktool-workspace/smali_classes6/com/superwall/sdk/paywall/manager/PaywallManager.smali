.class public final Lcom/superwall/sdk/paywall/manager/PaywallManager;
.super Ljava/lang/Object;
.source "PaywallManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0013\u001a\u00020\u000fH\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018J\u0006\u0010\u0019\u001a\u00020\u0015J<\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0086@\u00a2\u0006\u0002\u0010$J\r\u0010%\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008&R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\t8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "",
        "factory",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;",
        "paywallRequestManager",
        "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V",
        "currentView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "getCurrentView",
        "()Lcom/superwall/sdk/paywall/view/PaywallView;",
        "setCurrentView",
        "(Lcom/superwall/sdk/paywall/view/PaywallView;)V",
        "_cache",
        "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
        "cache",
        "getCache",
        "()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;",
        "createCache",
        "removePaywallView",
        "",
        "identifier",
        "",
        "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;",
        "resetCache",
        "getPaywallView",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "request",
        "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
        "isForPresentation",
        "",
        "isPreloading",
        "delegate",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
        "(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZZLcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resetPaywallRequestCache",
        "resetPaywallRequestCache$superwall_release",
        "Factory",
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
.field private _cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

.field private currentView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field private final factory:Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

.field private final paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallRequestManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->factory:Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    return-void
.end method

.method public static final synthetic access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFactory$p(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->factory:Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    return-object p0
.end method

.method private final createCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->factory:Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;->makeCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->_cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    return-object v0
.end method

.method private final getCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->_cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->createCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->_cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->_cache:Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getCurrentView()Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getActivePaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    return-object v0
.end method

.method public final getPaywallView(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZZLcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "ZZ",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move/from16 v0, p3

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;

    iget v3, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;

    invoke-direct {v2, p0, v1}, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 62
    iget v4, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->Z$1:Z

    iget-boolean v0, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->Z$0:Z

    iget-object v4, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iget-object v6, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v7, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, p1

    move v10, v0

    move-object v8, v6

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    .line 69
    iput-object p0, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$0:Ljava/lang/Object;

    iput-object p1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p4

    iput-object v4, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$2:Ljava/lang/Object;

    iput-boolean p2, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->Z$0:Z

    iput-boolean v0, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->Z$1:Z

    iput v6, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->label:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, p0

    move-object v8, p1

    move v10, p2

    move v11, v0

    goto :goto_1

    .line 62
    :goto_2
    check-cast v1, Lcom/superwall/sdk/misc/Either;

    .line 70
    new-instance v6, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$2;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;ZZLkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    iput-object p1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$0:Ljava/lang/Object;

    iput-object p1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$1:Ljava/lang/Object;

    iput-object p1, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/superwall/sdk/paywall/manager/PaywallManager$getPaywallView$1;->label:I

    invoke-static {v1, v6, v2}, Lcom/superwall/sdk/misc/EitherKt;->mapAsync(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_5

    :goto_3
    return-object v3

    :cond_5
    return-object p1
.end method

.method public final removePaywallView(Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCache()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->removePaywallView(Ljava/lang/String;)V

    return-void
.end method

.method public final resetCache()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->factory:Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;

    invoke-interface {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;->mainScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final resetPaywallRequestCache$superwall_release()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->resetCache$superwall_release()V

    return-void
.end method

.method public final setCurrentView(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager;->currentView:Lcom/superwall/sdk/paywall/view/PaywallView;

    return-void
.end method
