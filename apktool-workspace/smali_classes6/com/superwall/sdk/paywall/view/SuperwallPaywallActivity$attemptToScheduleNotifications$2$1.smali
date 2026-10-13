.class public final Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;
.super Ljava/lang/Object;
.source "SuperwallPaywallActivity.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->attemptToScheduleNotifications(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1",
        "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;",
        "onPermissionResult",
        "",
        "granted",
        "",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cancelExisting:Z

.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;",
            "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$notifications:Ljava/util/List;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$factory:Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    iput-boolean p4, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$cancelExisting:Z

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 863
    sget-object p1, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler;->Companion:Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;

    .line 864
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$notifications:Ljava/util/List;

    .line 865
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$factory:Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    .line 866
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    check-cast v2, Landroid/content/Context;

    .line 867
    iget-boolean v3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$cancelExisting:Z

    .line 863
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/superwall/sdk/store/transactions/notifications/NotificationScheduler$Companion;->scheduleNotifications(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;Landroid/content/Context;Z)V

    .line 870
    :cond_0
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
