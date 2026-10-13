.class public final Lcom/superwall/sdk/models/product/ProductItem;
.super Ljava/lang/Object;
.source "ProductItem.kt"

# interfaces
.implements Lcom/superwall/sdk/models/product/TemplatingProduct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/ProductItem$Companion;,
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \'2\u00020\u0001:\u0002&\'B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J7\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020$H\u00d6\u0001J\t\u0010%\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\r\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000f\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "Lcom/superwall/sdk/models/product/TemplatingProduct;",
        "compositeId",
        "",
        "name",
        "type",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
        "entitlements",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V",
        "getCompositeId$annotations",
        "()V",
        "getCompositeId",
        "()Ljava/lang/String;",
        "getName$annotations",
        "getName",
        "getType$annotations",
        "getType",
        "()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
        "getEntitlements$annotations",
        "getEntitlements",
        "()Ljava/util/Set;",
        "fullProductId",
        "getFullProductId",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "StoreProductType",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/superwall/sdk/models/product/ProductItemSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/product/ProductItem$Companion;


# instance fields
.field private final compositeId:Ljava/lang/String;

.field private final entitlements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/ProductItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductItem;->Companion:Lcom/superwall/sdk/models/product/ProductItem$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "compositeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    .line 344
    iput-object p4, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/ProductItem;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/ProductItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/ProductItem;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)Lcom/superwall/sdk/models/product/ProductItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCompositeId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "sw_composite_product_id"
    .end annotation

    return-void
.end method

.method public static synthetic getEntitlements$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "entitlements"
    .end annotation

    return-void
.end method

.method public static synthetic getName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "reference_name"
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store_product"
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    return-object v0
.end method

.method public final component4()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)Lcom/superwall/sdk/models/product/ProductItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;)",
            "Lcom/superwall/sdk/models/product/ProductItem;"
        }
    .end annotation

    const-string v0, "compositeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/ProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/ProductItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/ProductItem;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCompositeId()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntitlements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    return-object v0
.end method

.method public final getFullProductId()Ljava/lang/String;
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    .line 378
    instance-of v1, v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :cond_0
    instance-of v1, v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;->getProduct()Lcom/superwall/sdk/models/product/AppStoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/AppStoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_1
    instance-of v1, v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;->getProduct()Lcom/superwall/sdk/models/product/StripeProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :cond_2
    instance-of v1, v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;->getProduct()Lcom/superwall/sdk/models/product/PaddleProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/PaddleProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_3
    instance-of v1, v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;->getProduct()Lcom/superwall/sdk/models/product/UnknownStoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/UnknownStoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 377
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/models/product/ProductItem;->compositeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/ProductItem;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/ProductItem;->type:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    iget-object v3, p0, Lcom/superwall/sdk/models/product/ProductItem;->entitlements:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ProductItem(compositeId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entitlements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
