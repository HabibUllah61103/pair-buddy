.class final Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PublicPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismissForNextPaywall(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5<",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
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
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "result",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "reason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "completion",
        "Lkotlin/Function0;"
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
    c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissForNextPaywall$2"
    f = "PublicPresentation.kt"
    i = {}
    l = {
        0x100
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;

    invoke-direct {v0, p5}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$3:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    check-cast p4, Lkotlin/jvm/functions/Function0;

    check-cast p5, Lkotlin/coroutines/Continuation;

    invoke-virtual/range {p0 .. p5}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->invoke(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 255
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 256
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;->label:I

    invoke-static {p1, v1, v3, v4, v5}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;->dismiss(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 257
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
