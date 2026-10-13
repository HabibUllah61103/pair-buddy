.class public final Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SuperwallPaywallActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;,
        Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallPaywallActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallPaywallActivity.kt\ncom/superwall/sdk/paywall/view/SuperwallPaywallActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,956:1\n310#2:957\n326#2,4:958\n311#2:962\n65#2,4:963\n37#2:967\n53#2:968\n72#2:969\n326#2,4:990\n135#3,10:970\n135#3,10:980\n*S KotlinDebug\n*F\n+ 1 SuperwallPaywallActivity.kt\ncom/superwall/sdk/paywall/view/SuperwallPaywallActivity\n*L\n590#1:957\n590#1:958,4\n590#1:962\n607#1:963,4\n607#1:967\n607#1:968\n607#1:969\n434#1:990,4\n785#1:970,10\n812#1:980,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 R2\u00020\u0001:\u0002RSB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00122\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0012H\u0002J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0012H\u0002J,\u0010 \u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\t2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020#H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J.\u0010)\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010*\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020#H\u0002J\u0018\u0010-\u001a\u00020\r2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010.\u001a\u00020\rH\u0014J\u0008\u0010/\u001a\u00020\rH\u0002J\u0008\u00100\u001a\u00020\rH\u0002J\u0008\u00101\u001a\u00020\rH\u0002J\u0008\u00102\u001a\u00020\rH\u0014J\u0008\u00103\u001a\u00020\rH\u0014J\u0008\u00104\u001a\u00020\rH\u0014J\u0010\u00105\u001a\u00020\r2\u0006\u00106\u001a\u00020\u0015H\u0014J\u0008\u00107\u001a\u00020\rH\u0014J\u0018\u00108\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u00020\rH\u0016J.\u0010<\u001a\u00020\r2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020?0>2\u0006\u0010@\u001a\u00020A2\u0008\u0008\u0002\u0010B\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010CJ\u0008\u0010D\u001a\u00020\rH\u0002J\u0018\u0010E\u001a\u00020\r2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u0007H\u0002J\u0010\u0010I\u001a\u00020\t2\u0006\u0010F\u001a\u00020GH\u0002J+\u0010J\u001a\u00020\r2\u0006\u0010K\u001a\u00020L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020:0N2\u0006\u0010O\u001a\u00020PH\u0016\u00a2\u0006\u0002\u0010QR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "contentView",
        "Landroid/view/View;",
        "notificationPermissionCallback",
        "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;",
        "isBottomSheetView",
        "",
        "()Z",
        "isPopupView",
        "setContentView",
        "",
        "view",
        "mainScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "caller",
        "Landroid/app/ComponentCaller;",
        "setupActivityWithView",
        "presentationStyle",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "applyNavigationBarStyle",
        "applyFullscreenEdgeToEdge",
        "setupBottomSheetLayout",
        "isModal",
        "height",
        "",
        "cornerRadius",
        "roundedBackground",
        "Landroid/graphics/drawable/GradientDrawable;",
        "radius",
        "",
        "setupPopupLayout",
        "width",
        "bottomSheetCallback",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "initBottomSheetBehavior",
        "onStart",
        "setTransparentBackground",
        "hideBottomSheetAndFinish",
        "hidePopupAndFinish",
        "onResume",
        "onPause",
        "onStop",
        "onSaveInstanceState",
        "outState",
        "onDestroy",
        "restorePaywallViewAfterCleanup",
        "key",
        "",
        "finish",
        "attemptToScheduleNotifications",
        "notifications",
        "",
        "Lcom/superwall/sdk/models/paywall/LocalNotification;",
        "factory",
        "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;",
        "cancelExisting",
        "(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createNotificationChannel",
        "checkAndRequestNotificationPermissions",
        "context",
        "Landroid/content/Context;",
        "callback",
        "areNotificationsEnabled",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "Companion",
        "NotificationPermissionCallback",
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


# static fields
.field private static final ACTIVE_PAYWALL_TAG:Ljava/lang/String; = "active_paywall"

.field public static final Companion:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;

.field private static final DEFAULT_DELAY:J = 0x12cL

.field private static final IS_LIGHT_BACKGROUND_KEY:Ljava/lang/String; = "isLightBackgroundKey"

.field private static final NOTIFICATION_CHANNEL_DESCRIPTION:Ljava/lang/String; = "Notifications sent when a free trial is about to end."

.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "com.superwall.android.notifications"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Trial Reminder Notifications"

.field private static final PRESENTATION_STYLE_KEY:Ljava/lang/String; = "presentationStyleKey"

.field private static final REQUEST_CODE_NOTIFICATION_PERMISSION:I = 0x3e9

.field private static final VIEW_KEY:Ljava/lang/String; = "viewKey"


# instance fields
.field private bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private contentView:Landroid/view/View;

.field private final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field private notificationPermissionCallback:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;


# direct methods
.method public static synthetic $r8$lambda$7GE6jGSb0956XtN-KpEVMtJhnfs(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupBottomSheetLayout$lambda$7(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A84R39cxXM2huiwWb5RGY6drZmk(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->onDestroy$lambda$26(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QrycvDgIHneoPhNwTOHV43siwtg(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupPopupLayout$lambda$10(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R47a20VjbBsUUhxJ3ENob7ysJoY(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge$lambda$6(Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SWG5zNx69To-qhhjYI7W5l-irVg(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->onCreate$lambda$1(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WDJxfs8ucUFk1tq6FU3XCldlBNk(ILcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->hideBottomSheetAndFinish$lambda$21$lambda$20(ILcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YgNZzj_Eoih4Jwo5ubG57laIlpQ(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupBottomSheetLayout$lambda$8(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_CXe4xL7-ALTprf781F7J7KmSqw(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->onResume$lambda$22(Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cMN5xhQGDXtQN_aSuoqcrFvqV2g(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->restorePaywallViewAfterCleanup$lambda$28(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dDps7ZcxaajJJJGqBoJv02minsg(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge$lambda$6$lambda$5(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$do44oXhffZ4cRNFqrCAc0SowZ7o(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->hideBottomSheetAndFinish$lambda$19(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ofauAnkFP4sN_0AVq9cp5O5vH5o(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupPopupLayout$lambda$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oy8WEnmJVSAeekOjS3QoCrQi3v8(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setTransparentBackground$lambda$17$lambda$16(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->Companion:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 156
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$hideBottomSheetAndFinish(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->hideBottomSheetAndFinish()V

    return-void
.end method

.method public static final synthetic access$hidePopupAndFinish(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->hidePopupAndFinish()V

    return-void
.end method

.method public static final synthetic access$paywallView(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p0

    return-object p0
.end method

.method private final applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 5

    .line 417
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getBackgroundColor()I

    move-result v0

    .line 418
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 420
    invoke-static {v0}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isDarkColor(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 421
    sget-object v2, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v2, v0}, Landroidx/activity/SystemBarStyle$Companion;->dark(I)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_0
    sget-object v2, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    .line 425
    invoke-static {v0}, Lcom/superwall/sdk/misc/Color_HelpersKt;->readableOverlayColor(I)I

    move-result v4

    .line 423
    invoke-virtual {v2, v0, v4}, Landroidx/activity/SystemBarStyle$Companion;->light(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 418
    invoke-static {v1, v2, v0, v3, v2}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 431
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object p1

    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->onView(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final applyFullscreenEdgeToEdge$lambda$6(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$onView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 440
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final applyFullscreenEdgeToEdge$lambda$6$lambda$5(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 991
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 435
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 992
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    .line 990
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final applyNavigationBarStyle(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 4

    .line 397
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getBackgroundColor()I

    move-result p1

    .line 398
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 400
    invoke-static {p1}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isDarkColor(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 401
    sget-object v1, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v1, p1}, Landroidx/activity/SystemBarStyle$Companion;->dark(I)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    goto :goto_0

    .line 403
    :cond_0
    sget-object v1, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    .line 405
    invoke-static {p1}, Lcom/superwall/sdk/misc/Color_HelpersKt;->readableOverlayColor(I)I

    move-result v3

    .line 403
    invoke-virtual {v1, p1, v3}, Landroidx/activity/SystemBarStyle$Companion;->light(II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    .line 398
    invoke-static {v0, v1, p1, v2, v1}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    return-void
.end method

.method private final areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 931
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 933
    const-string v1, "com.superwall.android.notifications"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 938
    :cond_0
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    return p1
.end method

.method public static synthetic attemptToScheduleNotifications$default(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 847
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->attemptToScheduleNotifications(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkAndRequestNotificationPermissions(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;)V
    .locals 4

    .line 900
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 901
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 907
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    .line 906
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 914
    new-array p2, v2, [Ljava/lang/String;

    aput-object v0, p2, v3

    const/16 v0, 0x3e9

    .line 912
    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 919
    :cond_0
    invoke-interface {p2, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;->onPermissionResult(Z)V

    return-void

    .line 922
    :cond_1
    invoke-interface {p2, v2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;->onPermissionResult(Z)V

    return-void

    .line 925
    :cond_2
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;->onPermissionResult(Z)V

    return-void
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 881
    new-instance v0, Landroid/app/NotificationChannel;

    .line 883
    const-string v1, "Trial Reminder Notifications"

    check-cast v1, Ljava/lang/CharSequence;

    .line 881
    const-string v2, "com.superwall.android.notifications"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 886
    const-string v1, "Notifications sent when a free trial is about to end."

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 888
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 891
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    .line 892
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final hideBottomSheetAndFinish()V
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 699
    instance-of v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_2

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 700
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    const-string v4, "from(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v4, :cond_1

    .line 704
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 705
    iput-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 709
    :cond_1
    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/16 v0, 0xc8

    .line 714
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 715
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 718
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    check-cast v2, Landroid/animation/TypeEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 719
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 720
    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda6;-><init>(ILcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 727
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final hideBottomSheetAndFinish$lambda$19(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x5

    .line 710
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method private static final hideBottomSheetAndFinish$lambda$21$lambda$20(ILcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "animator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p0

    int-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    .line 723
    invoke-super {p1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final hidePopupAndFinish()V
    .locals 0

    .line 732
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private final initBottomSheetBehavior(ZD)V
    .locals 7

    .line 582
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v2, "from(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_0

    const/16 v2, 0x64

    int-to-double v2, v2

    div-double/2addr p2, v2

    :cond_0
    double-to-float p2, p2

    const p3, 0x3c23d70a    # 0.01f

    const v2, 0x3f7d70a4    # 0.99f

    .line 587
    invoke-static {p2, p3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    goto :goto_0

    .line 590
    :cond_1
    move-object p2, v0

    check-cast p2, Landroid/view/View;

    .line 958
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 591
    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p3

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 592
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 591
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 960
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 p2, 0x1

    .line 595
    invoke-virtual {v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    const/4 p2, 0x5

    .line 597
    invoke-virtual {v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    if-nez p1, :cond_2

    const/4 p2, 0x6

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    .line 607
    :goto_1
    move-object p3, v0

    check-cast p3, Landroid/view/View;

    .line 963
    invoke-virtual {p3}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_3

    .line 608
    new-instance p3, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$2$1;

    invoke-direct {p3, v1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$2$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 967
    :cond_3
    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$$inlined$doOnLayout$1;

    invoke-direct {v2, v0, v1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$$inlined$doOnLayout$1;-><init>(Landroid/view/ViewGroup;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p3, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 612
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 613
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    if-eqz p1, :cond_4

    .line 615
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 616
    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$3;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$3;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;

    .line 615
    invoke-interface {p3, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->setOnScrollChangeListener(Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI$OnScrollChangeListener;)V

    .line 629
    :cond_4
    new-instance p3, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;

    invoke-direct {p3, p1, p2, v1, p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;-><init>(ZLkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V

    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 628
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 664
    invoke-virtual {v1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-void

    .line 958
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isBottomSheetView()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isPopupView()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final onCreate$lambda$1(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/content/res/Resources;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p1, "isLightBackgroundKey"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final onDestroy$lambda$26(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 9

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 795
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 796
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Error cleaning up PaywallView: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 794
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 799
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onResume$lambda$22(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$onView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 744
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v1, "active_paywall"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final restorePaywallViewAfterCleanup(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V
    .locals 9

    .line 813
    :try_start_0
    sget-object v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->Companion:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;->access$prepareViewForDisplay(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V

    .line 814
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 815
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 816
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 817
    const-string v4, "Successfully restored PaywallView child views after cleanup"

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 814
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 819
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 981
    new-instance p2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 983
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 984
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 985
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 988
    :cond_0
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    .line 989
    :goto_0
    new-instance p1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda7;-><init>()V

    .line 819
    invoke-static {p2, p1}, Lcom/superwall/sdk/misc/EitherKt;->onError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method private static final restorePaywallViewAfterCleanup$lambda$28(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 9

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 821
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 822
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 823
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to restore PaywallView after cleanup: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 820
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 825
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final roundedBackground(F)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 480
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v2, 0x8

    .line 491
    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 v1, 0x1

    aput p1, v2, v1

    const/4 v1, 0x2

    aput p1, v2, v1

    const/4 v1, 0x3

    aput p1, v2, v1

    const/4 v1, 0x4

    aput p1, v2, v1

    const/4 v1, 0x5

    aput p1, v2, v1

    const/4 v1, 0x6

    aput p1, v2, v1

    const/4 v1, 0x7

    aput p1, v2, v1

    .line 482
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method private final setTransparentBackground()V
    .locals 3

    .line 682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 683
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setTranslucent(Z)Z

    .line 684
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/16 v1, 0xc8

    .line 685
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 686
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    check-cast v2, Landroid/animation/TypeEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 687
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 688
    new-instance v1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda4;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1030010

    .line 693
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setTheme(I)V

    return-void
.end method

.method private static final setTransparentBackground$lambda$17$lambda$16(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupActivityWithView(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    .line 268
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 269
    move-object v9, v0

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    move-object v2, v0

    check-cast v2, Landroidx/activity/result/ActivityResultRegistryOwner;

    invoke-virtual {v1, v9, v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->registerIntent$superwall_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/ActivityResultRegistryOwner;)V

    .line 272
    instance-of v10, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_1

    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v12

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v11

    .line 273
    :goto_1
    instance-of v13, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;

    .line 275
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    :cond_3
    const-string v3, "active_paywall"

    invoke-virtual {v1, v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->setTag(Ljava/lang/Object;)V

    .line 277
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->setEncapsulatingActivity(Ljava/lang/ref/WeakReference;)V

    const/16 v14, 0x1e

    if-eqz v2, :cond_6

    .line 279
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v14, :cond_6

    .line 282
    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    const-wide/16 v3, 0x0

    if-eqz v10, :cond_4

    .line 283
    move-object v5, v8

    check-cast v5, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->getHeight()D

    move-result-wide v5

    goto :goto_3

    :cond_4
    move-wide v5, v3

    :goto_3
    if-eqz v10, :cond_5

    .line 284
    move-object v3, v8

    check-cast v3, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->getCornerRadius()D

    move-result-wide v3

    :cond_5
    move-wide v15, v5

    move-wide v5, v3

    move-wide v3, v15

    .line 280
    invoke-direct/range {v0 .. v6}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupBottomSheetLayout(Lcom/superwall/sdk/paywall/view/PaywallView;ZDD)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_4

    :cond_6
    if-eqz v13, :cond_7

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v14, :cond_7

    .line 289
    move-object v0, v8

    check-cast v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;->getHeight()D

    move-result-wide v2

    .line 290
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;->getWidth()D

    move-result-wide v4

    .line 291
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;->getCornerRadius()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 287
    invoke-direct/range {v0 .. v7}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupPopupLayout(Lcom/superwall/sdk/paywall/view/PaywallView;DDD)V

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setContentView(Landroid/view/View;)V

    .line 296
    :goto_4
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    .line 298
    new-instance v3, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;

    invoke-direct {v3, v0, v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lcom/superwall/sdk/paywall/view/PaywallView;)V

    check-cast v3, Landroidx/activity/OnBackPressedCallback;

    .line 296
    invoke-virtual {v2, v9, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 318
    :try_start_0
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :catchall_0
    :cond_8
    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    const/16 v3, 0x22

    if-eqz v2, :cond_a

    .line 324
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_9

    .line 327
    sget v2, Lcom/superwall/sdk/R$anim;->slide_in_right:I

    .line 328
    sget v3, Lcom/superwall/sdk/R$anim;->slide_out_left:I

    .line 325
    invoke-virtual {v0, v12, v2, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overrideActivityTransition(III)V

    goto :goto_5

    .line 332
    :cond_9
    sget v2, Lcom/superwall/sdk/R$anim;->slide_in_right:I

    .line 333
    sget v3, Lcom/superwall/sdk/R$anim;->slide_out_left:I

    .line 331
    invoke-virtual {v0, v2, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overridePendingTransition(II)V

    .line 336
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 339
    :cond_a
    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

    if-eqz v2, :cond_b

    .line 340
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 343
    :cond_b
    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

    if-eqz v2, :cond_d

    .line 344
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_c

    .line 345
    invoke-virtual {v0, v12, v12, v12}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overrideActivityTransition(III)V

    .line 346
    invoke-virtual {v0, v11, v12, v12}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overrideActivityTransition(III)V

    goto :goto_6

    .line 348
    :cond_c
    invoke-virtual {v0, v12, v12}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overridePendingTransition(II)V

    .line 350
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 353
    :cond_d
    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    if-nez v2, :cond_15

    if-nez v8, :cond_e

    goto :goto_9

    .line 359
    :cond_e
    instance-of v2, v8, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    if-nez v2, :cond_13

    if-eqz v10, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v13, :cond_12

    .line 374
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_10

    .line 375
    invoke-virtual {v0, v12, v12, v12}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overrideActivityTransition(III)V

    .line 376
    invoke-virtual {v0, v11, v12, v12}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overrideActivityTransition(III)V

    goto :goto_7

    .line 378
    :cond_10
    invoke-virtual {v0, v12, v12}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->overridePendingTransition(II)V

    .line 380
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v14, :cond_11

    .line 382
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 386
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyNavigationBarStyle(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 322
    :cond_12
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 362
    :cond_13
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v14, :cond_14

    .line 364
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 368
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyNavigationBarStyle(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    goto :goto_a

    .line 356
    :cond_15
    :goto_9
    invoke-direct/range {p0 .. p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->applyFullscreenEdgeToEdge(Lcom/superwall/sdk/paywall/view/PaywallView;)V

    :goto_a
    return-void
.end method

.method private final setupBottomSheetLayout(Lcom/superwall/sdk/paywall/view/PaywallView;ZDD)V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/superwall/sdk/R$layout;->activity_bottom_sheet:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setContentView(Landroid/view/View;)V

    .line 452
    invoke-direct {p0, p2, p3, p4}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->initBottomSheetBehavior(ZD)V

    .line 454
    sget p2, Lcom/superwall/sdk/R$id;->container:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 455
    new-instance p3, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda9;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 462
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    double-to-float p1, p5

    .line 464
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p3

    .line 467
    invoke-direct {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->roundedBackground(F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    .line 469
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 472
    check-cast p2, Landroid/view/View;

    new-instance p1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic setupBottomSheetLayout$default(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lcom/superwall/sdk/paywall/view/PaywallView;ZDDILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p8, p7, 0x4

    const-wide/16 v0, 0x0

    if-eqz p8, :cond_0

    move-wide p3, v0

    :cond_0
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_1

    move-wide p5, v0

    .line 443
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupBottomSheetLayout(Lcom/superwall/sdk/paywall/view/PaywallView;ZDD)V

    return-void
.end method

.method private static final setupBottomSheetLayout$lambda$7(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Landroid/view/View;)V
    .locals 6

    .line 456
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    new-instance p0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 458
    sget-object p0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    move-object v2, p0

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 456
    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$superwall_release$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->finish()V

    return-void
.end method

.method private static final setupBottomSheetLayout$lambda$8(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 475
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private final setupPopupLayout(Lcom/superwall/sdk/paywall/view/PaywallView;DDD)V
    .locals 6

    .line 502
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/superwall/sdk/R$layout;->activity_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 503
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setContentView(Landroid/view/View;)V

    .line 506
    new-instance v1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 513
    sget v1, Lcom/superwall/sdk/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 518
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    .line 519
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 520
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v3, 0x2

    .line 521
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 522
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    double-to-float p4, p4

    const/high16 p5, 0x42c80000    # 100.0f

    div-float/2addr p4, p5

    const v4, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 523
    invoke-static {p4, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    iput p4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    double-to-float p2, p2

    div-float/2addr p2, p5

    .line 524
    invoke-static {p2, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 525
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    .line 527
    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    double-to-float p2, p6

    .line 534
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p3

    const/4 p3, 0x1

    .line 539
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 541
    new-instance p4, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupPopupLayout$2;

    invoke-direct {p4, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupPopupLayout$2;-><init>(F)V

    check-cast p4, Landroid/view/ViewOutlineProvider;

    .line 540
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 550
    new-instance p2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 552
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x0

    .line 555
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 556
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 557
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 559
    new-array p1, v3, [F

    fill-array-data p1, :array_0

    const-string p2, "scaleX"

    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 560
    new-array p2, v3, [F

    fill-array-data p2, :array_1

    const-string p4, "scaleY"

    invoke-static {v0, p4, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 561
    new-array p4, v3, [F

    fill-array-data p4, :array_2

    const-string p5, "alpha"

    invoke-static {v0, p5, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 564
    new-instance p5, Landroid/animation/AnimatorSet;

    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p6, 0x3

    .line 565
    new-array p6, p6, [Landroid/animation/Animator;

    aput-object p1, p6, v2

    aput-object p2, p6, p3

    aput-object p4, p6, v3

    invoke-virtual {p5, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 566
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getPresentation()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->getDelay()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x12c

    .line 566
    :goto_0
    invoke-virtual {p5, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 571
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const p2, 0x3f8ccccd    # 1.1f

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    check-cast p1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p5, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    invoke-virtual {p5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic setupPopupLayout$default(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lcom/superwall/sdk/paywall/view/PaywallView;DDDILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p9, p8, 0x2

    const-wide/16 v0, 0x0

    if-eqz p9, :cond_0

    move-wide p2, v0

    :cond_0
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_1

    move-wide p4, v0

    :cond_1
    and-int/lit8 p8, p8, 0x8

    if-eqz p8, :cond_2

    move-wide p6, v0

    .line 495
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupPopupLayout(Lcom/superwall/sdk/paywall/view/PaywallView;DDD)V

    return-void
.end method

.method private static final setupPopupLayout$lambda$10(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 509
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private static final setupPopupLayout$lambda$11(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final attemptToScheduleNotifications(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 851
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 852
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v7, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    move-object v5, p0

    goto :goto_0

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->createNotificationChannel()V

    .line 860
    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$attemptToScheduleNotifications$2$1;-><init>(Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;ZLkotlin/coroutines/Continuation;)V

    check-cast v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;

    .line 859
    iput-object v2, v5, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->notificationPermissionCallback:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;

    .line 874
    move-object p1, v5

    check-cast p1, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->checkAndRequestNotificationPermissions(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;)V

    .line 851
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public finish()V
    .locals 8

    .line 834
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->isBottomSheetView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 835
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$finish$1;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$finish$1;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 838
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->isPopupView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$finish$2;

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$finish$2;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 843
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 161
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 163
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "presentationStyleKey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 164
    sget-object v5, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

    sget-object v6, Lcom/superwall/sdk/network/JsonFactory;->Companion:Lcom/superwall/sdk/network/JsonFactory$Companion;

    invoke-virtual {v6}, Lcom/superwall/sdk/network/JsonFactory$Companion;->getJSON_POLYMORPHIC()Lkotlinx/serialization/json/Json;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;->fromIntentString(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 167
    :goto_0
    move-object v5, v0

    check-cast v5, Landroidx/activity/ComponentActivity;

    .line 169
    sget-object v6, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    new-instance v7, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda8;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7}, Landroidx/activity/SystemBarStyle$Companion;->auto(IILkotlin/jvm/functions/Function1;)Landroidx/activity/SystemBarStyle;

    move-result-object v6

    const/4 v7, 0x2

    .line 167
    invoke-static {v5, v6, v4, v7, v4}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->requestWindowFeature(I)Z

    .line 178
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const-string v2, "viewKey"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_3

    .line 182
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 183
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 184
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 182
    const-string v9, "No view key found in savedInstanceState or intent, finishing activity"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 187
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->finish()V

    return-void

    .line 193
    :cond_3
    :try_start_0
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    invoke-virtual {v2, v5}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/superwall/sdk/paywall/view/PaywallView;

    if-eqz v7, :cond_4

    move-object v4, v6

    check-cast v4, Lcom/superwall/sdk/paywall/view/PaywallView;

    :cond_4
    if-nez v4, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    .line 205
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 206
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 207
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaywallView not found for key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Activity may have been recreated after cleanup."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 205
    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 210
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->finish()V

    return-void

    :cond_5
    if-eqz v1, :cond_8

    .line 213
    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-nez v1, :cond_8

    .line 215
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 216
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 217
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 215
    const-string v9, "Activity restored but PaywallView cleared - recreating with available view"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 222
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 225
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 226
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 227
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 228
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 226
    const-string v9, "PaywallView was cleaned up, restoring child views"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 232
    invoke-direct {v0, v1, v5}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->restorePaywallViewAfterCleanup(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V

    .line 236
    :cond_6
    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v5, v4}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->storeView(Ljava/lang/String;Landroid/view/View;)V

    .line 238
    invoke-direct {v0, v1, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupActivityWithView(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V

    return-void

    .line 241
    :cond_7
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 242
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 243
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 241
    const-string v9, "No PaywallView available in Superwall instance for recreation"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 246
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->finish()V

    return-void

    .line 251
    :cond_8
    invoke-direct {v0, v4, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupActivityWithView(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V

    return-void

    .line 195
    :catch_0
    sget-object v14, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 196
    sget-object v15, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 197
    sget-object v16, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v20, 0x18

    const/16 v21, 0x0

    .line 195
    const-string v17, "Cannot access viewStore or create view - has Superwall been initialised?"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 775
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 777
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 778
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_1

    .line 779
    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v3, "from(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v3, :cond_1

    .line 781
    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "viewKey"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 788
    :try_start_0
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v3

    .line 789
    invoke-virtual {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v3

    .line 790
    invoke-virtual {v3, v1}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 788
    instance-of v3, v1, Lcom/superwall/sdk/paywall/view/PaywallView;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallView;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 791
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->cleanup()V

    .line 793
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 971
    new-instance v3, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 973
    invoke-static {v1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 974
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 975
    sget-object v3, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 978
    :cond_4
    new-instance v3, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 979
    :goto_2
    new-instance v1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda3;-><init>()V

    .line 793
    invoke-static {v3, v1}, Lcom/superwall/sdk/misc/EitherKt;->onError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    .line 800
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->cleanup()V

    :cond_5
    if-eqz v0, :cond_6

    .line 801
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 803
    :cond_6
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    instance-of v1, v0, Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;->setEncapsulatingActivity(Ljava/lang/ref/WeakReference;)V

    .line 805
    :cond_8
    iput-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 259
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2, p1}, Lcom/superwall/sdk/Superwall$Companion;->handleDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 7

    .line 748
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 750
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$onPause$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$onPause$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 946
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_2

    .line 947
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_2

    .line 949
    array-length p1, p3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 951
    :goto_1
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->notificationPermissionCallback:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$NotificationPermissionCallback;->onPermissionResult(Z)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 736
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 737
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->isBottomSheetView()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->isPopupView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setTransparentBackground()V

    .line 741
    :cond_2
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->onViewCreated()V

    .line 742
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->onView(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 769
    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "viewKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 671
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 672
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->isBrowserViewPresented()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetBrowserPresented;-><init>(Z)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 678
    :cond_1
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->beforeViewCreated()V

    return-void
.end method

.method protected onStop()V
    .locals 7

    .line 757
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 759
    invoke-direct {p0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->paywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$onStop$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$onStop$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 153
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->contentView:Landroid/view/View;

    return-void
.end method
