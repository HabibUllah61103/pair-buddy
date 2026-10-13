.class public final Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;
.super Ljava/lang/Object;
.source "GetPaywallComponents.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetPaywallComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetPaywallComponents.kt\ncom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,105:1\n135#2,10:106\n135#2,10:120\n143#3,4:116\n*S KotlinDebug\n*F\n+ 1 GetPaywallComponents.kt\ncom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt\n*L\n29#1:106,10\n69#1:120,10\n63#1:116,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u001a2\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0086@\u00a2\u0006\u0002\u0010\t\u001a6\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0080@\u00a2\u0006\u0002\u0010\r\u001a,\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0080@\u00a2\u0006\u0002\u0010\u0012\u001a/\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "getPaywallComponents",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;",
        "Lcom/superwall/sdk/Superwall;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "publisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runGetPaywallComponents",
        "factory",
        "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;",
        "(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmAssignment",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;",
        "",
        "(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywallComponentsSync",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)Ljava/lang/Object;",
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
.method public static final confirmAssignment(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 65
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$2:Ljava/lang/Object;

    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_3
    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object p1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p1

    move-object p1, p0

    :goto_1
    move-object p0, p2

    goto :goto_3

    :cond_4
    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    :try_start_4
    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    invoke-interface {p0, p1, v7, v0}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->waitForEntitlementsAndConfig(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_5

    .line 71
    :cond_6
    :goto_2
    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->evaluateRules-gIAlu-s(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, p0

    goto :goto_1

    .line 72
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 75
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    iput-object v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    invoke-interface {v2, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->confirmHoldoutAssignment(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_5

    .line 76
    :cond_8
    :goto_4
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getConfirmableAssignment()Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    move-result-object p0

    .line 77
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched()Z

    move-result p2

    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$confirmAssignment$1;->label:I

    invoke-interface {v2, p0, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->confirmPaywallAssignment(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_5
    return-object v1

    :cond_9
    :goto_6
    if-eqz p0, :cond_a

    .line 80
    new-instance v7, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;

    .line 81
    invoke-virtual {p0}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getExperimentId()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;->getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object p0

    .line 80
    invoke-direct {v7, p1, p0}, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    .line 121
    :cond_a
    new-instance p0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p0, v7}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p0, Lcom/superwall/sdk/misc/Either;

    return-object p0

    .line 73
    :cond_b
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    .line 123
    invoke-static {p0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 124
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 125
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 128
    :cond_c
    new-instance p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    return-object p1
.end method

.method public static final getPaywallComponents(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 13
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getGetPaywallComponentsFactory$superwall_release()Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    move-result-object p0

    .line 18
    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponents$1;->label:I

    invoke-static {p0, p1, p2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->runGetPaywallComponents(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public static synthetic getPaywallComponents$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->getPaywallComponents(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getPaywallComponentsSync(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponentsSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$getPaywallComponentsSync$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Result;

    invoke-virtual {p0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPaywallComponentsSync$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->getPaywallComponentsSync(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final runGetPaywallComponents(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    iget-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    iget-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :pswitch_1
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    iget-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v7

    goto/16 :goto_6

    :pswitch_2
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    iget-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p0

    move-object v5, p2

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_5

    :pswitch_3
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    iget-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    goto/16 :goto_4

    :pswitch_4
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iget-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move-object v2, v1

    move-object v1, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_3

    :pswitch_5
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iget-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :pswitch_6
    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    :try_start_6
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :pswitch_7
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    :try_start_7
    iput-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    const/4 p3, 0x1

    iput p3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface {p0, p1, p2, v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->waitForEntitlementsAndConfig(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    goto/16 :goto_7

    .line 31
    :cond_3
    :goto_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 33
    iput-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    iput-object p3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface {p0, p1, p2, v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->checkDebuggerPresentation(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto/16 :goto_7

    :cond_4
    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, p0

    move-object p0, p3

    .line 35
    :goto_2
    iput-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    iput-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    const/4 p3, 0x3

    iput p3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface {v1, p2, v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->evaluateRules-gIAlu-s(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_2

    goto/16 :goto_7

    .line 36
    :goto_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, p3

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;

    .line 38
    iput-object v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    iput-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    iput-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    const/4 p3, 0x4

    iput p3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface {v2, v1, p0, v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->confirmHoldoutAssignment(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_1

    goto :goto_7

    .line 41
    :goto_4
    iput-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object v5, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    iput-object v4, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    iput-object v3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    const/4 p0, 0x5

    iput p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->getPaywallView-yxL6bBk(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_5

    goto :goto_7

    :cond_5
    move-object p1, v4

    move-object v4, v2

    :goto_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p3

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 44
    iput-object v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    iput-object v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    iput-object v3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    const/4 p0, 0x6

    iput p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->getPresenterIfNecessary(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    goto :goto_7

    :cond_6
    move-object p0, p1

    move-object p2, v2

    move-object p1, v3

    move-object v2, v1

    move-object v1, v4

    .line 24
    :goto_6
    check-cast p3, Landroid/app/Activity;

    .line 52
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;->getConfirmableAssignment()Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;

    move-result-object v3

    .line 54
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched()Z

    move-result v4

    .line 51
    iput-object p0, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$0:Ljava/lang/Object;

    iput-object p2, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$1:Ljava/lang/Object;

    iput-object p1, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$2:Ljava/lang/Object;

    iput-object p3, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x7

    iput v5, v6, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt$runGetPaywallComponents$1;->label:I

    invoke-interface {v2, v3, v1, v4, v6}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;->confirmPaywallAssignment(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    :goto_7
    return-object v0

    :cond_7
    move-object v0, p0

    move-object p0, p3

    .line 57
    :goto_8
    new-instance p3, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;

    invoke-direct {p3, p2, p0, p1, v0}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PaywallComponents;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;)V

    .line 107
    new-instance p0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p0, p3}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p0, Lcom/superwall/sdk/misc/Either;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 109
    invoke-static {p0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 110
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 111
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 114
    :cond_8
    new-instance p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    check-cast p0, Lcom/superwall/sdk/misc/Either;

    .line 117
    :goto_9
    instance-of p1, p0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p1, :cond_9

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_a

    .line 118
    :cond_9
    instance-of p1, p0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p1, :cond_a

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0

    .line 116
    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic runGetPaywallComponents$default(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 24
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->runGetPaywallComponents(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
