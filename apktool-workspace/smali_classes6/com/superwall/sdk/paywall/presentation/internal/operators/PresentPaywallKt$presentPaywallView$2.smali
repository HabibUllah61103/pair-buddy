.class final Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PresentPaywall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt;->presentPaywallView(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.paywall.presentation.internal.operators.PresentPaywallKt$presentPaywallView$2"
    f = "PresentPaywall.kt"
    i = {
        0x1
    }
    l = {
        0x34,
        0x58
    }
    m = "invokeSuspend"
    n = {
        "error"
    }
    s = {
        "L$0"
    }
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

.field final synthetic $paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field final synthetic $presenter:Landroid/app/Activity;

.field final synthetic $request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

.field final synthetic $this_presentPaywallView:Lcom/superwall/sdk/Superwall;

.field final synthetic $unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$m5e9zybV6cunxhtwaMrnHJTrBSE(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->invokeSuspend$lambda$0(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlinx/coroutines/flow/MutableSharedFlow;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$this_presentPaywallView:Lcom/superwall/sdk/Superwall;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$presenter:Landroid/app/Activity;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$debugInfo:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Z)Lkotlin/Unit;
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 63
    new-instance p2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 64
    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$1$1;

    invoke-direct {p0, p3, p2, v0}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$1$1;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;Lkotlin/coroutines/Continuation;)V

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 86
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 68
    :cond_0
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 69
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 70
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 68
    const-string v4, "Paywall Already Presented"

    const/4 v6, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 75
    sget-object p0, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;

    .line 78
    const-string p2, "Paywall Already Presented"

    .line 79
    const-string p4, "Trying to present paywall while another paywall is presented."

    .line 75
    const-string v1, "SWKPresentationError"

    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2, p2, p4}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;->presentationError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    .line 81
    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$1$2;

    invoke-direct {p1, p3, p0, v0}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$1$2;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 84
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$PaywallAlreadyPresented;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason$PaywallAlreadyPresented;-><init>()V

    throw p0
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

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$this_presentPaywallView:Lcom/superwall/sdk/Superwall;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$presenter:Landroid/app/Activity;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$debugInfo:Ljava/util/Map;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/app/Activity;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlinx/coroutines/flow/MutableSharedFlow;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest;

    .line 46
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v5

    .line 47
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v6

    .line 48
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus$Presentation;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus$Presentation;

    move-object v7, p1

    check-cast v7, Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;

    .line 50
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$this_presentPaywallView:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 45
    invoke-direct/range {v4 .. v12}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatus;Lcom/superwall/sdk/paywall/presentation/internal/PaywallPresentationRequestStatusReason;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest$Factory;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$this_presentPaywallView:Lcom/superwall/sdk/Superwall;

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->label:I

    invoke-static {p1, v4, v0}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 56
    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$presenter:Landroid/app/Activity;

    .line 57
    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    .line 58
    iget-object v6, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$unsavedOccurrence:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    .line 59
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getPaywallOverrides()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;->getPresentationStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    move-object v7, p1

    .line 60
    iget-object v8, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallStatePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 55
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$this_presentPaywallView:Lcom/superwall/sdk/Superwall;

    iget-object v9, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$debugInfo:Ljava/util/Map;

    move-object v10, v9

    new-instance v9, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;

    invoke-direct {v9, p1, v0, v10, v8}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    invoke-virtual/range {v3 .. v9}, Lcom/superwall/sdk/paywall/view/PaywallView;->present(Landroid/app/Activity;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 88
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$this_presentPaywallView:Lcom/superwall/sdk/Superwall;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->label:I

    invoke-static {p1, v3, v0, v4}, Lcom/superwall/sdk/paywall/presentation/internal/operators/LogErrorsKt;->logErrors(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 89
    :cond_5
    :goto_3
    throw v0
.end method
