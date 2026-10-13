.class public final Lcom/superwall/sdk/paywall/view/PaywallShimmerViewKt;
.super Ljava/lang/Object;
.source "PaywallShimmerView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u00020\u0001\"\u000c\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004*\u0002H\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "setupFor",
        "",
        "T",
        "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;",
        "Landroid/view/View;",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "loadingState",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
        "(Landroid/view/View;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final setupFor(Landroid/view/View;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;",
            ">(TT;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/paywall/view/ShimmerView;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/view/ShimmerView;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getBackground()I

    move-result v1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getBackgroundColor()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setBackground(I)V

    .line 30
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getBackground()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getBackground()I

    move-result v1

    invoke-static {v1}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isDarkColor(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setLightBackground(Z)V

    .line 32
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getBackground()I

    move-result v1

    invoke-static {v1}, Lcom/superwall/sdk/misc/Color_HelpersKt;->readableOverlayColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setTintColor(I)V

    .line 35
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getTintColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getTintColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/ShimmerView;->getTintColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 36
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 34
    invoke-static {v1, v2}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/paywall/view/ShimmerView;->setTintColorFilter(Landroid/graphics/ColorFilter;)V

    .line 42
    :cond_2
    instance-of p2, p2, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingURL;

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    .line 40
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p1, p0}, Lcom/superwall/sdk/paywall/view/PaywallView;->addView(Landroid/view/View;)V

    .line 49
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    check-cast p0, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;

    invoke-interface {p0}, Lcom/superwall/sdk/paywall/view/PaywallShimmerView;->checkForOrientationChanges()V

    return-void
.end method
