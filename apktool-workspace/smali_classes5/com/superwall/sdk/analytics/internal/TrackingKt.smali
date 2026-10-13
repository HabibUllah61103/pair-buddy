.class public final Lcom/superwall/sdk/analytics/internal/TrackingKt;
.super Ljava/lang/Object;
.source "Tracking.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tracking.kt\ncom/superwall/sdk/analytics/internal/TrackingKt\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,201:1\n135#2,10:202\n143#3,4:212\n*S KotlinDebug\n*F\n+ 1 Tracking.kt\ncom/superwall/sdk/analytics/internal/TrackingKt\n*L\n38#1:202,10\n111#1:212,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\u001a \u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0006\u001a\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008\u001a\"\u0010\t\u001a\u00020\n*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\r\u001a.\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100\u000f*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "track",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
        "Lcom/superwall/sdk/Superwall;",
        "event",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trackSync",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)Ljava/lang/Object;",
        "handleImplicitTrigger",
        "",
        "eventData",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "internallyHandleImplicitTrigger",
        "Lcom/superwall/sdk/misc/Either;",
        "",
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
.method public static final synthetic access$internallyHandleImplicitTrigger(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->internallyHandleImplicitTrigger(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final handleImplicitTrigger(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$handleImplicitTrigger$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/superwall/sdk/analytics/internal/TrackingKt$handleImplicitTrigger$2;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final internallyHandleImplicitTrigger(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 144
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/superwall/sdk/analytics/internal/TrackingKt$internallyHandleImplicitTrigger$2;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;

    iget v2, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 37
    iget v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/events/EventData;

    iget-object v1, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Date;

    iget-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iget-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/Superwall;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v3

    move-object v3, v7

    goto :goto_2

    :cond_3
    iget-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iget-object v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/Superwall;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v3

    move-object v3, v5

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    :try_start_3
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getHasInitialized()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object/from16 v3, p0

    iput-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    goto/16 :goto_4

    .line 44
    :cond_5
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    sget-object v5, Lcom/superwall/sdk/analytics/internal/TrackingLogic;->Companion:Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;

    .line 48
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getAppSessionManager()Lcom/superwall/sdk/analytics/session/AppSessionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->getAppSession()Lcom/superwall/sdk/analytics/session/AppSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/analytics/session/AppSession;->getId()Ljava/lang/String;

    move-result-object v8

    .line 46
    iput-object v3, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$2:Ljava/lang/Object;

    iput v6, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    invoke-virtual {v5, v7, v8, v1}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;->processParameters(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v11, v0

    move-object v0, v5

    move-object v5, v7

    .line 37
    :goto_2
    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingParameters;

    .line 52
    instance-of v7, v5, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    if-eqz v7, :cond_7

    .line 54
    new-instance v7, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;

    .line 55
    move-object v8, v5

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    invoke-interface {v8}, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v8

    .line 56
    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/internal/TrackingParameters;->getDelegateParams()Ljava/util/Map;

    move-result-object v9

    .line 54
    invoke-direct {v7, v8, v9}, Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;-><init>(Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;Ljava/util/Map;)V

    .line 59
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->handleSuperwallEvent(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V

    .line 60
    invoke-virtual {v3, v7}, Lcom/superwall/sdk/Superwall;->emitSuperwallEvent$superwall_release(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V

    .line 62
    sget-object v12, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 63
    sget-object v13, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 64
    sget-object v14, Lcom/superwall/sdk/logger/LogScope;->placements:Lcom/superwall/sdk/logger/LogScope;

    .line 65
    const-string v15, "Logged Event"

    .line 66
    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/internal/TrackingParameters;->getAudienceFilterParams()Ljava/util/Map;

    move-result-object v16

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v17, 0x0

    .line 62
    invoke-static/range {v12 .. v19}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 71
    :cond_7
    new-instance v7, Lcom/superwall/sdk/models/events/EventData;

    .line 72
    invoke-interface {v5}, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;->getRawName()Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/internal/TrackingParameters;->getAudienceFilterParams()Ljava/util/Map;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v8, 0x0

    .line 71
    invoke-direct/range {v7 .. v13}, Lcom/superwall/sdk/models/events/EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 81
    invoke-virtual {v8}, Lcom/superwall/sdk/models/config/Config;->getFeatureFlags()Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 82
    invoke-virtual {v8}, Lcom/superwall/sdk/models/config/FeatureFlags;->getDisableVerboseEvents()Z

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_3

    :cond_8
    move-object v8, v9

    .line 83
    :goto_3
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v10

    sget-object v11, Lcom/superwall/sdk/storage/DisableVerboseEvents;->INSTANCE:Lcom/superwall/sdk/storage/DisableVerboseEvents;

    check-cast v11, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v10, v11}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-nez v8, :cond_9

    move-object v8, v10

    .line 87
    :cond_9
    sget-object v10, Lcom/superwall/sdk/analytics/internal/TrackingLogic;->Companion:Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;

    .line 90
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeIsSandbox()Z

    move-result v11

    .line 87
    invoke-virtual {v10, v5, v8, v11}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;->isNotDisabledVerboseEvent(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/Boolean;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 93
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getEventsQueue()Lcom/superwall/sdk/storage/EventsQueue;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Lcom/superwall/sdk/storage/EventsQueue;->enqueue(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)V

    .line 98
    :cond_a
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/storage/LocalStorage;->getCoreDataManager()Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v3

    invoke-static {v3, v7, v9, v6, v9}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->saveEventData$default(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 100
    invoke-interface {v5}, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;->getCanImplicitlyTriggerPaywall()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 101
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    iput-object v0, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->L$2:Ljava/lang/Object;

    iput v4, v1, Lcom/superwall/sdk/analytics/internal/TrackingKt$track$1;->label:I

    invoke-static {v3, v5, v7, v1}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->handleImplicitTrigger(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_b

    :goto_4
    return-object v2

    :cond_b
    move-object v1, v0

    move-object v2, v7

    :goto_5
    move-object v0, v1

    move-object v7, v2

    .line 107
    :cond_c
    new-instance v1, Lcom/superwall/sdk/analytics/internal/TrackingResult;

    invoke-direct {v1, v7, v0}, Lcom/superwall/sdk/analytics/internal/TrackingResult;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)V

    .line 203
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 206
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 207
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 210
    :cond_d
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 213
    :goto_6
    instance-of v1, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v1, :cond_e

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 214
    :cond_e
    instance-of v1, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v1, :cond_f

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    return-object v0

    .line 212
    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static final trackSync(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/superwall/sdk/analytics/internal/TrackingKt$trackSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/superwall/sdk/analytics/internal/TrackingKt$trackSync$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Result;

    invoke-virtual {p0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
