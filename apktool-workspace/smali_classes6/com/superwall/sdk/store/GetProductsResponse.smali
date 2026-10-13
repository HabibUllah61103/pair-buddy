.class public final Lcom/superwall/sdk/store/GetProductsResponse;
.super Ljava/lang/Object;
.source "StoreKitManagerInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003J\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\nH\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0004H\u00d6\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/superwall/sdk/store/GetProductsResponse;",
        "",
        "productsByFullId",
        "",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "productItems",
        "",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "<init>",
        "(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)V",
        "getProductsByFullId",
        "()Ljava/util/Map;",
        "getProductItems",
        "()Ljava/util/List;",
        "getPaywall",
        "()Lcom/superwall/sdk/models/paywall/Paywall;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field private final productItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private final productsByFullId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ")V"
        }
    .end annotation

    const-string v0, "productsByFullId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    .line 14
    iput-object p2, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    .line 15
    iput-object p3, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/store/GetProductsResponse;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/GetProductsResponse;Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;ILjava/lang/Object;)Lcom/superwall/sdk/store/GetProductsResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/store/GetProductsResponse;->copy(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)Lcom/superwall/sdk/store/GetProductsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)Lcom/superwall/sdk/store/GetProductsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ")",
            "Lcom/superwall/sdk/store/GetProductsResponse;"
        }
    .end annotation

    const-string v0, "productsByFullId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/store/GetProductsResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/store/GetProductsResponse;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/GetProductsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/GetProductsResponse;

    iget-object v1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    iget-object v3, p1, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object p1, p1, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    return-object v0
.end method

.method public final getProductItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    return-object v0
.end method

.method public final getProductsByFullId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productsByFullId:Ljava/util/Map;

    iget-object v1, p0, Lcom/superwall/sdk/store/GetProductsResponse;->productItems:Ljava/util/List;

    iget-object v2, p0, Lcom/superwall/sdk/store/GetProductsResponse;->paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetProductsResponse(productsByFullId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", productItems="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
