.class final Lcom/superwall/sdk/paywall/view/PaywallView$present$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;->present(Landroid/app/Activity;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/jvm/functions/Function1;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView$present$2\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,1175:1\n17#2:1176\n19#2:1180\n49#2:1181\n51#2:1185\n46#3:1177\n51#3:1179\n46#3:1182\n51#3:1184\n105#4:1178\n105#4:1183\n*S KotlinDebug\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView$present$2\n*L\n313#1:1176\n313#1:1180\n314#1:1181\n314#1:1185\n313#1:1177\n313#1:1179\n314#1:1182\n314#1:1184\n313#1:1178\n314#1:1183\n*E\n"
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
    c = "com.superwall.sdk.paywall.view.PaywallView$present$2"
    f = "PaywallView.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x13e,
        0x141,
        0x153
    }
    m = "invokeSuspend"
    n = {
        "msg",
        "msg"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $timeout:Lkotlin/time/Duration;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method constructor <init>(Lkotlin/time/Duration;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/Duration;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView$present$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->$timeout:Lkotlin/time/Duration;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->$timeout:Lkotlin/time/Duration;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {p1, v0, v1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;-><init>(Lkotlin/time/Duration;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 309
    iget v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$1:Ljava/lang/Object;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->$timeout:Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Timeout triggered - paywall wasn\'t loaded in "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " seconds"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 1178
    new-instance v6, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$invokeSuspend$$inlined$filter$1;

    invoke-direct {v6, v1}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 1183
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$invokeSuspend$$inlined$map$1;

    invoke-direct {v1, v6}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 315
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->$timeout:Lkotlin/time/Duration;

    invoke-virtual {v6}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->timeout-HG0u8IE(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 316
    new-instance v6, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$3;

    invoke-direct {v6, v5}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v6}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 318
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->label:I

    invoke-static {v1, v6}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    move-object v4, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 319
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 320
    instance-of v6, v6, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v6, :cond_7

    .line 321
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywallStatePublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 322
    new-instance v7, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    .line 323
    new-instance v8, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallErrors$Timeout;

    invoke-direct {v8, v4}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallErrors$Timeout;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    .line 322
    invoke-direct {v7, v8}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;-><init>(Ljava/lang/Throwable;)V

    .line 321
    iput-object v4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->label:I

    invoke-interface {v6, v7, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_1
    move-object p1, v3

    .line 326
    :cond_6
    invoke-static {}, Lcom/superwall/sdk/paywall/view/PaywallView;->access$getMainScope$cp()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$4$1;

    invoke-direct {v3, v1, v5}, Lcom/superwall/sdk/paywall/view/PaywallView$present$2$4$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 331
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;

    .line 333
    new-instance v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fail;

    .line 334
    new-instance v7, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;

    invoke-direct {v7, v4}, Lcom/superwall/sdk/paywall/view/webview/WebviewError$Timeout;-><init>(Ljava/lang/String;)V

    check-cast v7, Lcom/superwall/sdk/paywall/view/webview/WebviewError;

    .line 335
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getUrl-24UBhI0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 333
    invoke-direct {v6, v7, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Fail;-><init>(Lcom/superwall/sdk/paywall/view/webview/WebviewError;Ljava/util/List;)V

    check-cast v6, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;

    .line 337
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    .line 331
    invoke-direct {v3, v6, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 339
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getFactory()Lcom/superwall/sdk/paywall/view/PaywallView$Factory;

    move-result-object v1

    check-cast v3, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$present$2;->label:I

    invoke-interface {v1, v3, p0}, Lcom/superwall/sdk/paywall/view/PaywallView$Factory;->track-gIAlu-s(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    .line 342
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
