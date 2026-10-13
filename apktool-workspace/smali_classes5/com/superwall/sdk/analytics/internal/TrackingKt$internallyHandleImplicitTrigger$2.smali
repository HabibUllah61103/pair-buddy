.class final Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Tracking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/analytics/internal/TrackingKt;->internallyHandleImplicitTrigger(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/misc/Either<",
        "+",
        "Lkotlin/Unit;",
        "Ljava/lang/Throwable;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tracking.kt\ncom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,201:1\n135#2,10:202\n*S KotlinDebug\n*F\n+ 1 Tracking.kt\ncom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2\n*L\n145#1:202,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "",
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
    c = "com.superwall.sdk.analytics.internal.TrackingKt$internallyHandleImplicitTrigger$2"
    f = "Tracking.kt"
    i = {
        0x0,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4
    }
    l = {
        0x9c,
        0x9e,
        0xae,
        0xb3,
        0xb5,
        0xc6
    }
    m = "invokeSuspend"
    n = {
        "request",
        "request",
        "statePublisher",
        "request",
        "lastPresentationItems",
        "request",
        "lastPresentationItems"
    }
    s = {
        "L$2",
        "L$1",
        "L$2",
        "L$1",
        "L$2",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $event:Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

.field final synthetic $eventData:Lcom/superwall/sdk/models/events/EventData;

.field final synthetic $this_internallyHandleImplicitTrigger:Lcom/superwall/sdk/Superwall;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iput-object p2, p0, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$this_internallyHandleImplicitTrigger:Lcom/superwall/sdk/Superwall;

    iput-object p3, p0, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$event:Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$this_internallyHandleImplicitTrigger:Lcom/superwall/sdk/Superwall;

    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$event:Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 144
    iget v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_8

    :pswitch_1
    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    iget-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/Superwall;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    iget-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/Superwall;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/Superwall;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iget-object v6, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/superwall/sdk/Superwall;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iget-object v6, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$this_internallyHandleImplicitTrigger:Lcom/superwall/sdk/Superwall;

    iget-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->$event:Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    .line 146
    :try_start_5
    new-instance v7, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ImplicitTrigger;

    invoke-direct {v7, v0}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ImplicitTrigger;-><init>(Lcom/superwall/sdk/models/events/EventData;)V

    .line 149
    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/superwall/sdk/dependencies/RequestFactory;

    .line 150
    move-object v9, v7

    check-cast v9, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    .line 151
    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->isPaywallPresented()Z

    move-result v14

    .line 152
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;

    move-object v15, v0

    check-cast v15, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 149
    invoke-static/range {v8 .. v17}, Lcom/superwall/sdk/dependencies/RequestFactory$DefaultImpls;->makePresentationRequest$default(Lcom/superwall/sdk/dependencies/RequestFactory;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 156
    :try_start_6
    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    iput-object v6, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    iput v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    invoke-static {v7, v4, v0, v1}, Lcom/superwall/sdk/paywall/presentation/internal/operators/WaitForSubsStatusAndConfigKt;->waitForEntitlementsAndConfig(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    move-object v0, v5

    move-object v5, v7

    .line 163
    :goto_0
    :try_start_7
    sget-object v7, Lcom/superwall/sdk/analytics/internal/TrackingLogic;->Companion:Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;

    .line 165
    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/config/ConfigManager;->getTriggersByEventName()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 166
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 167
    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v9

    .line 163
    invoke-virtual {v7, v0, v8, v9}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;->canTriggerPaywall(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/util/Set;Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    move-result-object v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    .line 170
    invoke-static {v9, v9, v4, v8, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v8

    .line 173
    sget-object v9, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DeepLinkTrigger;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DeepLinkTrigger;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 174
    iput-object v6, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    invoke-static {v6, v1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismiss(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1

    goto/16 :goto_7

    :cond_1
    move-object v3, v5

    move-object v5, v6

    move-object v0, v8

    :goto_1
    move-object v8, v0

    :goto_2
    move-object v6, v5

    move-object v5, v3

    goto :goto_5

    .line 177
    :cond_2
    sget-object v9, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$ClosePaywallThenTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$ClosePaywallThenTriggerPaywall;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 178
    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->getPresentationItems$superwall_release()Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->getLast()Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    move-result-object v7

    if-nez v7, :cond_3

    goto/16 :goto_8

    .line 179
    :cond_3
    iput-object v6, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    invoke-static {v6, v0, v3, v1}, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/PublicGetPresentationResultKt;->internallyGetPresentationResult(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4

    goto :goto_7

    :cond_4
    move-object v3, v5

    move-object v5, v6

    .line 144
    :goto_3
    check-cast v0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    .line 180
    instance-of v0, v0, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult$Paywall;

    if-eqz v0, :cond_8

    .line 181
    iput-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    invoke-static {v5, v1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismissForNextPaywall(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    goto :goto_7

    :cond_5
    move-object v0, v7

    .line 182
    :goto_4
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->getStatePublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v8

    goto :goto_2

    .line 188
    :cond_6
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    .line 196
    :cond_7
    :goto_5
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object v0

    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall;->isPaywallPresented()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->setPaywallPresented(Z)V

    .line 198
    iput-object v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    invoke-static {v6, v5, v8, v1}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationKt;->internallyPresent(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v5, v7

    .line 158
    :goto_6
    iput-object v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;->label:I

    invoke-static {v6, v5, v0, v1}, Lcom/superwall/sdk/paywall/presentation/internal/operators/LogErrorsKt;->logErrors(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    :goto_7
    return-object v2

    .line 199
    :cond_8
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 203
    new-instance v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 206
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 207
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 210
    :cond_9
    new-instance v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;

    :goto_9
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
