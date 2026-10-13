.class public final Lcom/superwall/sdk/debug/DebugView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "DebugView.kt"

# interfaces
.implements Lcom/superwall/sdk/debug/AppCompatActivityEncapsulatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/debug/DebugView$AlertOption;,
        Lcom/superwall/sdk/debug/DebugView$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugView.kt\ncom/superwall/sdk/debug/DebugView\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1021:1\n129#2,5:1022\n143#2,4:1029\n295#3,2:1027\n1557#3:1033\n1628#3,3:1034\n1611#3,9:1037\n1863#3:1046\n1864#3:1048\n1620#3:1049\n1557#3:1051\n1628#3,3:1052\n1#4:1047\n1#4:1050\n37#5,2:1055\n*S KotlinDebug\n*F\n+ 1 DebugView.kt\ncom/superwall/sdk/debug/DebugView\n*L\n536#1:1022,5\n569#1:1029,4\n555#1:1027,2\n668#1:1033\n668#1:1034,3\n747#1:1037,9\n747#1:1046\n747#1:1048\n747#1:1049\n810#1:1051\n810#1:1052,3\n747#1:1047\n810#1:1055,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0002efB?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020PJ\u000e\u0010R\u001a\u00020A2\u0006\u0010S\u001a\u00020AJ\u000e\u0010T\u001a\u00020PH\u0086@\u00a2\u0006\u0002\u0010UJ\u000e\u0010V\u001a\u00020PH\u0086@\u00a2\u0006\u0002\u0010UJ\u000e\u0010W\u001a\u00020PH\u0086@\u00a2\u0006\u0002\u0010UJ\u0008\u0010X\u001a\u00020PH\u0002J\u0008\u0010Y\u001a\u00020PH\u0002J\u0006\u0010Z\u001a\u00020PJ\u000e\u0010[\u001a\u00020PH\u0086@\u00a2\u0006\u0002\u0010UJ\u0008\u0010\\\u001a\u00020PH\u0002J\u0006\u0010]\u001a\u00020PJ*\u0010^\u001a\u00020P2\u0008\u0010_\u001a\u0004\u0018\u00010\u001a2\u0008\u0010`\u001a\u0004\u0018\u00010\u001a2\u000e\u0008\u0002\u0010a\u001a\u0008\u0012\u0004\u0012\u00020b0$J\u0010\u0010c\u001a\u00020P2\u0008\u0008\u0002\u0010d\u001a\u00020(R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\'\u001a\u00020(X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001b\u0010-\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u0008/\u00100R\u001b\u00103\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00102\u001a\u0004\u00085\u00106R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u00102\u001a\u0004\u00089\u00106R\u001b\u0010;\u001a\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u00102\u001a\u0004\u0008=\u0010>R\u000e\u0010@\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010C\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u00102\u001a\u0004\u0008D\u00106R\u000e\u0010F\u001a\u00020GX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010H\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u00102\u001a\u0004\u0008I\u00106R\u001b\u0010K\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u00102\u001a\u0004\u0008L\u0010M\u00a8\u0006g"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/DebugView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/superwall/sdk/debug/AppCompatActivityEncapsulatable;",
        "context",
        "Landroid/content/Context;",
        "storeManager",
        "Lcom/superwall/sdk/store/StoreManager;",
        "network",
        "Lcom/superwall/sdk/network/Network;",
        "paywallRequestManager",
        "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
        "paywallManager",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "debugManager",
        "Lcom/superwall/sdk/debug/DebugManager;",
        "factory",
        "Lcom/superwall/sdk/debug/DebugView$Factory;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/debug/DebugManager;Lcom/superwall/sdk/debug/DebugView$Factory;)V",
        "encapsulatingActivity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "getEncapsulatingActivity",
        "()Landroidx/appcompat/app/AppCompatActivity;",
        "setEncapsulatingActivity",
        "(Landroidx/appcompat/app/AppCompatActivity;)V",
        "paywallDatabaseId",
        "",
        "getPaywallDatabaseId$superwall_release",
        "()Ljava/lang/String;",
        "setPaywallDatabaseId$superwall_release",
        "(Ljava/lang/String;)V",
        "paywallIdentifier",
        "initialLocaleIdentifier",
        "previewViewContent",
        "Landroid/view/View;",
        "paywalls",
        "",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "paywall",
        "isActive",
        "",
        "isActive$superwall_release",
        "()Z",
        "setActive$superwall_release",
        "(Z)V",
        "logoImageView",
        "Landroid/widget/ImageView;",
        "getLogoImageView",
        "()Landroid/widget/ImageView;",
        "logoImageView$delegate",
        "Lkotlin/Lazy;",
        "exitButton",
        "Landroid/widget/LinearLayout;",
        "getExitButton",
        "()Landroid/widget/LinearLayout;",
        "exitButton$delegate",
        "consoleButton",
        "getConsoleButton",
        "consoleButton$delegate",
        "activityIndicator",
        "Landroid/widget/ProgressBar;",
        "getActivityIndicator",
        "()Landroid/widget/ProgressBar;",
        "activityIndicator$delegate",
        "primaryColor",
        "",
        "lightBackgroundColor",
        "bottomButton",
        "getBottomButton",
        "bottomButton$delegate",
        "previewTextView",
        "Landroid/widget/TextView;",
        "previewPickerButton",
        "getPreviewPickerButton",
        "previewPickerButton$delegate",
        "previewContainerView",
        "getPreviewContainerView",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "previewContainerView$delegate",
        "viewDestroyed",
        "",
        "addSubviews",
        "dpToPx",
        "dp",
        "loadPreview",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "finishLoadingPreview",
        "addPaywallPreview",
        "pressedPreview",
        "pressedExitButton",
        "pressedConsoleButton",
        "showConsole",
        "showLocalizationPicker",
        "pressedBottomButton",
        "presentAlert",
        "title",
        "message",
        "options",
        "Lcom/superwall/sdk/debug/DebugView$AlertOption;",
        "loadAndShowPaywall",
        "freeTrialAvailable",
        "Factory",
        "AlertOption",
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
.field private final activityIndicator$delegate:Lkotlin/Lazy;

.field private final bottomButton$delegate:Lkotlin/Lazy;

.field private final consoleButton$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final debugManager:Lcom/superwall/sdk/debug/DebugManager;

.field private encapsulatingActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private final exitButton$delegate:Lkotlin/Lazy;

.field private final factory:Lcom/superwall/sdk/debug/DebugView$Factory;

.field private initialLocaleIdentifier:Ljava/lang/String;

.field private isActive:Z

.field private final lightBackgroundColor:I

.field private final logoImageView$delegate:Lkotlin/Lazy;

.field private final network:Lcom/superwall/sdk/network/Network;

.field private paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field private paywallDatabaseId:Ljava/lang/String;

.field private paywallIdentifier:Ljava/lang/String;

.field private final paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

.field private final paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

.field private paywalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;"
        }
    .end annotation
.end field

.field private final previewContainerView$delegate:Lkotlin/Lazy;

.field private final previewPickerButton$delegate:Lkotlin/Lazy;

.field private previewTextView:Landroid/widget/TextView;

.field private previewViewContent:Landroid/view/View;

.field private final primaryColor:I

.field private final storeManager:Lcom/superwall/sdk/store/StoreManager;


# direct methods
.method public static synthetic $r8$lambda$-MvGIGnHBIWKd4eOwQ9zB7oRUtY(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->previewPickerButton_delegate$lambda$24$lambda$23$lambda$22(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1vBcRLrILqC9xHGK0NI3C21fRHo(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->presentAlert$lambda$47(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8b7t5pVgoOmWKR9ES7VjG8aCzjQ(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->consoleButton_delegate$lambda$9(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$POP3LH4tvNMV-7DuLqmc2Rn6oVY(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ProgressBar;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->activityIndicator_delegate$lambda$11(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Paq1Q9YIqumPnA6fhl5YQ-iomcE(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->consoleButton_delegate$lambda$9$lambda$8$lambda$7(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QOawde6WuTAvAtcV8b_AdLotLCg(Lcom/superwall/sdk/debug/DebugView;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->showLocalizationPicker$lambda$42(Lcom/superwall/sdk/debug/DebugView;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X-mdLMZjZ6yQaDzGZR-SQjugODw(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->previewPickerButton_delegate$lambda$24(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c_LdqJJ__QmxqcyNOsy5DzcU_5g(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->exitButton_delegate$lambda$5(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pNaQaVqiPfsn8bJ_l5OgihpnMcA(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ImageView;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->logoImageView_delegate$lambda$1(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pqciL0d5p42gWgL5Z0dmKEL_5LE(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->bottomButton_delegate$lambda$18$lambda$17$lambda$16(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pxKoomTowIANNRHBjnnJmQ6OXP8(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/debug/DebugView;->presentAlert$lambda$46(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q-8p8lBSeRlkjPsu3bEPbezAQxE(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->previewContainerView_delegate$lambda$27$lambda$26$lambda$25(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qrrc4MS14Y2zauwB6a6xeby0StA(Lcom/superwall/sdk/debug/DebugView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->previewContainerView_delegate$lambda$27(Lcom/superwall/sdk/debug/DebugView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v_n5W41z5lZZWroyiop0569IrUY(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->exitButton_delegate$lambda$5$lambda$4$lambda$3(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wvnvVPFdZOIm49rmGL6Cf4cO9qQ(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/DebugView;->bottomButton_delegate$lambda$18(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lcom/superwall/sdk/debug/DebugManager;Lcom/superwall/sdk/debug/DebugView$Factory;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallRequestManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/superwall/sdk/debug/DebugView;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 73
    iput-object p3, p0, Lcom/superwall/sdk/debug/DebugView;->network:Lcom/superwall/sdk/network/Network;

    .line 74
    iput-object p4, p0, Lcom/superwall/sdk/debug/DebugView;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    .line 75
    iput-object p5, p0, Lcom/superwall/sdk/debug/DebugView;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 76
    iput-object p6, p0, Lcom/superwall/sdk/debug/DebugView;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    .line 77
    iput-object p7, p0, Lcom/superwall/sdk/debug/DebugView;->factory:Lcom/superwall/sdk/debug/DebugView$Factory;

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->paywalls:Ljava/util/List;

    .line 101
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda7;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->logoImageView$delegate:Lkotlin/Lazy;

    .line 113
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda8;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->exitButton$delegate:Lkotlin/Lazy;

    .line 149
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda9;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->consoleButton$delegate:Lkotlin/Lazy;

    .line 185
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda10;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->activityIndicator$delegate:Lkotlin/Lazy;

    .line 193
    const-string p1, "#75FFF1"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/superwall/sdk/debug/DebugView;->primaryColor:I

    .line 194
    const-string p1, "#181A1E"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/superwall/sdk/debug/DebugView;->lightBackgroundColor:I

    .line 196
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda11;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->bottomButton$delegate:Lkotlin/Lazy;

    .line 254
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda12;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->previewPickerButton$delegate:Lkotlin/Lazy;

    .line 305
    new-instance p1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda13;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->previewContainerView$delegate:Lkotlin/Lazy;

    .line 321
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLocaleIdentifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->initialLocaleIdentifier:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->addSubviews()V

    .line 323
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    new-instance p1, Lcom/superwall/sdk/debug/DebugView$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/superwall/sdk/debug/DebugView$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    move-object p5, p1

    check-cast p5, Lkotlin/jvm/functions/Function2;

    const/4 p6, 0x3

    const/4 p7, 0x0

    const/4 p4, 0x0

    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getActivityIndicator(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getActivityIndicator()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPreviewTextView$p(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/debug/DebugView;->previewTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getPreviewViewContent$p(Lcom/superwall/sdk/debug/DebugView;)Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/superwall/sdk/debug/DebugView;->previewViewContent:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$pressedConsoleButton$showLocalizationPicker(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->pressedConsoleButton$showLocalizationPicker(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPaywallIdentifier$p(Lcom/superwall/sdk/debug/DebugView;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->paywallIdentifier:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPaywalls$p(Lcom/superwall/sdk/debug/DebugView;Ljava/util/List;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->paywalls:Ljava/util/List;

    return-void
.end method

.method private static final activityIndicator_delegate$lambda$11(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ProgressBar;
    .locals 2

    .line 186
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setId(I)V

    const/4 p0, 0x1

    .line 188
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 p0, 0x0

    .line 189
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final bottomButton_delegate$lambda$18(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 6

    .line 197
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/debug/DebugView;->setId(I)V

    .line 198
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 202
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 205
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 206
    const-string v3, "#203133"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x428c0000    # 70.0f

    .line 207
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 209
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 214
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    sget v3, Lcom/superwall/sdk/R$drawable;->play_button:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget v3, p0, Lcom/superwall/sdk/debug/DebugView;->primaryColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 219
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    .line 223
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 222
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 232
    const-string v3, "Preview"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 233
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    .line 234
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 235
    iget v1, p0, Lcom/superwall/sdk/debug/DebugView;->primaryColor:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 236
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x20

    const/16 v2, 0x10

    .line 244
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 246
    new-instance v1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda6;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final bottomButton_delegate$lambda$18$lambda$17$lambda$16(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->pressedBottomButton()V

    return-void
.end method

.method private static final consoleButton_delegate$lambda$9(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 7

    .line 150
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/superwall/sdk/R$drawable;->debugger:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 166
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v4, Landroid/graphics/ColorFilter;

    .line 165
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 167
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 174
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda5;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final consoleButton_delegate$lambda$9$lambda$8$lambda$7(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->pressedConsoleButton()V

    return-void
.end method

.method private static final exitButton_delegate$lambda$5(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 7

    .line 114
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/superwall/sdk/R$drawable;->exit:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 130
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v4, Landroid/graphics/ColorFilter;

    .line 129
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 131
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 135
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 138
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final exitButton_delegate$lambda$5$lambda$4$lambda$3(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->pressedExitButton()V

    return-void
.end method

.method private final getActivityIndicator()Landroid/widget/ProgressBar;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->activityIndicator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final getBottomButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->bottomButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getConsoleButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->consoleButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getExitButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->exitButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLogoImageView()Landroid/widget/ImageView;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->logoImageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->previewContainerView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method private final getPreviewPickerButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->previewPickerButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic loadAndShowPaywall$default(Lcom/superwall/sdk/debug/DebugView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 836
    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/DebugView;->loadAndShowPaywall(Z)V

    return-void
.end method

.method private static final logoImageView_delegate$lambda$1(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/ImageView;
    .locals 2

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setId(I)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/superwall/sdk/R$drawable;->superwall_logo:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p0, 0x0

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static synthetic presentAlert$default(Lcom/superwall/sdk/debug/DebugView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 802
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 799
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/debug/DebugView;->presentAlert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static final presentAlert$lambda$46(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 812
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    .line 813
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/superwall/sdk/debug/DebugView$presentAlert$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/superwall/sdk/debug/DebugView$presentAlert$1$1;-><init>(Lcom/superwall/sdk/debug/DebugView$AlertOption;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final presentAlert$lambda$47(Landroid/app/AlertDialog;)V
    .locals 2

    .line 830
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget v1, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 832
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private static final synthetic pressedConsoleButton$showLocalizationPicker(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->showLocalizationPicker()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final pressedExitButton()V
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private final pressedPreview()V
    .locals 12

    .line 665
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->paywallDatabaseId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->paywalls:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1033
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1034
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1035
    check-cast v3, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 669
    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/Paywall;->getName()Ljava/lang/String;

    move-result-object v5

    .line 671
    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/Paywall;->getDatabaseId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2713"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v7, v5

    .line 676
    new-instance v6, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    .line 675
    new-instance v5, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 676
    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/debug/DebugView$AlertOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1035
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1036
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 690
    const-string v0, "Your Paywalls"

    .line 689
    invoke-virtual {p0, v0, v4, v2}, Lcom/superwall/sdk/debug/DebugView;->presentAlert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static final previewContainerView_delegate$lambda$27(Lcom/superwall/sdk/debug/DebugView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 3

    .line 306
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setFocusable(Z)V

    .line 312
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 311
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance v1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda14;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final previewContainerView_delegate$lambda$27$lambda$26$lambda$25(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->pressedPreview()V

    return-void
.end method

.method private static final previewPickerButton_delegate$lambda$24(Lcom/superwall/sdk/debug/DebugView;)Landroid/widget/LinearLayout;
    .locals 5

    .line 255
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 259
    iget v1, p0, Lcom/superwall/sdk/debug/DebugView;->lightBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 261
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 269
    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 270
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 271
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 272
    iget v3, p0, Lcom/superwall/sdk/debug/DebugView;->primaryColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 273
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iput-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->previewTextView:Landroid/widget/TextView;

    .line 279
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 284
    sget v3, Lcom/superwall/sdk/R$drawable;->down_arrow:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    iget v3, p0, Lcom/superwall/sdk/debug/DebugView;->primaryColor:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 289
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    .line 293
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 292
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 287
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0xa

    .line 299
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 301
    new-instance v1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final previewPickerButton_delegate$lambda$24$lambda$23$lambda$22(Lcom/superwall/sdk/debug/DebugView;Landroid/view/View;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->pressedPreview()V

    return-void
.end method

.method private final showLocalizationPicker()V
    .locals 4

    .line 767
    sget-object v0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->Companion:Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;

    new-instance v1, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda4;-><init>(Lcom/superwall/sdk/debug/DebugView;)V

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;->setCompletion(Lkotlin/jvm/functions/Function1;)V

    .line 775
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 778
    :cond_0
    new-instance v1, Landroid/content/Intent;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final showLocalizationPicker$lambda$42(Lcom/superwall/sdk/debug/DebugView;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/Superwall;->setLocaleIdentifier(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/superwall/sdk/debug/DebugView$showLocalizationPicker$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/debug/DebugView$showLocalizationPicker$1$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 774
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final addPaywallPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;

    iget v1, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 594
    iget v2, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/debug/DebugView;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 595
    iget-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 598
    :cond_3
    iget-object v2, p0, Lcom/superwall/sdk/debug/DebugView;->factory:Lcom/superwall/sdk/debug/DebugView$Factory;

    iput-object p0, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/debug/DebugView$addPaywallPreview$1;->label:I

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v4, v0}, Lcom/superwall/sdk/debug/DebugView$Factory;->makePaywallView(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/manager/PaywallViewCache;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 594
    :goto_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 603
    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 604
    iput-object v2, v0, Lcom/superwall/sdk/debug/DebugView;->previewViewContent:Landroid/view/View;

    .line 608
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 607
    invoke-virtual {p1, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    new-instance v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetInterceptTouchEvents;

    invoke-direct {v1, v3}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetInterceptTouchEvents;-><init>(Z)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p1, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 617
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 618
    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 620
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getId()I

    move-result v4

    .line 622
    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x6

    .line 619
    invoke-virtual {v1, v4, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 625
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getId()I

    move-result v4

    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v1, v4, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 626
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getId()I

    move-result v4

    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v1, v4, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 628
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getId()I

    move-result v4

    .line 630
    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x4

    .line 627
    invoke-virtual {v1, v4, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 634
    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 637
    invoke-virtual {p1, v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->setClipToOutline(Z)V

    const/4 v1, 0x0

    .line 638
    invoke-virtual {p1, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setAlpha(F)V

    .line 641
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    .line 642
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 643
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x42500000    # 52.0f

    .line 644
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x2

    .line 645
    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 647
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 649
    invoke-direct {v0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/superwall/sdk/debug/DebugView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 652
    invoke-virtual {p1, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setScaleX(F)V

    .line 653
    invoke-virtual {p1, v1}, Lcom/superwall/sdk/paywall/view/PaywallView;->setScaleY(F)V

    .line 657
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 658
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 659
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 660
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 662
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final addSubviews()V
    .locals 12

    .line 336
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 342
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getActivityIndicator()Landroid/widget/ProgressBar;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getConsoleButton()Landroid/widget/LinearLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getExitButton()Landroid/widget/LinearLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewPickerButton()Landroid/widget/LinearLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/superwall/sdk/debug/DebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClipToOutline(Z)V

    .line 352
    iget v0, p0, Lcom/superwall/sdk/debug/DebugView;->lightBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/debug/DebugView;->setBackgroundColor(I)V

    .line 355
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 356
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 360
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    const/4 v8, 0x6

    .line 359
    invoke-virtual {v2, v3, v8, v1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 366
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    const/4 v9, 0x7

    .line 365
    invoke-virtual {v2, v3, v9, v1, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 372
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    .line 374
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v5

    const/4 v10, 0x5

    .line 376
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x3

    const/4 v6, 0x4

    .line 371
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 379
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    .line 381
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    const/4 v6, 0x3

    .line 383
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x4

    .line 378
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 385
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 388
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 389
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 391
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v3

    const/16 v1, 0x1e

    .line 395
    invoke-virtual {p0, v1}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 390
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 398
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    .line 400
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getConsoleButton()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    .line 397
    invoke-virtual {v2, v3, v8, v4, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 404
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getLogoImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    .line 406
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getExitButton()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    .line 403
    invoke-virtual {v2, v3, v9, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 412
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getConsoleButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/16 v10, 0x19

    .line 416
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x6

    const/4 v6, 0x6

    .line 411
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 419
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getConsoleButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v6, 0x3

    .line 423
    invoke-virtual {p0, v1}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x3

    .line 418
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 425
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getConsoleButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/16 v11, 0x2c

    invoke-virtual {p0, v11}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 429
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getExitButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v6, 0x7

    .line 433
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x7

    .line 428
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 436
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getExitButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v6, 0x3

    .line 440
    invoke-virtual {p0, v1}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x3

    .line 435
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 442
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getExitButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {p0, v11}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 446
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getActivityIndicator()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getId()I

    move-result v3

    .line 448
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    .line 445
    invoke-virtual {v2, v3, v8, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 452
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getActivityIndicator()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getId()I

    move-result v3

    .line 454
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    .line 451
    invoke-virtual {v2, v3, v9, v4, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 458
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getActivityIndicator()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getId()I

    move-result v3

    .line 460
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    const/4 v5, 0x3

    .line 457
    invoke-virtual {v2, v3, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 464
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getActivityIndicator()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getId()I

    move-result v3

    .line 466
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    const/4 v5, 0x4

    .line 463
    invoke-virtual {v2, v3, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 472
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v6, 0x6

    .line 476
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 471
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 479
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v6, 0x7

    .line 483
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x7

    .line 478
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 485
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/16 v4, 0x3c

    invoke-virtual {p0, v4}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 487
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v6, 0x4

    .line 491
    invoke-virtual {p0, v1}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x4

    .line 486
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 496
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewPickerButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    .line 498
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x6

    .line 500
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x6

    .line 495
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 503
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewPickerButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    .line 505
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewContainerView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x7

    .line 507
    invoke-virtual {p0, v10}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x7

    .line 502
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 509
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewPickerButton()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 511
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getPreviewPickerButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    .line 513
    invoke-direct {p0}, Lcom/superwall/sdk/debug/DebugView;->getBottomButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    const/16 v1, 0xa

    .line 515
    invoke-virtual {p0, v1}, Lcom/superwall/sdk/debug/DebugView;->dpToPx(I)I

    move-result v7

    const/4 v4, 0x4

    const/4 v6, 0x3

    .line 510
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 519
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final dpToPx(I)I
    .locals 1

    int-to-float p1, p1

    .line 522
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final finishLoadingPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;

    iget v3, v2, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;

    invoke-direct {v2, v1, v0}, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v2

    iget-object v0, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 552
    iget v3, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v10, :cond_2

    if-ne v3, v9, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/debug/DebugView;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object v3, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v7, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/debug/DebugView;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 554
    iget-object v0, v1, Lcom/superwall/sdk/debug/DebugView;->paywallIdentifier:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/superwall/sdk/debug/DebugView;->paywallDatabaseId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 555
    iget-object v3, v1, Lcom/superwall/sdk/debug/DebugView;->paywalls:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 1027
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 555
    invoke-virtual {v7}, Lcom/superwall/sdk/models/paywall/Paywall;->getDatabaseId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_6
    move-object v5, v11

    :goto_1
    check-cast v5, Lcom/superwall/sdk/models/paywall/Paywall;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 556
    iput-object v0, v1, Lcom/superwall/sdk/debug/DebugView;->paywallIdentifier:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v0, v11

    :goto_2
    if-nez v0, :cond_8

    .line 558
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 562
    :cond_8
    :try_start_3
    iget-object v12, v1, Lcom/superwall/sdk/debug/DebugView;->factory:Lcom/superwall/sdk/debug/DebugView$Factory;

    .line 564
    new-instance v14, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    invoke-direct {v14, v0, v11, v10, v11}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 562
    invoke-interface/range {v12 .. v17}, Lcom/superwall/sdk/debug/DebugView$Factory;->makePaywallRequest(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;ZLjava/lang/String;)Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-result-object v0

    .line 569
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v1, Lcom/superwall/sdk/debug/DebugView;->paywallRequestManager:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-object v1, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$1:Ljava/lang/Object;

    iput-object v12, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$2:Ljava/lang/Object;

    iput-object v12, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$3:Ljava/lang/Object;

    iput v4, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywall$default(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    goto/16 :goto_6

    :cond_9
    move-object v7, v1

    move-object v5, v4

    move-object v3, v12

    move-object v4, v3

    .line 552
    :goto_3
    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 1030
    instance-of v8, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v8, :cond_a

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 1031
    :cond_a
    instance-of v8, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v8, :cond_c

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    :goto_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 572
    iget-object v0, v7, Lcom/superwall/sdk/debug/DebugView;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 573
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 572
    iput-object v7, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$1:Ljava/lang/Object;

    iput-object v11, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$2:Ljava/lang/Object;

    iput-object v11, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$3:Ljava/lang/Object;

    iput v10, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    invoke-virtual {v0, v3, v5, v6}, Lcom/superwall/sdk/store/StoreManager;->getProductVariables(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v3, v4

    move-object v4, v7

    .line 552
    :goto_5
    check-cast v0, Ljava/util/List;

    .line 576
    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v5, v0}, Lcom/superwall/sdk/models/paywall/Paywall;->setProductVariables(Ljava/util/List;)V

    .line 578
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    iput-object v0, v4, Lcom/superwall/sdk/debug/DebugView;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    .line 579
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$2;

    invoke-direct {v5, v4, v3, v11}, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$2;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v11, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$0:Ljava/lang/Object;

    iput-object v11, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->L$1:Ljava/lang/Object;

    iput v9, v6, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    invoke-static {v0, v5, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_d

    :goto_6
    return-object v2

    .line 1029
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    :goto_7
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 586
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 587
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->debugView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 585
    const-string v5, "No Paywall Response"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 592
    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->encapsulatingActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public final getPaywallDatabaseId$superwall_release()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->paywallDatabaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final isActive$superwall_release()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/superwall/sdk/debug/DebugView;->isActive:Z

    return v0
.end method

.method public final loadAndShowPaywall(Z)V
    .locals 10

    .line 837
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->paywallIdentifier:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 842
    :cond_0
    sget-object v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 845
    iget-object v2, p0, Lcom/superwall/sdk/debug/DebugView;->factory:Lcom/superwall/sdk/debug/DebugView$Factory;

    .line 846
    new-instance v3, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$FromIdentifier;

    invoke-direct {v3, v0, p1}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$FromIdentifier;-><init>(Ljava/lang/String;Z)V

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    .line 851
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    const/4 p1, 0x1

    .line 852
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 853
    move-object v7, v1

    check-cast v7, Lkotlinx/coroutines/flow/StateFlow;

    .line 854
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->isPaywallPresented()Z

    move-result v8

    .line 855
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;

    move-object v9, p1

    check-cast v9, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    const/4 v4, 0x0

    .line 845
    invoke-interface/range {v2 .. v9}, Lcom/superwall/sdk/debug/DebugView$Factory;->makePresentationRequest(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object p1

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 858
    invoke-static {v1, v1, v2, v0, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    .line 860
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/superwall/sdk/debug/DebugView$loadAndShowPaywall$1;

    invoke-direct {v1, v0, p0, v2}, Lcom/superwall/sdk/debug/DebugView$loadAndShowPaywall$1;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 911
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/superwall/sdk/debug/DebugView$loadAndShowPaywall$2;

    invoke-direct {v1, p1, v0, v2}, Lcom/superwall/sdk/debug/DebugView$loadAndShowPaywall$2;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;

    iget v1, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 524
    iget v2, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/debug/DebugView;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/debug/DebugView;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/superwall/sdk/debug/DebugView$loadPreview$2;

    invoke-direct {v2, p0, v6}, Lcom/superwall/sdk/debug/DebugView$loadPreview$2;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, p0

    .line 533
    :goto_1
    iget-object p1, v2, Lcom/superwall/sdk/debug/DebugView;->paywalls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 534
    iget-object p1, v2, Lcom/superwall/sdk/debug/DebugView;->network:Lcom/superwall/sdk/network/Network;

    .line 535
    iput-object v2, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    invoke-virtual {p1, v7, v0}, Lcom/superwall/sdk/network/Network;->getPaywalls(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_4

    .line 524
    :cond_7
    :goto_2
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 1023
    instance-of v3, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v3, :cond_8

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    check-cast p1, Ljava/util/List;

    .line 537
    invoke-static {v2, p1}, Lcom/superwall/sdk/debug/DebugView;->access$setPaywalls$p(Lcom/superwall/sdk/debug/DebugView;Ljava/util/List;)V

    .line 538
    iput-object v6, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    invoke-virtual {v2, v0}, Lcom/superwall/sdk/debug/DebugView;->finishLoadingPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_4

    .line 1024
    :cond_8
    instance-of v1, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    check-cast p1, Lcom/superwall/sdk/network/NetworkError;

    .line 540
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 541
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 542
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->debugView:Lcom/superwall/sdk/logger/LogScope;

    .line 544
    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 540
    const-string v3, "Failed to Fetch Paywalls"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1022
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 548
    :cond_b
    iput-object v6, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/debug/DebugView$loadPreview$1;->label:I

    invoke-virtual {v2, v0}, Lcom/superwall/sdk/debug/DebugView;->finishLoadingPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_4
    return-object v1

    .line 550
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final presentAlert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/DebugView$AlertOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugView;->getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 806
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 807
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 808
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 810
    move-object p1, p3

    check-cast p1, Ljava/lang/Iterable;

    .line 1051
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 1052
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1053
    check-cast v0, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    .line 810
    invoke-virtual {v0}, Lcom/superwall/sdk/debug/DebugView$AlertOption;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 1051
    check-cast p2, Ljava/util/Collection;

    const/4 p1, 0x0

    .line 1056
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 810
    check-cast p1, [Ljava/lang/String;

    .line 811
    check-cast p1, [Ljava/lang/CharSequence;

    new-instance p2, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 821
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 p3, 0x50

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 822
    :cond_2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-virtual {p2, p3, v0}, Landroid/view/Window;->setLayout(II)V

    .line 827
    :cond_3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 828
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_4

    sget p3, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {p2, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p3, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/superwall/sdk/debug/DebugView$$ExternalSyntheticLambda3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final pressedBottomButton()V
    .locals 6

    const/4 v0, 0x2

    .line 785
    new-array v0, v0, [Lcom/superwall/sdk/debug/DebugView$AlertOption;

    new-instance v1, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    .line 784
    new-instance v2, Lcom/superwall/sdk/debug/DebugView$pressedBottomButton$alertOptions$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/superwall/sdk/debug/DebugView$pressedBottomButton$alertOptions$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 785
    const-string v4, "With Free Trial"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v2, v5}, Lcom/superwall/sdk/debug/DebugView$AlertOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 790
    new-instance v1, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    .line 784
    new-instance v2, Lcom/superwall/sdk/debug/DebugView$pressedBottomButton$alertOptions$2;

    invoke-direct {v2, p0, v3}, Lcom/superwall/sdk/debug/DebugView$pressedBottomButton$alertOptions$2;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 790
    const-string v4, "Without Free Trial"

    invoke-direct {v1, v4, v2, v5}, Lcom/superwall/sdk/debug/DebugView$AlertOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 784
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 796
    const-string v1, "Which version?"

    invoke-virtual {p0, v1, v3, v0}, Lcom/superwall/sdk/debug/DebugView;->presentAlert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final pressedConsoleButton()V
    .locals 10

    .line 701
    const-string v0, ""

    const/4 v1, 0x0

    .line 704
    :try_start_0
    iget-object v2, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/superwall/sdk/debug/DebugView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 705
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "Unknown"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_0
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    .line 708
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :cond_1
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v0

    .line 716
    :catch_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Superwall v2.7.16 | App v"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 724
    new-array v2, v2, [Lcom/superwall/sdk/debug/DebugView$AlertOption;

    new-instance v3, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    new-instance v4, Lcom/superwall/sdk/debug/DebugView$pressedConsoleButton$1;

    invoke-direct {v4, p0}, Lcom/superwall/sdk/debug/DebugView$pressedConsoleButton$1;-><init>(Ljava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "Localization"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/superwall/sdk/debug/DebugView$AlertOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v3, v2, v1

    .line 725
    new-instance v4, Lcom/superwall/sdk/debug/DebugView$AlertOption;

    new-instance v1, Lcom/superwall/sdk/debug/DebugView$pressedConsoleButton$2;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/debug/DebugView$pressedConsoleButton$2;-><init>(Ljava/lang/Object;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "Templates"

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/superwall/sdk/debug/DebugView$AlertOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    aput-object v4, v2, v1

    .line 723
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 719
    invoke-virtual {p0, v0, v2, v1}, Lcom/superwall/sdk/debug/DebugView;->presentAlert(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final setActive$superwall_release(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/superwall/sdk/debug/DebugView;->isActive:Z

    return-void
.end method

.method public setEncapsulatingActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->encapsulatingActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public final setPaywallDatabaseId$superwall_release(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->paywallDatabaseId:Ljava/lang/String;

    return-void
.end method

.method public final showConsole(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/debug/DebugView$showConsole$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/debug/DebugView$showConsole$1;

    iget v1, v0, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/debug/DebugView$showConsole$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/debug/DebugView$showConsole$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v0

    iget-object p1, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 730
    iget v1, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v1, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/debug/DebugView;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 731
    iget-object v3, p0, Lcom/superwall/sdk/debug/DebugView;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    if-nez v3, :cond_3

    .line 733
    sget-object v6, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 734
    sget-object v7, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 735
    sget-object v8, Lcom/superwall/sdk/logger/LogScope;->debugView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 733
    const-string v9, "Paywall is nil"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 738
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 743
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/superwall/sdk/debug/DebugView;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/store/StoreKit;

    iput-object p0, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->L$1:Ljava/lang/Object;

    iput v2, v5, Lcom/superwall/sdk/debug/DebugView$showConsole$1;->label:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/store/StoreKit$DefaultImpls;->getProducts$default(Lcom/superwall/sdk/store/StoreKit;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    move-object v0, v3

    .line 730
    :goto_1
    check-cast p1, Lcom/superwall/sdk/store/GetProductsResponse;

    .line 742
    invoke-virtual {p1}, Lcom/superwall/sdk/store/GetProductsResponse;->component1()Ljava/util/Map;

    move-result-object p1

    .line 747
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductIds()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1046
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1045
    check-cast v3, Ljava/lang/String;

    .line 747
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v3, :cond_5

    .line 1045
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1049
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 748
    sget-object p1, Lcom/superwall/sdk/debug/SWConsoleActivity;->Companion:Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;

    invoke-virtual {p1, v2}, Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;->setProducts(Ljava/util/List;)V

    .line 749
    invoke-virtual {v1}, Lcom/superwall/sdk/debug/DebugView;->getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-nez p1, :cond_7

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 752
    :cond_7
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/superwall/sdk/debug/SWConsoleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    const-string v1, "PARENT_ACTIVITY"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 757
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 758
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 759
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->debugView:Lcom/superwall/sdk/logger/LogScope;

    .line 760
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error retrieving products - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 757
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 763
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final viewDestroyed()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->resetCache()V

    .line 330
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/debug/DebugManager;->setDebuggerLaunched(Z)V

    .line 331
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView;->initialLocaleIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setLocaleIdentifier(Ljava/lang/String;)V

    return-void
.end method
