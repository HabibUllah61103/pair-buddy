.class final Lcom/superwall/sdk/dependencies/DependencyContainer$37;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DependencyContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/dependencies/DependencyContainer;-><init>(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDependencyContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DependencyContainer.kt\ncom/superwall/sdk/dependencies/DependencyContainer$37\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1285:1\n774#2:1286\n865#2,2:1287\n1557#2:1289\n1628#2,3:1290\n*S KotlinDebug\n*F\n+ 1 DependencyContainer.kt\ncom/superwall/sdk/dependencies/DependencyContainer$37\n*L\n656#1:1286\n656#1:1287,2\n658#1:1289\n658#1:1290,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "key",
        "",
        "trialEndDate",
        "",
        "id"
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
    c = "com.superwall.sdk.dependencies.DependencyContainer$37"
    f = "DependencyContainer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/DependencyContainer;",
            "Lcom/superwall/sdk/misc/ActivityProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/dependencies/DependencyContainer$37;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    iput-object p2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->$activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;

    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    iget-object v2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->$activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    invoke-direct {v0, v1, v2, p4}, Lcom/superwall/sdk/dependencies/DependencyContainer$37;-><init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->L$2:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 632
    iget v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->label:I

    if-nez v1, :cond_a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v3, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 635
    iget-object v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {v4}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/paywall/view/ViewStorage;

    .line 636
    sget-object v5, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v5

    .line 634
    invoke-static {v4, v5, v1}, Lcom/superwall/sdk/dependencies/ViewResolutionKt;->resolvePaywallViewForKey(Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 640
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 641
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 642
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v10, 0x18

    const/4 v11, 0x0

    .line 640
    const-string v7, "No active paywall to use - did the app close?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 645
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 648
    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object v4

    invoke-interface {v4}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v4

    new-instance v5, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionComplete;

    invoke-direct {v5, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TransactionComplete;-><init>(Ljava/lang/String;)V

    check-cast v5, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    invoke-virtual {v4, v5}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    .line 653
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v4

    .line 655
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getLocalNotifications()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 1286
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 1287
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/superwall/sdk/models/paywall/LocalNotification;

    .line 657
    invoke-virtual {v8}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getType()Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    move-result-object v8

    sget-object v9, Lcom/superwall/sdk/models/paywall/LocalNotificationType$TrialStarted;->INSTANCE:Lcom/superwall/sdk/models/paywall/LocalNotificationType$TrialStarted;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1287
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1288
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 1286
    check-cast v6, Ljava/lang/Iterable;

    .line 1289
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 1290
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1291
    move-object v8, v7

    check-cast v8, Lcom/superwall/sdk/models/paywall/LocalNotification;

    .line 659
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getType()Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/superwall/sdk/models/paywall/LocalNotificationType;->getRaw()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v8 .. v17}, Lcom/superwall/sdk/models/paywall/LocalNotification;->copy$default(Lcom/superwall/sdk/models/paywall/LocalNotification;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/LocalNotification;

    move-result-object v7

    .line 1291
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1292
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 662
    move-object v4, v5

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 666
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getEncapsulatingActivity()Ljava/lang/ref/WeakReference;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-nez v4, :cond_6

    .line 667
    :cond_4
    iget-object v4, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->$activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/superwall/sdk/misc/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v6

    .line 665
    :cond_6
    :goto_2
    instance-of v7, v4, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    if-eqz v7, :cond_7

    check-cast v4, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    goto :goto_3

    :cond_7
    move-object v4, v6

    :goto_3
    if-eqz v4, :cond_8

    .line 671
    iget-object v7, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-static {v7}, Lcom/superwall/sdk/dependencies/DependencyContainer;->access$getIoScope(Lcom/superwall/sdk/dependencies/DependencyContainer;)Lcom/superwall/sdk/misc/IOScope;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;

    iget-object v9, v0, Lcom/superwall/sdk/dependencies/DependencyContainer$37;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-direct {v7, v4, v5, v9, v6}, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Ljava/util/List;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    move-object v11, v7

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_4

    .line 678
    :cond_8
    sget-object v14, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 679
    sget-object v15, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 680
    sget-object v16, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v20, 0x18

    const/16 v21, 0x0

    .line 678
    const-string v17, "No paywall activity available to schedule fallback notifications"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 685
    :goto_4
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->getMessageHandler()Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;

    move-result-object v1

    .line 686
    new-instance v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TrialStarted;

    invoke-direct {v4, v2, v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$TrialStarted;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    check-cast v4, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    .line 685
    invoke-virtual {v1, v4}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageHandler;->handle(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;)V

    .line 692
    :cond_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 632
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
