.class public final Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;
.super Ljava/lang/Object;
.source "SuperwallDelegateAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%J\u0016\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(J@\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u00132\u0008\u0010-\u001a\u0004\u0018\u00010\u00132\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0001\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u000101J\u001a\u00102\u001a\u00020\u00112\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00010/J\u0016\u00104\u001a\u00020\u00112\u0006\u0010\'\u001a\u0002052\u0006\u0010)\u001a\u000205R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u00066"
    }
    d2 = {
        "Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;",
        "",
        "<init>",
        "()V",
        "kotlinDelegate",
        "Lcom/superwall/sdk/delegate/SuperwallDelegate;",
        "getKotlinDelegate",
        "()Lcom/superwall/sdk/delegate/SuperwallDelegate;",
        "setKotlinDelegate",
        "(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V",
        "javaDelegate",
        "Lcom/superwall/sdk/delegate/SuperwallDelegateJava;",
        "getJavaDelegate",
        "()Lcom/superwall/sdk/delegate/SuperwallDelegateJava;",
        "setJavaDelegate",
        "(Lcom/superwall/sdk/delegate/SuperwallDelegateJava;)V",
        "handleCustomPaywallAction",
        "",
        "name",
        "",
        "didRedeemLink",
        "result",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "willRedeemLink",
        "willDismissPaywall",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "didDismissPaywall",
        "willPresentPaywall",
        "didPresentPaywall",
        "paywallWillOpenURL",
        "url",
        "Ljava/net/URI;",
        "paywallWillOpenDeepLink",
        "Landroid/net/Uri;",
        "handleSuperwallEvent",
        "eventInfo",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
        "subscriptionStatusDidChange",
        "from",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "to",
        "handleLog",
        "level",
        "scope",
        "message",
        "info",
        "",
        "error",
        "",
        "userAttributesDidChange",
        "newAttributes",
        "customerInfoDidChange",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
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
.field private javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

.field private kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final customerInfoDidChange(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->customerInfoDidChange(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->customerInfoDidChange(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    :cond_1
    return-void
.end method

.method public final didDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->didDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->didDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    :cond_1
    return-void
.end method

.method public final didPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->didPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->didPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    :cond_1
    return-void
.end method

.method public final didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V

    :cond_1
    return-void
.end method

.method public final getJavaDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegateJava;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    return-object v0
.end method

.method public final getKotlinDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegate;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    return-object v0
.end method

.method public final handleCustomPaywallAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->handleCustomPaywallAction(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->handleCustomPaywallAction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final handleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->handleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 86
    iget-object p1, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz p1, :cond_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->handleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final handleSuperwallEvent(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V
    .locals 1

    const-string v0, "eventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->handleSuperwallEvent(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->handleSuperwallEvent(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V

    :cond_1
    return-void
.end method

.method public final paywallWillOpenDeepLink(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->paywallWillOpenDeepLink(Landroid/net/Uri;)V

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->paywallWillOpenDeepLink(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final paywallWillOpenURL(Ljava/net/URI;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->paywallWillOpenURL(Ljava/net/URI;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->paywallWillOpenURL(Ljava/net/URI;)V

    :cond_1
    return-void
.end method

.method public final setJavaDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegateJava;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    return-void
.end method

.method public final setKotlinDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    return-void
.end method

.method public final subscriptionStatusDidChange(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->subscriptionStatusDidChange(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->subscriptionStatusDidChange(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    :cond_1
    return-void
.end method

.method public final userAttributesDidChange(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->userAttributesDidChange(Ljava/util/Map;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->userAttributesDidChange(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final willDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->willDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->willDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    :cond_1
    return-void
.end method

.method public final willPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "paywallInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->willPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->willPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    :cond_1
    return-void
.end method

.method public final willRedeemLink()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->kotlinDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/superwall/sdk/delegate/SuperwallDelegate;->willRedeemLink()V

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->javaDelegate:Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/superwall/sdk/delegate/SuperwallDelegateJava;->willRedeemLink()V

    :cond_1
    return-void
.end method
