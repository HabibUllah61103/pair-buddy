.class public final Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;
.super Lexpo/modules/interfaces/taskManager/TaskConsumer;
.source "BackgroundRemoteNotificationTaskConsumer.kt"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackgroundRemoteNotificationTaskConsumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundRemoteNotificationTaskConsumer.kt\nexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u001b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
        "Lexpo/modules/interfaces/taskManager/TaskConsumer;",
        "Lexpo/modules/interfaces/taskManager/TaskConsumerInterface;",
        "context",
        "Landroid/content/Context;",
        "taskManagerUtils",
        "Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V",
        "task",
        "Lexpo/modules/interfaces/taskManager/TaskInterface;",
        "taskType",
        "",
        "didRegister",
        "",
        "didUnregister",
        "didExecuteJob",
        "",
        "jobService",
        "Landroid/app/job/JobService;",
        "params",
        "Landroid/app/job/JobParameters;",
        "executeTask",
        "bundle",
        "Landroid/os/Bundle;",
        "Companion",
        "expo-notifications_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;

.field private static final NOTIFICATION_KEY:Ljava/lang/String; = "notification"


# instance fields
.field private task:Lexpo/modules/interfaces/taskManager/TaskInterface;


# direct methods
.method public static synthetic $r8$lambda$rojUUUqOsUyGgneIj4qRPG7EpN4(Landroid/app/job/JobService;Landroid/app/job/JobParameters;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->didExecuteJob$lambda$2(Landroid/app/job/JobService;Landroid/app/job/JobParameters;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->Companion:Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lexpo/modules/interfaces/taskManager/TaskConsumer;-><init>(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;)V

    .line 32
    sget-object p1, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {p1, p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->addBackgroundTaskConsumer(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;)V

    return-void
.end method

.method private static final didExecuteJob$lambda$2(Landroid/app/job/JobService;Landroid/app/job/JobParameters;Ljava/util/Map;)V
    .locals 0

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public didExecuteJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)Z
    .locals 6

    const-string v0, "jobService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->task:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->getTaskManagerUtils()Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;

    move-result-object v1

    invoke-interface {v1, p2}, Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;->extractDataFromJobParams(Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 50
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 52
    sget-object v5, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->Companion:Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;

    invoke-static {v5, v2}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;->access$jsonStringToBundle(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$Companion;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    new-instance v2, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer$$ExternalSyntheticLambda0;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    const/4 v3, 0x0

    invoke-interface {v0, v4, v3, v2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Job data missing \'notification\' entry"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public didRegister(Lexpo/modules/interfaces/taskManager/TaskInterface;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->task:Lexpo/modules/interfaces/taskManager/TaskInterface;

    return-void
.end method

.method public didUnregister()V
    .locals 1

    .line 42
    sget-object v0, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->removeBackgroundTaskConsumer(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;)V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->task:Lexpo/modules/interfaces/taskManager/TaskInterface;

    return-void
.end method

.method public final executeTask(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;->task:Lexpo/modules/interfaces/taskManager/TaskInterface;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executeTask called but no task is registered"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public taskType()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "remote-notification"

    return-object v0
.end method
