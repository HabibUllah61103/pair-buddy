.class final Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallViewDelegateAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;->onFinished(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter$onFinished$2"
    f = "PaywallViewDelegateAdapter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywall:Lcom/superwall/sdk/paywall/view/PaywallView;

.field final synthetic $result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

.field final synthetic $shouldDismiss:Z

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->this$0:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$paywall:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iput-boolean p4, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$shouldDismiss:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->this$0:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$paywall:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-boolean v4, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$shouldDismiss:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 21
    iget v0, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->this$0:Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;->getKotlinDelegate()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$paywall:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$result:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter$onFinished$2;->$shouldDismiss:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;->onFinished(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
