.class public final Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;
.super Ljava/lang/Object;
.source "SuperwallBillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductDetailsParamsBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;",
        "",
        "<init>",
        "()V",
        "builder",
        "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;",
        "details",
        "Lcom/android/billingclient/api/ProductDetails;",
        "getDetails$superwall_release",
        "()Lcom/android/billingclient/api/ProductDetails;",
        "setDetails$superwall_release",
        "(Lcom/android/billingclient/api/ProductDetails;)V",
        "setOfferToken",
        "offerToken",
        "",
        "setProductDetails",
        "productDetails",
        "build",
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
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
.field private final builder:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

.field private details:Lcom/android/billingclient/api/ProductDetails;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->builder:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    return-void
.end method


# virtual methods
.method public final build()Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->details:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;

    .line 86
    iget-object v2, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->builder:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 85
    invoke-direct {v1, v2, v0, v3}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;-><init>(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;Lcom/android/billingclient/api/ProductDetails;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetails are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDetails$superwall_release()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->details:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method

.method public final setDetails$superwall_release(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->details:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method

.method public final setOfferToken(Ljava/lang/String;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;
    .locals 1

    const-string v0, "offerToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;

    .line 72
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->builder:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    return-object p0
.end method

.method public final setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;
    .locals 1

    const-string v0, "productDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;

    .line 77
    iput-object p1, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->details:Lcom/android/billingclient/api/ProductDetails;

    .line 78
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;->builder:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    return-object p0
.end method
