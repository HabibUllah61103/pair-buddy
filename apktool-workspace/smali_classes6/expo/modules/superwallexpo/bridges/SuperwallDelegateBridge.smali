.class public final Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;
.super Ljava/lang/Object;
.source "SuperwallDelegateBridge.kt"

# interfaces
.implements Lcom/superwall/sdk/delegate/SuperwallDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0019H\u0016JB\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J&\u0010#\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010 0\u001fH\u0002J\u0008\u0010%\u001a\u00020\u0005H\u0016J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020(H\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;",
        "Lcom/superwall/sdk/delegate/SuperwallDelegate;",
        "<init>",
        "()V",
        "subscriptionStatusDidChange",
        "",
        "oldValue",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "newValue",
        "handleSuperwallEvent",
        "eventInfo",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
        "handleCustomPaywallAction",
        "name",
        "",
        "willDismissPaywall",
        "withInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "willPresentPaywall",
        "didDismissPaywall",
        "didPresentPaywall",
        "paywallWillOpenURL",
        "url",
        "Ljava/net/URI;",
        "paywallWillOpenDeepLink",
        "Landroid/net/Uri;",
        "handleLog",
        "level",
        "scope",
        "message",
        "info",
        "",
        "",
        "error",
        "",
        "sendEvent",
        "body",
        "willRedeemLink",
        "didRedeemLink",
        "result",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "expo-superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final sendEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 98
    sget-object v0, Lexpo/modules/superwallexpo/SuperwallExpoModule;->Companion:Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;->emitEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public customerInfoDidChange(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/delegate/SuperwallDelegate$DefaultImpls;->customerInfoDidChange(Lcom/superwall/sdk/delegate/SuperwallDelegate;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-void
.end method

.method public didDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "withInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-string v0, "info"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 56
    const-string v0, "didDismissPaywall"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public didPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "withInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-string v0, "info"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 63
    const-string v0, "didPresentPaywall"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-string v0, "didRedeemLink"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/RedemptionResultKt;->toJson(Lcom/superwall/sdk/models/internal/RedemptionResult;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public handleCustomPaywallAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 35
    const-string v0, "handleCustomPaywallAction"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public handleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 4
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

    const-string v1, "scope"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 88
    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 89
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v2, p1

    .line 90
    const-string p1, "message"

    invoke-static {p1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 91
    const-string p1, "info"

    invoke-static {p1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    if-eqz p5, :cond_0

    .line 92
    invoke-virtual {p5}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "error"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 87
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 94
    const-string p2, "handleLog"

    invoke-direct {p0, p2, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public handleSuperwallEvent(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V
    .locals 1

    const-string v0, "eventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lexpo/modules/superwallexpo/json/SuperwallEventInfoKt;->toJson(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 28
    const-string v0, "handleSuperwallEvent"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public paywallWillOpenDeepLink(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 74
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 77
    const-string v0, "paywallWillOpenDeepLink"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public paywallWillOpenURL(Ljava/net/URI;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 70
    const-string v0, "paywallWillOpenURL"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public subscriptionStatusDidChange(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 2

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "from"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/SubscriptionStatusKt;->toJson(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 19
    const-string p1, "to"

    invoke-static {p2}, Lexpo/modules/superwallexpo/json/SubscriptionStatusKt;->toJson(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 17
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 21
    const-string p2, "subscriptionStatusDidChange"

    invoke-direct {p0, p2, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public userAttributesDidChange(Ljava/util/Map;)V
    .locals 0
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

    .line 12
    invoke-static {p0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegate$DefaultImpls;->userAttributesDidChange(Lcom/superwall/sdk/delegate/SuperwallDelegate;Ljava/util/Map;)V

    return-void
.end method

.method public willDismissPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "withInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v0, "info"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 42
    const-string v0, "willDismissPaywall"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public willPresentPaywall(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "withInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-string v0, "info"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 49
    const-string v0, "willPresentPaywall"

    invoke-direct {p0, v0, p1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public willRedeemLink()V
    .locals 2

    .line 102
    const-string v0, "willRedeemLink"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
