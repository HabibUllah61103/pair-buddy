.class public interface abstract Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;
.super Ljava/lang/Object;
.source "WebPaywallRedeemer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/web/WebPaywallRedeemer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH&J\u0011\u0010\u000c\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H&J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\u0016\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H\u00a6@\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u000e\u0010\u001b\u001a\u00020\u001cH\u00a6@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH&J\u0008\u0010 \u001a\u00020!H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0013H&J\u0008\u0010$\u001a\u00020\u001cH&J\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u00a6@\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010(\u001a\u00020\u0013H&J\u0014\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00010*H&J\u0008\u0010+\u001a\u00020\u0003H&J\u0008\u0010,\u001a\u00020\u001cH&\u00a8\u0006-"
    }
    d2 = {
        "Lcom/superwall/sdk/web/WebPaywallRedeemer$Factory;",
        "",
        "willRedeemLink",
        "",
        "didRedeemLink",
        "redemptionResult",
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "maxAge",
        "",
        "getActiveDeviceEntitlements",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "getUserId",
        "Lcom/superwall/sdk/models/internal/UserId;",
        "getUserId-P5Wmf0A",
        "()Ljava/lang/String;",
        "getDeviceId",
        "Lcom/superwall/sdk/models/internal/DeviceVendorId;",
        "getAliasId",
        "",
        "track",
        "event",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "internallySetSubscriptionStatus",
        "status",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "isPaywallVisible",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "triggerRestoreInPaywall",
        "currentPaywallEntitlements",
        "getPaywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "trackRestorationFailed",
        "message",
        "isWebToAppEnabled",
        "receipts",
        "",
        "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
        "getExternalAccountId",
        "getIntegrationProps",
        "",
        "closePaywallIfExists",
        "isPaymentSheetOpen",
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


# virtual methods
.method public abstract closePaywallIfExists()V
.end method

.method public abstract currentPaywallEntitlements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract didRedeemLink(Lcom/superwall/sdk/models/internal/RedemptionResult;)V
.end method

.method public abstract getActiveDeviceEntitlements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAliasId()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Lcom/superwall/sdk/models/internal/DeviceVendorId;
.end method

.method public abstract getExternalAccountId()Ljava/lang/String;
.end method

.method public abstract getIntegrationProps()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
.end method

.method public abstract getUserId-P5Wmf0A()Ljava/lang/String;
.end method

.method public abstract internallySetSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
.end method

.method public abstract isPaymentSheetOpen()Z
.end method

.method public abstract isPaywallVisible(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract isWebToAppEnabled()Z
.end method

.method public abstract maxAge()J
.end method

.method public abstract receipts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/entitlements/TransactionReceipt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract trackRestorationFailed(Ljava/lang/String;)V
.end method

.method public abstract triggerRestoreInPaywall(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract willRedeemLink()V
.end method
