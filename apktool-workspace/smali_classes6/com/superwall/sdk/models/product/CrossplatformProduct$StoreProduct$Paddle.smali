.class public final Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;
.super Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;
.source "CrossplatformProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Paddle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0006H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;",
        "environment",
        "",
        "productIdentifier",
        "trialDays",
        "",
        "meta",
        "Lkotlinx/serialization/json/JsonObject;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)V",
        "getEnvironment$annotations",
        "()V",
        "getEnvironment",
        "()Ljava/lang/String;",
        "getProductIdentifier$annotations",
        "getProductIdentifier",
        "getTrialDays$annotations",
        "getTrialDays",
        "()I",
        "getMeta$annotations",
        "getMeta",
        "()Lkotlinx/serialization/json/JsonObject;",
        "toStoreProductType",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
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
    value = "PADDLE"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/superwall/sdk/models/product/PaddleSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;


# instance fields
.field private final environment:Ljava/lang/String;

.field private final meta:Lkotlinx/serialization/json/JsonObject;

.field private final productIdentifier:Ljava/lang/String;

.field private final trialDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)V
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    iput-object p1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    .line 116
    iput-object p4, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 117
    new-instance p4, Lkotlinx/serialization/json/JsonObject;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    invoke-direct {p4, p5}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->copy(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEnvironment$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "environment"
    .end annotation

    return-void
.end method

.method public static synthetic getMeta$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "meta"
    .end annotation

    return-void
.end method

.method public static synthetic getProductIdentifier$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "product_identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getTrialDays$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "trial_days"
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    return v0
.end method

.method public final component4()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlinx/serialization/json/JsonObject;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    iget v3, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public final getMeta()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method

.method public final getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrialDays()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toStoreProductType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
    .locals 8

    .line 120
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    .line 121
    iget-object v4, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    iget v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    move v2, v1

    new-instance v1, Lcom/superwall/sdk/models/product/PaddleProduct;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/models/product/PaddleProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;-><init>(Lcom/superwall/sdk/models/product/PaddleProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->environment:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->productIdentifier:Ljava/lang/String;

    iget v2, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->trialDays:I

    iget-object v3, p0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->meta:Lkotlinx/serialization/json/JsonObject;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Paddle(environment="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", productIdentifier="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trialDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meta="

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
