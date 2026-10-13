.class public final Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;
.super Ljava/lang/Object;
.source "InternalPresentation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a(\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0080@\u00a2\u0006\u0002\u0010\n\u001a:\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013H\u0080@\u00a2\u0006\u0002\u0010\u0014\u001a>\u0010\u0015\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013H\u0080@\u00a2\u0006\u0002\u0010\u0016*\u0016\u0010\u0000\"\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "PaywallStatePublisher",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "internallyPresent",
        "",
        "Lcom/superwall/sdk/Superwall;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "publisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dismiss",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "result",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "closeReason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "completion",
        "Lkotlin/Function0;",
        "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dismissAfterPaymentSheet",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final dismiss(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 62
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$dismiss$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$dismiss$2;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic dismiss$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 60
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 57
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;->dismiss(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final dismissAfterPaymentSheet(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
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

    .line 71
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$dismissAfterPaymentSheet$2;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$dismissAfterPaymentSheet$2;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic dismissAfterPaymentSheet$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 69
    sget-object p3, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;

    check-cast p3, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;->dismissAfterPaymentSheet(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final internallyPresent(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;

    iget v3, v2, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v2

    iget-object v1, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 23
    iget v3, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    const/4 v11, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v11, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object p0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/Superwall;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_6

    :cond_3
    iget-object p0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p1, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/superwall/sdk/Superwall;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, p0

    :goto_1
    move-object v8, p1

    goto :goto_3

    :cond_4
    iget-object p0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p1, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/superwall/sdk/Superwall;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    move-object p0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v3

    goto/16 :goto_4

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    :try_start_3
    iput-object p0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    iput-object p2, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$2:Ljava/lang/Object;

    iput v6, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    invoke-static {p1, p2, v10}, Lcom/superwall/sdk/paywall/presentation/internal/operators/CheckNoPaywallAlreadyPresentedKt;->checkNoPaywallAlreadyPresented(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, p2

    .line 31
    :goto_2
    iput-object p0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    iput-object v0, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$2:Ljava/lang/Object;

    iput v5, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    invoke-static {p0, p1, v0, v10}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->getPaywallComponents(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v1, v2, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, p0

    move-object v9, v0

    move-object v0, v1

    goto :goto_1

    :goto_3
    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;

    .line 34
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getPresenter()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 38
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->prepareToDisplay()V

    .line 47
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getRulesOutcome()Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getUnsavedOccurrence()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object v6

    .line 48
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;->getDebugInfo()Ljava/util/Map;

    move-result-object v7

    .line 44
    iput-object v3, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    iput-object v8, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    iput-object v12, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$2:Ljava/lang/Object;

    iput v4, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt;->presentPaywallView(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_9

    goto :goto_5

    .line 35
    :cond_8
    const-string p0, "Presenter must not be null"

    .line 34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v3

    move-object p1, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 53
    :goto_4
    iput-object v12, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$0:Ljava/lang/Object;

    iput-object v12, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$1:Ljava/lang/Object;

    iput-object v12, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->L$2:Ljava/lang/Object;

    iput v11, v10, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt$internallyPresent$1;->label:I

    invoke-static {p0, p1, v0, v10}, Lcom/superwall/sdk/paywall/presentation/internal/operators/LogErrorsKt;->logErrors(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_9

    :goto_5
    return-object v2

    .line 55
    :cond_9
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
