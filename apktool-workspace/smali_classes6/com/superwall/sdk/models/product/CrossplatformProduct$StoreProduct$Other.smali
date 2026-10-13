.class public final Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;
.super Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;
.source "CrossplatformProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Other"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \"2\u00020\u0001:\u0001\"B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c2\u0003J\'\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u0016\u0010\u0005\u001a\u00020\u00068\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000f\u0010\nR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;",
        "storeType",
        "",
        "productIdentifier",
        "_data",
        "Lkotlinx/serialization/json/JsonObject;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V",
        "getStoreType$annotations",
        "()V",
        "getStoreType",
        "()Ljava/lang/String;",
        "getProductIdentifier$annotations",
        "getProductIdentifier",
        "get_data$annotations",
        "data",
        "",
        "Lkotlinx/serialization/json/JsonElement;",
        "getData",
        "()Ljava/util/Map;",
        "toStoreProductType",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "OTHER"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/superwall/sdk/models/product/OtherSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;


# instance fields
.field private final _data:Lkotlinx/serialization/json/JsonObject;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation
.end field

.field private final productIdentifier:Ljava/lang/String;

.field private final storeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 1

    const-string v0, "storeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    iput-object p1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    .line 135
    check-cast p3, Ljava/util/Map;

    invoke-static {p3}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->data:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 133
    new-instance p3, Lkotlinx/serialization/json/JsonObject;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    invoke-direct {p3, p4}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    return-void
.end method

.method private final component3()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->copy(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getProductIdentifier$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "product_identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getStoreType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store"
    .end annotation

    return-void
.end method

.method private static synthetic get_data$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "metadata"
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;
    .locals 1

    const-string v0, "storeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->data:Ljava/util/Map;

    return-object v0
.end method

.method public final getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toStoreProductType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
    .locals 5

    .line 138
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    .line 139
    new-instance v1, Lcom/superwall/sdk/models/product/UnknownStoreProduct;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/superwall/sdk/models/product/UnknownStoreProduct;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/product/Store;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;-><init>(Lcom/superwall/sdk/models/product/UnknownStoreProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->storeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->productIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->_data:Lkotlinx/serialization/json/JsonObject;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Other(storeType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", productIdentifier="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _data="

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
