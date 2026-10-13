.class public final Lcom/superwall/sdk/models/product/PlayStoreProduct;
.super Ljava/lang/Object;
.source "ProductItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/PlayStoreProduct$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0005H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/PlayStoreProduct;",
        "",
        "store",
        "Lcom/superwall/sdk/models/product/Store;",
        "productIdentifier",
        "",
        "basePlanIdentifier",
        "offer",
        "Lcom/superwall/sdk/models/product/Offer;",
        "<init>",
        "(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V",
        "getStore$annotations",
        "()V",
        "getStore",
        "()Lcom/superwall/sdk/models/product/Store;",
        "getProductIdentifier$annotations",
        "getProductIdentifier",
        "()Ljava/lang/String;",
        "getBasePlanIdentifier$annotations",
        "getBasePlanIdentifier",
        "getOffer$annotations",
        "getOffer",
        "()Lcom/superwall/sdk/models/product/Offer;",
        "fullIdentifier",
        "getFullIdentifier",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
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

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/product/PlayStoreProduct$Companion;


# instance fields
.field private final basePlanIdentifier:Ljava/lang/String;

.field private final offer:Lcom/superwall/sdk/models/product/Offer;

.field private final productIdentifier:Ljava/lang/String;

.field private final store:Lcom/superwall/sdk/models/product/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/product/PlayStoreProduct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/PlayStoreProduct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->Companion:Lcom/superwall/sdk/models/product/PlayStoreProduct$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basePlanIdentifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    .line 88
    iput-object p2, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    .line 87
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 85
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/PlayStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/PlayStoreProduct;Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/PlayStoreProduct;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->copy(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getBasePlanIdentifier$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "base_plan_identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getOffer$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "offer"
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

.method public static synthetic getStore$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store"
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/models/product/Offer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)Lcom/superwall/sdk/models/product/PlayStoreProduct;
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basePlanIdentifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/product/PlayStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBasePlanIdentifier()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullIdentifier()Ljava/lang/String;
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    instance-of v1, v0, Lcom/superwall/sdk/models/product/Offer$Automatic;

    const-string v2, ":"

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":sw-auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    instance-of v1, v0, Lcom/superwall/sdk/models/product/Offer$NoOffer;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":sw-none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_2
    instance-of v1, v0, Lcom/superwall/sdk/models/product/Offer$Specified;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    check-cast v0, Lcom/superwall/sdk/models/product/Offer$Specified;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/Offer$Specified;->getOfferIdentifier()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOffer()Lcom/superwall/sdk/models/product/Offer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    return-object v0
.end method

.method public final getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getStore()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/Store;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Offer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->basePlanIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/models/product/PlayStoreProduct;->offer:Lcom/superwall/sdk/models/product/Offer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PlayStoreProduct(store="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", productIdentifier="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", basePlanIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offer="

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
