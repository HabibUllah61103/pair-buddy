.class final Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Superwall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/Superwall$eventDidOccur$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/Superwall$eventDidOccur$2$2$WhenMappings;
    }
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
    c = "com.superwall.sdk.Superwall$eventDidOccur$2$2"
    f = "Superwall.kt"
    i = {}
    l = {
        0x5a4,
        0x5a8,
        0x5ae,
        0x5b5,
        0x5bb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

.field final synthetic $paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
            "Lcom/superwall/sdk/Superwall;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iput-object p2, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    iput-object p3, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

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

    new-instance p1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;

    iget-object v0, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    iget-object v1, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    iget-object v2, p0, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1439
    iget v3, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1441
    :try_start_2
    iget-object v3, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;->getType()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;

    move-result-object v3

    sget-object v10, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;->ordinal()I

    move-result v3

    aget v3, v10, v3

    if-ne v3, v9, :cond_b

    .line 1444
    iget-object v0, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReviewManager$superwall_release()Lcom/superwall/sdk/review/ReviewManager;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v9, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->label:I

    invoke-interface {v0, v3}, Lcom/superwall/sdk/review/ReviewManager;->requestReviewFlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    goto/16 :goto_4

    .line 1439
    :cond_6
    :goto_0
    check-cast v0, Lcom/google/android/play/core/review/ReviewInfo;

    .line 1446
    iget-object v3, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_f

    .line 1448
    iget-object v3, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReviewManager$superwall_release()Lcom/superwall/sdk/review/ReviewManager;

    move-result-object v3

    .line 1450
    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    .line 1448
    iput v8, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->label:I

    invoke-interface {v3, v4, v0, v10}, Lcom/superwall/sdk/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    goto :goto_4

    .line 1454
    :cond_8
    :goto_1
    iget-object v0, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v7, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->label:I

    invoke-virtual {v0, v3}, Lcom/superwall/sdk/network/device/DeviceHelper;->reviewRequestsTotal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    goto :goto_4

    :cond_9
    :goto_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1455
    iget-object v3, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v3

    .line 1456
    sget-object v4, Lcom/superwall/sdk/storage/ReviewData;->INSTANCE:Lcom/superwall/sdk/storage/ReviewData;

    check-cast v4, Lcom/superwall/sdk/storage/Storable;

    .line 1457
    new-instance v10, Lcom/superwall/sdk/storage/ReviewCount;

    add-int/lit8 v11, v0, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/superwall/sdk/storage/ReviewCount;-><init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1455
    invoke-virtual {v3, v4, v10}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 1461
    iget-object v0, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    .line 1462
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ReviewRequested;

    .line 1464
    iget-object v4, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallEvent:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;

    check-cast v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview;->getType()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent$RequestReview$Type;->getRawValue()Ljava/lang/String;

    move-result-object v4

    .line 1462
    invoke-direct {v3, v11, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ReviewRequested;-><init>(ILjava/lang/String;)V

    check-cast v3, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 1461
    iput v6, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->label:I

    invoke-static {v0, v3, v4}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_a

    goto :goto_4

    .line 1467
    :cond_a
    :goto_3
    iget-object v0, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v5, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->label:I

    invoke-virtual {v0, v3}, Lcom/superwall/sdk/config/ConfigManager;->recheckPreloadIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    :goto_4
    return-object v2

    .line 1472
    :cond_b
    iget-object v2, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/network/device/DeviceHelper;->getUrlScheme()Ljava/lang/String;

    move-result-object v2

    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    iget-object v2, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-static {v2}, Lcom/superwall/sdk/Superwall;->access$getActivityProvider$p(Lcom/superwall/sdk/Superwall;)Lcom/superwall/sdk/misc/ActivityProvider;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    move-object v4, v2

    goto :goto_6

    .line 1477
    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/superwall/sdk/Superwall$eventDidOccur$2$2;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/app/Activity;

    :cond_e
    :goto_6
    if-eqz v4, :cond_f

    .line 1479
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1478
    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 1484
    :goto_7
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1485
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 1486
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 1488
    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 1484
    const-string v5, "Failed to request review"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1491
    :cond_f
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
