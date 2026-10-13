.class final Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallMessageHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handleRequestPermission(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3$WhenMappings;
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
    c = "com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler$handleRequestPermission$3"
    f = "PaywallMessageHandler.kt"
    i = {
        0x1,
        0x2
    }
    l = {
        0x24c,
        0x25a,
        0x264,
        0x26e
    }
    m = "invokeSuspend"
    n = {
        "status",
        "status"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $paywallIdentifier:Ljava/lang/String;

.field final synthetic $permissionName:Ljava/lang/String;

.field final synthetic $request:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Landroid/app/Activity;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$request:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$permissionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$paywallIdentifier:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$request:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$permissionName:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$paywallIdentifier:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Landroid/app/Activity;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 585
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/permissions/PermissionStatus;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 588
    :try_start_1
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->access$getUserPermissions$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lcom/superwall/sdk/permissions/UserPermissions;

    move-result-object p1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$request:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    invoke-virtual {v6}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;->getPermissionType()Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->label:I

    invoke-interface {p1, v0, v6, v7}, Lcom/superwall/sdk/permissions/UserPermissions;->requestPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto/16 :goto_5

    :cond_4
    :goto_0
    check-cast p1, Lcom/superwall/sdk/permissions/PermissionStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 590
    :goto_1
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 591
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 592
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 593
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error requesting permission: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 594
    move-object v11, p1

    check-cast v11, Ljava/lang/Throwable;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 590
    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 596
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->UNSUPPORTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    :goto_2
    move-object v0, p1

    .line 600
    sget-object p1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/permissions/PermissionStatus;->ordinal()I

    move-result v6

    aget p1, p1, v6

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 612
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->access$getTrack$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    .line 613
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission;

    .line 614
    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;->Denied:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;

    .line 615
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$permissionName:Ljava/lang/String;

    .line 616
    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$paywallIdentifier:Ljava/lang/String;

    .line 613
    invoke-direct {v4, v5, v6, v7}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->label:I

    invoke-interface {p1, v4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_5

    .line 602
    :cond_7
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->access$getTrack$p(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    .line 603
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission;

    .line 604
    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;->Granted:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;

    .line 605
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$permissionName:Ljava/lang/String;

    .line 606
    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$paywallIdentifier:Ljava/lang/String;

    .line 603
    invoke-direct {v3, v5, v6, v7}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Permission$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->label:I

    invoke-interface {p1, v3, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_5

    .line 622
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->this$0:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    .line 623
    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$request:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 624
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->$request:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;->getPermissionType()Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v4

    .line 625
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x0

    .line 622
    iput-object v6, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler$handleRequestPermission$3;->label:I

    invoke-static {p1, v3, v4, v0, v5}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->access$sendPermissionResult(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;Ljava/lang/String;Lcom/superwall/sdk/permissions/PermissionType;Lcom/superwall/sdk/permissions/PermissionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_5
    return-object v1

    .line 627
    :cond_9
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
