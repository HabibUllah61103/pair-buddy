.class public final Lcom/superwall/sdk/billing/DecomposedProductIds;
.super Ljava/lang/Object;
.source "DecomposedProductIds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/superwall/sdk/billing/DecomposedProductIds;",
        "",
        "subscriptionId",
        "",
        "basePlanType",
        "Lcom/superwall/sdk/store/abstractions/product/BasePlanType;",
        "offerType",
        "Lcom/superwall/sdk/store/abstractions/product/OfferType;",
        "fullId",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)V",
        "getSubscriptionId",
        "()Ljava/lang/String;",
        "getBasePlanType",
        "()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;",
        "getOfferType",
        "()Lcom/superwall/sdk/store/abstractions/product/OfferType;",
        "getFullId",
        "basePlanId",
        "getBasePlanId",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;


# instance fields
.field private final basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

.field private final fullId:Ljava/lang/String;

.field private final offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

.field private final subscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/billing/DecomposedProductIds;->Companion:Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "subscriptionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basePlanType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    .line 22
    iput-object p4, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/billing/DecomposedProductIds;Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/billing/DecomposedProductIds;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/billing/DecomposedProductIds;->copy(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)Lcom/superwall/sdk/billing/DecomposedProductIds;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/store/abstractions/product/OfferType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)Lcom/superwall/sdk/billing/DecomposedProductIds;
    .locals 1

    const-string/jumbo v0, "subscriptionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basePlanType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/billing/DecomposedProductIds;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/billing/DecomposedProductIds;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/billing/DecomposedProductIds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/billing/DecomposedProductIds;

    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    iget-object v3, p1, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    iget-object v3, p1, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBasePlanId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/BasePlanType;->getSpecificId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBasePlanType()Lcom/superwall/sdk/store/abstractions/product/BasePlanType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    return-object v0
.end method

.method public final getFullId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfferType()Lcom/superwall/sdk/store/abstractions/product/OfferType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    return-object v0
.end method

.method public final getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/BasePlanType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/OfferType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->subscriptionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->basePlanType:Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    iget-object v2, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->offerType:Lcom/superwall/sdk/store/abstractions/product/OfferType;

    iget-object v3, p0, Lcom/superwall/sdk/billing/DecomposedProductIds;->fullId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DecomposedProductIds(subscriptionId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", basePlanType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
