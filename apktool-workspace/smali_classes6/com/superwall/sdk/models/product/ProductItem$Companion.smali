.class public final Lcom/superwall/sdk/models/product/ProductItem$Companion;
.super Ljava/lang/Object;
.source "ProductItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/product/ProductItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/ProductItem$Companion;",
        "",
        "<init>",
        "()V",
        "fromCrossplatformProduct",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "product",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/product/ProductItem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCrossplatformProduct(Lcom/superwall/sdk/models/product/CrossplatformProduct;)Lcom/superwall/sdk/models/product/ProductItem;
    .locals 4

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getEntitlements()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 390
    invoke-virtual {p1}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getStoreProduct()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;->toStoreProductType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object v2

    .line 391
    invoke-virtual {p1}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getCompositeId()Ljava/lang/String;

    move-result-object p1

    .line 387
    new-instance v3, Lcom/superwall/sdk/models/product/ProductItem;

    invoke-direct {v3, p1, v0, v2, v1}, Lcom/superwall/sdk/models/product/ProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V

    return-object v3
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/superwall/sdk/models/product/ProductItemSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItemSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
