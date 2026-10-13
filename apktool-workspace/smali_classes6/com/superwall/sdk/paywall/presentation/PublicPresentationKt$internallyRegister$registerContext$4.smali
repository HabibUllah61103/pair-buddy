.class final Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PublicPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "publisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;"
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
    c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$internallyRegister$registerContext$4"
    f = "PublicPresentation.kt"
    i = {}
    l = {
        0x145
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_internallyRegister:Lcom/superwall/sdk/Superwall;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->$this_internallyRegister:Lcom/superwall/sdk/Superwall;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->$this_internallyRegister:Lcom/superwall/sdk/Superwall;

    invoke-direct {v0, v1, p3}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    check-cast p2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->invoke(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 325
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->label:I

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

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->$this_internallyRegister:Lcom/superwall/sdk/Superwall;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;->label:I

    invoke-static {v3, p1, v1, v4}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;->internallyPresent(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
