.class final Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;->loadingStateDidChange$superwall_release()V
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
    c = "com.superwall.sdk.paywall.view.PaywallView$loadingStateDidChange$1"
    f = "PaywallView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

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

    new-instance p1, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 808
    iget v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 809
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getLoadingState()Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    move-result-object p1

    .line 810
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Unknown;

    if-nez v0, :cond_4

    .line 813
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$ManualLoading;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    instance-of v0, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingURL;

    if-eqz v0, :cond_1

    .line 819
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$showShimmerView(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    .line 820
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->showRefreshButtonAfterTimeout(Z)V

    goto :goto_1

    .line 823
    :cond_1
    instance-of p1, p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    if-eqz p1, :cond_2

    .line 824
    invoke-static {}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$getIoScope$cp()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 809
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 815
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadingStateDidChange$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$showLoadingView(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    .line 835
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 808
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
