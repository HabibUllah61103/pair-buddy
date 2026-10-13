.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallRequestManager.kt\ncom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,433:1\n1053#2:434\n351#3,11:435\n*S KotlinDebug\n*F\n+ 1 PaywallRequestManager.kt\ncom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1\n*L\n72#1:434\n129#1:435,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1"
    f = "PaywallRequestManager.kt"
    i = {
        0x0,
        0x0,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4
    }
    l = {
        0x65,
        0x6a,
        0x73,
        0x75,
        0x1b3,
        0xa8
    }
    m = "invokeSuspend"
    n = {
        "requestHash",
        "paywall",
        "requestHash",
        "paywall",
        "requestHash",
        "paywall",
        "requestHash",
        "paywall"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $isPreloading:Z

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method public static synthetic $r8$lambda$9Y899oq0d1zoNA4ym8UXUrDZ8FU(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->invokeSuspend$lambda$1(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$isPreloading:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)Ljava/lang/CharSequence;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
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

    new-instance p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$isPreloading:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_a

    :pswitch_1
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object/from16 v3, p1

    goto/16 :goto_8

    :pswitch_2
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v6

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_4

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :pswitch_5
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_3

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->makeDeviceInfo()Lcom/superwall/sdk/network/device/DeviceInfo;

    move-result-object v2

    .line 70
    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getOverrides()Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;->getProducts()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 70
    check-cast v5, Ljava/lang/Iterable;

    .line 434
    new-instance v6, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 70
    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    .line 73
    const-string v5, ""

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v12, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v12}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$$ExternalSyntheticLambda0;-><init>()V

    const/16 v13, 0x1e

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 75
    :goto_0
    sget-object v6, Lcom/superwall/sdk/paywall/request/PaywallLogic;->INSTANCE:Lcom/superwall/sdk/paywall/request/PaywallLogic;

    .line 76
    iget-object v7, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getResponseIdentifiers()Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;->getPaywallId()Ljava/lang/String;

    move-result-object v7

    .line 77
    iget-object v8, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v8}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v8

    .line 78
    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v6, v7, v8, v2, v5}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->requestHash(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getPaywallsByHash$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 84
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->isDebuggerLaunched()Z

    move-result v2

    if-nez v2, :cond_8

    .line 86
    iget-boolean v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$isPreloading:Z

    if-eqz v2, :cond_2

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v7}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->activePaywallId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    .line 92
    :cond_2
    :goto_1
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_2
    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getFailAt()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductIds()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 94
    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->setFailAt(Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 92
    :goto_2
    monitor-exit v2

    if-eqz v7, :cond_6

    .line 101
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v8, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    iput v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    invoke-virtual {v2, v7, v8, v9}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->addProducts(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v3, v5

    .line 67
    :goto_3
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getFailAt()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_5

    .line 103
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getPaywallsByHash$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v5, v3

    .line 106
    :cond_6
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    invoke-static {v2, v3, v5, v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$updatePaywall(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_7

    goto/16 :goto_9

    :cond_7
    return-object v2

    :catchall_0
    move-exception v0

    .line 92
    monitor-exit v2

    throw v0

    .line 112
    :cond_8
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getActiveTasks$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Deferred;

    if-eqz v2, :cond_d

    .line 115
    :try_start_3
    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    invoke-interface {v2, v7}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v2, v0, :cond_9

    goto/16 :goto_9

    :cond_9
    move-object v7, v6

    move-object v6, v5

    .line 67
    :goto_4
    :try_start_4
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    iget-boolean v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$isPreloading:Z

    if-eqz v2, :cond_b

    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->activePaywallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-object v5, v6

    goto :goto_7

    .line 117
    :cond_b
    :goto_5
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v8, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    const/4 v10, 0x4

    iput v10, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    invoke-static {v2, v5, v8, v9}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$updatePaywall(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    if-ne v2, v0, :cond_c

    goto/16 :goto_9

    :cond_c
    move-object v5, v6

    .line 67
    :goto_6
    :try_start_5
    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    move-object v6, v7

    .line 119
    :try_start_6
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2

    return-object v0

    :catch_0
    move-object v5, v6

    :catch_1
    move-object v6, v7

    .line 122
    :catch_2
    iget-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getActiveTasks$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Deferred;

    :cond_d
    move-object v2, v5

    move-object v9, v6

    .line 129
    iget-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v7, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-boolean v8, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$isPreloading:Z

    .line 435
    iput-object v9, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$4:Ljava/lang/Object;

    iput-boolean v8, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->Z$0:Z

    const/4 v5, 0x5

    iput v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    .line 436
    new-instance v14, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v13}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v14, v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 442
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 443
    move-object v11, v14

    check-cast v11, Lkotlinx/coroutines/CancellableContinuation;

    .line 130
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v10

    .line 131
    invoke-static {v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getActiveTasks$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v3, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$1;

    invoke-direct {v3, v6, v9, v10}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$1;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v3}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 140
    invoke-static {v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getIoScope$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/misc/IOScope;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1$1$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLjava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function2;

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 444
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 435
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_e

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_e
    if-ne v3, v0, :cond_f

    goto :goto_9

    :cond_f
    move-object v5, v2

    .line 128
    :goto_8
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 165
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    if-eqz v2, :cond_13

    .line 167
    iget-boolean v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$isPreloading:Z

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->activePaywallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 168
    :cond_10
    iget-object v3, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v5, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$3:Ljava/lang/Object;

    iput-object v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$2$1;->label:I

    invoke-static {v3, v2, v5, v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$updatePaywall(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_11

    :goto_9
    return-object v0

    :cond_11
    :goto_a
    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall;

    :cond_12
    return-object v2

    .line 165
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Paywall should not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
