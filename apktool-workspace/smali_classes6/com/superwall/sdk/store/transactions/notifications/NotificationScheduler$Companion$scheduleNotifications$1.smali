.class final Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;->scheduleNotifications(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;Landroid/content/Context;Z)V
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
    value = "SMAP\nNotificationScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationScheduler.kt\ncom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Data.kt\nandroidx/work/DataKt\n+ 4 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,109:1\n1863#2:110\n1864#2:117\n31#3,5:111\n100#4:116\n*S KotlinDebug\n*F\n+ 1 NotificationScheduler.kt\ncom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1\n*L\n51#1:110\n51#1:117\n60#1:111,5\n86#1:116\n*E\n"
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
    c = "com.superwall.sdk.store.transactions.notifications.NotificationScheduler$Companion$scheduleNotifications$1"
    f = "NotificationScheduler.kt"
    i = {
        0x0
    }
    l = {
        0x37
    }
    m = "invokeSuspend"
    n = {
        "notification"
    }
    s = {
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $cancelExisting:Z

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $factory:Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

.field final synthetic $notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $workManager:Landroidx/work/WorkManager;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;ZLandroid/content/Context;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;Landroidx/work/WorkManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;Z",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;",
            "Landroidx/work/WorkManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$notifications:Ljava/util/List;

    iput-boolean p2, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$cancelExisting:Z

    iput-object p3, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$factory:Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    iput-object p5, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$workManager:Landroidx/work/WorkManager;

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

    new-instance v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;

    iget-object v1, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$notifications:Ljava/util/List;

    iget-boolean v2, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$cancelExisting:Z

    iget-object v3, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$factory:Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    iget-object v5, p0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$workManager:Landroidx/work/WorkManager;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;-><init>(Ljava/util/List;ZLandroid/content/Context;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;Landroidx/work/WorkManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->Z$0:Z

    iget-object v4, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/models/paywall/LocalNotification;

    iget-object v5, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$2:Ljava/lang/Object;

    check-cast v6, Landroidx/work/WorkManager;

    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    iget-object v8, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    iget-object v2, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$notifications:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    iget-boolean v4, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$cancelExisting:Z

    iget-object v5, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$context:Landroid/content/Context;

    iget-object v6, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$factory:Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    iget-object v7, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->$workManager:Landroidx/work/WorkManager;

    .line 110
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v5

    move-object v5, v2

    move v2, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/paywall/LocalNotification;

    if-eqz v2, :cond_2

    .line 54
    sget-object v9, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler;->Companion:Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;->cancelNotificationById(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 55
    :cond_2
    sget-object v9, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler;->Companion:Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v8, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->L$4:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->Z$0:Z

    iput v3, v0, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion$scheduleNotifications$1;->label:I

    invoke-virtual {v9, v8, v10, v0}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;->existsWithTag(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v9, 0x4

    .line 61
    new-array v10, v9, [Lkotlin/Pair;

    const-string v11, "id"

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 62
    const-string v11, "title"

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v10, v3

    .line 63
    const-string v11, "body"

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v10, v13

    .line 64
    const-string v11, "subtitle"

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getSubtitle()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v10, v13

    .line 111
    new-instance v11, Landroidx/work/Data$Builder;

    invoke-direct {v11}, Landroidx/work/Data$Builder;-><init>()V

    :goto_3
    if-ge v12, v9, :cond_5

    .line 112
    aget-object v13, v10, v12

    .line 113
    invoke-virtual {v13}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v11}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v9

    const-string v10, "dataBuilder.build()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getDelay()J

    move-result-wide v10

    .line 69
    invoke-interface {v7}, Lcom/superwall/sdk/dependencies/DeviceHelperFactory;->makeIsSandbox()Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x18

    int-to-long v12, v12

    .line 71
    div-long/2addr v10, v12

    const/16 v12, 0x3c

    int-to-long v12, v12

    div-long/2addr v10, v12

    :cond_6
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_7

    .line 75
    sget-object v13, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 76
    sget-object v14, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 77
    sget-object v15, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v19, 0x18

    const/16 v20, 0x0

    .line 75
    const-string v16, "Notification delay isn\'t greater than 0 milliseconds. Notifications will not be scheduled."

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 116
    :cond_7
    new-instance v12, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v13, Lcom/superwall/sdk/store/transactions/notifications/NotificationWorker;

    invoke-direct {v12, v13}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 87
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v10, v11, v13}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v12

    check-cast v12, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 88
    invoke-virtual {v12, v9}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v9

    check-cast v9, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 89
    const-string v12, "com.superwall.android.notifications"

    invoke-virtual {v9, v12}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v9

    check-cast v9, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 90
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v9

    check-cast v9, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 91
    invoke-virtual {v9}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v9

    check-cast v9, Landroidx/work/OneTimeWorkRequest;

    if-eqz v2, :cond_8

    .line 95
    sget-object v12, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler;->Companion:Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;->cancelNotificationById(Ljava/lang/String;Landroid/content/Context;)V

    .line 97
    :cond_8
    check-cast v9, Landroidx/work/WorkRequest;

    invoke-virtual {v6, v9}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 99
    sget-object v12, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 100
    sget-object v13, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 101
    sget-object v14, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 102
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "Scheduled notification with tag: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", delay: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x18

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 99
    invoke-static/range {v12 .. v19}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    :cond_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
