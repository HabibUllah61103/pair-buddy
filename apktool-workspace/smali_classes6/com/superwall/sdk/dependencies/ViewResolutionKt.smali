.class public final Lcom/superwall/sdk/dependencies/ViewResolutionKt;
.super Ljava/lang/Object;
.source "ViewResolution.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u001a$\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "resolvePaywallViewForKey",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "viewStore",
        "Lcom/superwall/sdk/paywall/view/ViewStorage;",
        "activeView",
        "key",
        "",
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
.method public static final resolvePaywallViewForKey(Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 1

    const-string v0, "viewStore"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p0, p2}, Lcom/superwall/sdk/paywall/view/ViewStorage;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/superwall/sdk/paywall/view/PaywallView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method
