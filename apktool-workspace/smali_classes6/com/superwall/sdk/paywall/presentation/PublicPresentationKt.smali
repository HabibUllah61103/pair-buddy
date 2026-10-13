.class public final Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;
.super Ljava/lang/Object;
.source "PublicPresentation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,346:1\n135#2,10:347\n129#3,5:357\n*S KotlinDebug\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt\n*L\n96#1:347,10\n111#1:357,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0080@\u00a2\u0006\u0002\u0010\u0004\u001a\u001e\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0080@\u00a2\u0006\u0002\u0010\n\u001a\u0018\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\rH\u0000\u001a\u0012\u0010\u000e\u001a\u00020\u0001*\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0010\u001a\n\u0010\u0011\u001a\u00020\u0001*\u00020\u000f\u001a\u0012\u0010\u0012\u001a\u00020\u0001*\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0010\u001a\n\u0010\u0013\u001a\u00020\u0001*\u00020\u000f\u001aJ\u0010\u0014\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0016\u0008\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001cH\u0007\u001aJ\u0010\u001d\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0016\u0008\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001cH\u0002\u00a8\u0006\u001f"
    }
    d2 = {
        "dismissPaywall",
        "",
        "params",
        "Lcom/superwall/sdk/paywall/presentation/DismissParams;",
        "(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "performTrackAndPresent",
        "context",
        "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;",
        "(Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPaywall",
        "Lcom/superwall/sdk/paywall/presentation/RegisterContext;",
        "Lcom/superwall/sdk/paywall/presentation/RegisterRequest;",
        "dismiss",
        "Lcom/superwall/sdk/Superwall;",
        "(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dismissSync",
        "dismissForNextPaywall",
        "dismissSyncForNextPaywall",
        "register",
        "placement",
        "",
        "",
        "",
        "handler",
        "Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;",
        "feature",
        "Lkotlin/Function0;",
        "internallyRegister",
        "completion",
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
.method public static synthetic $r8$lambda$9EgvMavujRDupFYWWbkDwTj6AQE(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister$lambda$3(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HzxRwrg1FHNmndx6Gguk4lKLElM(Lcom/superwall/sdk/Superwall;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister$lambda$6(Lcom/superwall/sdk/Superwall;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U-rC-v_JsG1uNtVJYkLuv8my0sA(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister$lambda$5(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$owWa-Uaaqr_PhOgrqDb6mYcbwBM(Lcom/superwall/sdk/Superwall;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister$lambda$4(Lcom/superwall/sdk/Superwall;)Z

    move-result p0

    return p0
.end method

.method public static final dismiss(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/DismissParams;

    .line 225
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 226
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v2

    .line 227
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v3, p0

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 228
    sget-object p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$SystemLogic;

    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 223
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismiss$2;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismiss$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function5;

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/DismissParams;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function5;)V

    .line 223
    invoke-static {v0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismissPaywall(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final dismissForNextPaywall(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/DismissParams;

    .line 251
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 252
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v2

    .line 253
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v3, p0

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 254
    sget-object p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ForNextPaywall;

    move-object v4, p0

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 249
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissForNextPaywall$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function5;

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/DismissParams;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function5;)V

    .line 249
    invoke-static {v0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismissPaywall(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final dismissPaywall(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/DismissParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/DismissParams;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;-><init>(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final dismissSync(Lcom/superwall/sdk/Superwall;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissSync$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final dismissSyncForNextPaywall(Lcom/superwall/sdk/Superwall;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissSyncForNextPaywall$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissSyncForNextPaywall$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final internallyRegister(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 309
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    .line 310
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 311
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 312
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getSerialTaskManager$superwall_release()Lcom/superwall/sdk/misc/SerialTaskManager;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    .line 308
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    new-instance v7, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/Superwall;)V

    new-instance v8, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/Superwall;)V

    new-instance v9, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;

    invoke-direct {v9, p0, v6}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$internallyRegister$registerContext$4;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 314
    invoke-direct {v4, v5, v7, v8, v9}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    .line 308
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/Superwall;)V

    new-instance v6, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/Superwall;)V

    .line 309
    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/misc/SerialTaskManager;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 336
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;)V

    .line 344
    invoke-static {v0, v1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->registerPaywall(Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;)V

    return-void
.end method

.method static synthetic internallyRegister$default(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 302
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final internallyRegister$lambda$3(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 10

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/dependencies/RequestFactory;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v9}, Lcom/superwall/sdk/dependencies/RequestFactory$DefaultImpls;->makePresentationRequest$default(Lcom/superwall/sdk/dependencies/RequestFactory;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final internallyRegister$lambda$4(Lcom/superwall/sdk/Superwall;)Z
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->isPaywallPresented()Z

    move-result p0

    return p0
.end method

.method private static final internallyRegister$lambda$5(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 1

    const-string v0, "paywallId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getCustomCallbackRegistry$superwall_release()Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->register(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 329
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final internallyRegister$lambda$6(Lcom/superwall/sdk/Superwall;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "paywallId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getCustomCallbackRegistry$superwall_release()Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->unregister(Ljava/lang/String;)V

    .line 332
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final performTrackAndPresent(Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;",
            "Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;

    iget v1, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_3
    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;

    iget-object p0, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    :try_start_2
    sget-object p2, Lcom/superwall/sdk/analytics/internal/TrackingLogic;->Companion:Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->getPlacement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;->checkNotSuperwallEvent(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->getPlacement()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 93
    :cond_5
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->isFeatureGatable()Z

    move-result v7

    .line 89
    new-instance v8, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;

    const/4 v9, 0x0

    invoke-direct {v8, p2, v9, v7, v2}, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;-><init>(Ljava/lang/String;ZZLjava/util/Map;)V

    .line 97
    :try_start_3
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;->getTrack()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    iput-object p0, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    invoke-interface {p2, v8, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto/16 :goto_5

    :cond_6
    :goto_1
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    .line 98
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 99
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Unknown error"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    :cond_7
    throw p0

    .line 103
    :cond_8
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;->getMakePresentationRequest()Lkotlin/jvm/functions/Function4;

    move-result-object v2

    .line 104
    new-instance v5, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lcom/superwall/sdk/analytics/internal/TrackingResult;

    invoke-virtual {p2}, Lcom/superwall/sdk/analytics/internal/TrackingResult;->getData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object p2

    invoke-direct {v5, p2}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;-><init>(Lcom/superwall/sdk/models/events/EventData;)V

    .line 105
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->getPaywallOverrides()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    move-result-object p2

    .line 106
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;->isPaywallPresented()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    .line 107
    sget-object v8, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;

    .line 103
    invoke-interface {v2, v5, p2, v7, v8}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    .line 110
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;->getPresent()Lkotlin/jvm/functions/Function3;

    move-result-object p0

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->getPublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v2

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    invoke-interface {p0, p2, v2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_5

    .line 111
    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    new-instance p2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p2, p0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 350
    :goto_3
    invoke-static {p0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 351
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 352
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 355
    :cond_a
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    .line 358
    :goto_4
    instance-of p0, p2, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p0, :cond_b

    check-cast p2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p2}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    check-cast p0, Lkotlin/Unit;

    goto :goto_6

    .line 359
    :cond_b
    instance-of p0, p2, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p0, :cond_d

    check-cast p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p2}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p0

    move-object p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 112
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;->getPublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    new-instance p2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    invoke-direct {p2, p0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;-><init>(Ljava/lang/Throwable;)V

    iput-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$performTrackAndPresent$1;->label:I

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    :goto_5
    return-object v1

    .line 357
    :cond_c
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 85
    :catchall_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final register(Lcom/superwall/sdk/Superwall;Ljava/lang/String;)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->register$default(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final register(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->register$default(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final register(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->register$default(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final register(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->internallyRegister(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic register$default(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 292
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->register(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final registerPaywall(Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-static {v1, v1, v2, v0, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v5

    const/4 v0, 0x1

    .line 138
    invoke-static {v2, v0, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v4

    .line 140
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->getCollectionScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1;

    const/4 v8, 0x0

    move-object v7, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lkotlin/coroutines/Continuation;)V

    move-object p1, v5

    move-object p0, v6

    move-object v5, v7

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 201
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->getSerialTaskManager()Lcom/superwall/sdk/misc/SerialTaskManager;

    move-result-object v0

    new-instance v3, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v3}, Lcom/superwall/sdk/misc/SerialTaskManager;->addTask(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
