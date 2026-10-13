.class public final Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt;
.super Ljava/lang/Object;
.source "GetPaywallVC.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetPaywallVC.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetPaywallVC.kt\ncom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,115:1\n143#2,4:116\n*S KotlinDebug\n*F\n+ 1 GetPaywallVC.kt\ncom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt\n*L\n69#1:116,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u001aR\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00082\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0080@\u00a2\u0006\u0002\u0010\u0010\u001a:\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00082\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u0082@\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "getPaywallView",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "rulesOutcome",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "debugInfo",
        "",
        "",
        "",
        "paywallStatePublisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "dependencyContainer",
        "Lcom/superwall/sdk/dependencies/DependencyContainer;",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "presentationFailure",
        "",
        "error",
        "(Ljava/lang/Throwable;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final synthetic access$presentationFailure(Ljava/lang/Throwable;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt;->presentationFailure(Ljava/lang/Throwable;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getPaywallView(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lcom/superwall/sdk/dependencies/DependencyContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;

    iget v2, v1, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v13, :cond_3

    if-eq v2, v12, :cond_2

    if-ne v2, v11, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v3, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    iget-object v2, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/dependencies/DependencyContainer;

    iget-object v3, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v4, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, v23

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    invoke-virtual/range {p4 .. p4}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v6

    move-object/from16 v2, p0

    .line 28
    iput-object v2, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$1:Ljava/lang/Object;

    move-object/from16 v5, p3

    iput-object v5, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$2:Ljava/lang/Object;

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$3:Ljava/lang/Object;

    iput v13, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I

    const/4 v7, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v10}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetExperimentKt;->getExperiment$default(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object/from16 v5, p0

    move-object/from16 v4, p2

    move-object v2, v3

    move-object/from16 v3, p3

    .line 20
    :goto_1
    check-cast v2, Lcom/superwall/sdk/models/triggers/Experiment;

    .line 37
    new-instance v6, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    .line 38
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Experiment;->getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getPaywallId()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-direct {v6, v7, v2}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;)V

    .line 44
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v2

    .line 47
    new-instance v7, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;

    .line 48
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPaywallOverrides()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;->getProductsByName()Ljava/util/Map;

    move-result-object v9

    goto :goto_2

    :cond_6
    move-object v9, v14

    .line 49
    :goto_2
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getFreeTrialOverride()Ljava/lang/Boolean;

    move-result-object v10

    .line 47
    invoke-direct {v7, v9, v10}, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;-><init>(Ljava/util/Map;Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v9

    invoke-virtual {v9}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched()Z

    move-result v9

    .line 52
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationSourceType()Ljava/lang/String;

    move-result-object v10

    move-object/from16 p0, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move/from16 p4, v9

    move-object/from16 p5, v10

    .line 43
    invoke-virtual/range {p0 .. p5}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makePaywallRequest(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;ZLjava/lang/String;)Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-result-object v0

    move-object/from16 v2, p0

    .line 56
    :try_start_1
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v6

    sget-object v7, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 57
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v6

    sget-object v7, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v13

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 58
    :goto_3
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;->getPaywallViewDelegateAdapter()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    move-result-object v5

    .line 60
    sget-object v7, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->getWebviewExists()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 63
    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;

    move-result-object v2

    .line 64
    iput-object v4, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$0:Ljava/lang/Object;

    iput-object v3, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$1:Ljava/lang/Object;

    iput-object v14, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$2:Ljava/lang/Object;

    iput-object v14, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$3:Ljava/lang/Object;

    iput v12, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p0, v2

    move-object/from16 p4, v5

    move/from16 p2, v6

    move/from16 p3, v7

    move-object/from16 p5, v8

    :try_start_2
    invoke-virtual/range {p0 .. p5}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getPaywallView(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZZLcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_8

    goto/16 :goto_8

    :cond_8
    move-object v2, v3

    move-object v3, v4

    .line 20
    :goto_4
    :try_start_3
    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 117
    instance-of v4, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v4, :cond_9

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 118
    :cond_9
    instance-of v4, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v4, :cond_b

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    return-object v0

    .line 73
    :cond_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move-object/from16 v8, p5

    goto :goto_6

    .line 76
    :cond_c
    :try_start_4
    sget-object v15, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 77
    sget-object v16, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 78
    sget-object v17, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 80
    const-string v18, "Paywalls cannot be presented because the Android System WebView has been disabled by the user."

    const/16 v21, 0x18

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 76
    invoke-static/range {v15 .. v22}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;

    invoke-direct {v0, v14, v13, v14}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :catchall_2
    move-exception v0

    :goto_6
    move-object v2, v3

    move-object v3, v4

    .line 87
    :goto_7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object v14, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$0:Ljava/lang/Object;

    iput-object v14, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$1:Ljava/lang/Object;

    iput-object v14, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$2:Ljava/lang/Object;

    iput-object v14, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->L$3:Ljava/lang/Object;

    iput v11, v8, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$getPaywallView$1;->label:I

    invoke-static {v0, v3, v2, v8}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt;->presentationFailure(Ljava/lang/Throwable;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_d

    :goto_8
    return-object v1

    :cond_d
    :goto_9
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPaywallView$default(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt;->getPaywallView(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final presentationFailure(Ljava/lang/Throwable;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 97
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 98
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 99
    const-string v7, "Error Getting Paywall View"

    move-object v9, p0

    move-object v8, p1

    .line 96
    invoke-virtual/range {v4 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_3

    .line 103
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    invoke-direct {p0, v9}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;-><init>(Ljava/lang/Throwable;)V

    iput-object v9, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt$presentationFailure$1;->label:I

    invoke-interface {p2, p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, v9

    .line 104
    :goto_1
    instance-of p1, p0, Lcom/superwall/sdk/billing/BillingError;

    if-eqz p1, :cond_4

    .line 105
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$SubscriptionStatusTimeout;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Google Play Billing is not available or has an error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-direct {p1, p0}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$SubscriptionStatusTimeout;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 109
    :cond_4
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The paywall view could not be created: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-direct {p1, p0}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$NoPaywallView;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
