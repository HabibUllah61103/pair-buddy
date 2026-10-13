.class public final Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;
.super Ljava/lang/Object;
.source "GetPaywallComponentsFactory.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0002\u0010\rJ&\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0002\u0010\rJ\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0016JJ\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00112\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ8\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0096@\u00a2\u0006\u0002\u0010\"J(\u0010#\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010&\u001a\u00020\'H\u0096@\u00a2\u0006\u0002\u0010(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;",
        "Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;",
        "superwall",
        "Lcom/superwall/sdk/Superwall;",
        "<init>",
        "(Lcom/superwall/sdk/Superwall;)V",
        "waitForEntitlementsAndConfig",
        "",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "publisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkDebuggerPresentation",
        "evaluateRules",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
        "evaluateRules-gIAlu-s",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmHoldoutAssignment",
        "rulesOutcome",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPaywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "debugInfo",
        "",
        "",
        "",
        "getPaywallView-yxL6bBk",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPresenterIfNecessary",
        "Landroid/app/Activity;",
        "paywallView",
        "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmPaywallAssignment",
        "confirmableAssignment",
        "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
        "isDebuggerLaunched",
        "",
        "(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final superwall:Lcom/superwall/sdk/Superwall;


# direct methods
.method public static synthetic $r8$lambda$E8z0fq5ngz0S98Y1cInPm9OZFOU(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->getPresenterIfNecessary$lambda$0(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/Superwall;)V
    .locals 1

    const-string v0, "superwall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    return-void
.end method

.method public static final synthetic access$getSuperwall$p(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;)Lcom/superwall/sdk/Superwall;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    return-object p0
.end method

.method private static final getPresenterIfNecessary$lambda$0(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;)Landroid/app/Activity;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkDebuggerPresentation(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 66
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    invoke-static {v0, p1, p2, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/CheckDebuggerPresentationKt;->checkDebuggerPresentation(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public confirmHoldoutAssignment(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/internal/operators/ConfirmHoldoutAssignmentKt;->confirmHoldoutAssignment$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/dependencies/DependencyContainer;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public confirmPaywallAssignment(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/operators/ConfirmPaywallAssignmentKt;->confirmPaywallAssignment$default(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;ZLcom/superwall/sdk/dependencies/DependencyContainer;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public evaluateRules-gIAlu-s(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 68
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$evaluateRules$1;->label:I

    invoke-static {p2, p1, v0}, Lcom/superwall/sdk/paywall/presentation/internal/operators/EvaluateRulesKt;->evaluateRules(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method public getPaywallView-yxL6bBk(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;

    invoke-direct {v0, p0, p5}, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p5, v6, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 75
    iget v1, v6, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/Result;

    invoke-virtual {p5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p5, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p5}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v5

    iput v2, v6, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPaywallView$1;->label:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPaywallVCKt;->getPaywallView(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    return-object p1
.end method

.method public getPresenterIfNecessary(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPresenterIfNecessary$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$getPresenterIfNecessary$2;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function3;

    new-instance v7, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/superwall/sdk/paywall/presentation/internal/operators/GetPresenterKt;->getPresenterIfNecessary(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/rule_logic/RuleEvaluationOutcome;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public waitForEntitlementsAndConfig(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 61
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/DefaultGetPaywallComponentsFactory;->superwall:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/superwall/sdk/paywall/presentation/internal/operators/WaitForSubsStatusAndConfigKt;->waitForEntitlementsAndConfig(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
