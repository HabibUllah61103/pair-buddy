.class public final Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "SuperwallPaywallActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->initBottomSheetBehavior(ZD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onStateChanged",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "newState",
        "",
        "onSlide",
        "slideOffset",
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
.field final synthetic $bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentWebViewScroll:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $isModal:Z

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;


# direct methods
.method public static synthetic $r8$lambda$7cI344KGBsPN8Xwlem6GDc7m228(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->onSlide$lambda$0(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(ZLkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;",
            "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$isModal:Z

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$currentWebViewScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    .line 630
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method

.method private static final onSlide$lambda$0(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$onView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 658
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 659
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->access$paywallView(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getWebView$superwall_release()Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 657
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-interface {p1, v0}, Lcom/superwall/sdk/paywall/view/webview/PaywallWebUI;->onView(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 6

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iget-boolean p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$isModal:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$currentWebViewScroll:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p1, :cond_0

    .line 637
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    .line 640
    :cond_0
    iget-boolean p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$isModal:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 641
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->$bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    :cond_1
    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    .line 643
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->access$paywallView(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 644
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 645
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    move-object v2, p1

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 643
    invoke-static/range {v0 .. v5}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$superwall_release$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 646
    :cond_2
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$initBottomSheetBehavior$4;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->finish()V

    :cond_3
    return-void
.end method
