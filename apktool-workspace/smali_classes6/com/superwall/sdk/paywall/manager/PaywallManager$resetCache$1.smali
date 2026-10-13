.class final Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/manager/PaywallManager;->resetCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallManager.kt\ncom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n774#2:112\n865#2,2:113\n1863#2,2:115\n*S KotlinDebug\n*F\n+ 1 PaywallManager.kt\ncom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1\n*L\n56#1:112\n56#1:113,2\n57#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.paywall.manager.PaywallManager$resetCache$1"
    f = "PaywallManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;-><init>(Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 52
    iget v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getActivePaywallVcKey()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->getAllPaywallViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 56
    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getCacheKey$superwall_release()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 112
    check-cast v1, Ljava/lang/Iterable;

    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 57
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->destroyWebview$superwall_release()V

    goto :goto_1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/superwall/sdk/paywall/manager/PaywallManager$resetCache$1;->this$0:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->access$getCache(Lcom/superwall/sdk/paywall/manager/PaywallManager;)Lcom/superwall/sdk/paywall/manager/PaywallViewCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/manager/PaywallViewCache;->removeAll()V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
