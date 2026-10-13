.class final Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$build$3$1"
    f = "PaywallBuilder.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $res:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$res:Ljava/lang/Object;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$onError:Lkotlin/jvm/functions/Function1;

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

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$res:Ljava/lang/Object;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$onError:Lkotlin/jvm/functions/Function1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;-><init>(Ljava/lang/Object;Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 110
    iget v0, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$res:Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 113
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getActivity$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->setEncapsulatingActivity(Ljava/lang/ref/WeakReference;)V

    .line 114
    invoke-static {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getShimmmerView$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/superwall/sdk/paywall/view/ShimmerView;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getActivity$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Lcom/superwall/sdk/paywall/view/ShimmerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    .line 115
    :cond_0
    invoke-static {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getPurchaseLoadingView$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v5, Lcom/superwall/sdk/paywall/view/LoadingView;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getActivity$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/superwall/sdk/paywall/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v5

    check-cast v4, Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;

    .line 116
    :cond_1
    invoke-virtual {v2, v3, v4}, Lcom/superwall/sdk/paywall/view/PaywallView;->setupWith(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;)V

    .line 117
    invoke-virtual {v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->setupShimmer$superwall_release(Lcom/superwall/sdk/paywall/view/PaywallShimmerView;)V

    .line 118
    invoke-virtual {v2, v4}, Lcom/superwall/sdk/paywall/view/PaywallView;->setupLoading$superwall_release(Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;)V

    .line 119
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->beforeViewCreated()V

    .line 120
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;->$onError:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 122
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
