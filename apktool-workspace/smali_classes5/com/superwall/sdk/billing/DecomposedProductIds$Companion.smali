.class public final Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;
.super Ljava/lang/Object;
.source "DecomposedProductIds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/billing/DecomposedProductIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/billing/DecomposedProductIds;",
        "productId",
        "",
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

    invoke-direct {p0}, Lcom/superwall/sdk/billing/DecomposedProductIds$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/String;)Lcom/superwall/sdk/billing/DecomposedProductIds;
    .locals 8

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, ":"

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 31
    :cond_0
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    .line 32
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    new-instance v3, Lcom/superwall/sdk/billing/DecomposedProductIds;

    .line 36
    sget-object v4, Lcom/superwall/sdk/store/abstractions/product/BasePlanType;->Companion:Lcom/superwall/sdk/store/abstractions/product/BasePlanType$Companion;

    invoke-virtual {v4, v0}, Lcom/superwall/sdk/store/abstractions/product/BasePlanType$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/BasePlanType;

    move-result-object v0

    .line 37
    sget-object v4, Lcom/superwall/sdk/store/abstractions/product/OfferType;->Companion:Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;

    invoke-virtual {v4, v1}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;->from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/OfferType;

    move-result-object v1

    .line 34
    invoke-direct {v3, v2, v0, v1, p1}, Lcom/superwall/sdk/billing/DecomposedProductIds;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/abstractions/product/BasePlanType;Lcom/superwall/sdk/store/abstractions/product/OfferType;Ljava/lang/String;)V

    return-object v3
.end method
