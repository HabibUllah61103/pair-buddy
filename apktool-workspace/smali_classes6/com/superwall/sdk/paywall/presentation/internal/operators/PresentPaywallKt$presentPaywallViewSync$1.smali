.class final Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PresentPaywall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt;->presentPaywallViewSync(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallViewSync$1"
    f = "PresentPaywall.kt"
    i = {}
    l = {
        0x71
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $debugInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onStateChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field final synthetic $presenter:Landroid/app/Activity;

.field final synthetic $request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

.field final synthetic $this_presentPaywallViewSync:Lcom/superwall/sdk/Superwall;

.field final synthetic $unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$this_presentPaywallViewSync:Lcom/superwall/sdk/Superwall;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$presenter:Landroid/app/Activity;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$debugInfo:Ljava/util/Map;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$onStateChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$this_presentPaywallViewSync:Lcom/superwall/sdk/Superwall;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$presenter:Landroid/app/Activity;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$debugInfo:Ljava/util/Map;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$onStateChanged:Lkotlin/jvm/functions/Function1;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 106
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->label:I

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

    const/4 p1, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-static {v1, v1, v3, p1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v10

    .line 108
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$this_presentPaywallViewSync:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$onStateChanged:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v10, v1, v3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1$1;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 113
    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$this_presentPaywallViewSync:Lcom/superwall/sdk/Superwall;

    .line 114
    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 115
    iget-object v6, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$presenter:Landroid/app/Activity;

    .line 116
    iget-object v7, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    .line 117
    iget-object v8, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$debugInfo:Ljava/util/Map;

    .line 118
    iget-object v9, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    .line 119
    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    .line 113
    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallViewSync$1;->label:I

    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt;->presentPaywallView(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 121
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
