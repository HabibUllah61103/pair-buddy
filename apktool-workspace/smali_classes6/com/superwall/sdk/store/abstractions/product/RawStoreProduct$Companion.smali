.class public final Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;
.super Ljava/lang/Object;
.source "RawStoreProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;",
        "details",
        "Lcom/android/billingclient/api/ProductDetails;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;
    .locals 4

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/superwall/sdk/billing/DecomposedProductIds;->Companion:Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProductId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/billing/DecomposedProductIds;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    .line 32
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getBasePlanType()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    move-result-object v2

    .line 34
    invoke-virtual {v0}, Lcom/superwall/sdk/billing/DecomposedProductIds;->getOfferType()Lcom/superwall/sdk/store/abstractions/product/OfferType;

    move-result-object v0

    .line 30
    invoke-direct {v1, p1, v3, v2, v0}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;-><init>(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;)V

    return-object v1
.end method
