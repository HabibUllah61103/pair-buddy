.class public final Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;
.super Ljava/lang/Object;
.source "StoreProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/OfferType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/superwall/sdk/store/abstractions/product/OfferType;",
        "value",
        "",
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;-><init>()V

    return-void
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 67
    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/OfferType;->access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public final from(Ljava/lang/String;)Lcom/superwall/sdk/store/abstractions/product/OfferType;
    .locals 1

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sw-auto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "sw-none"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/OfferType$None;->INSTANCE:Lcom/superwall/sdk/store/abstractions/product/OfferType$None;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/OfferType;

    return-object p1

    .line 73
    :cond_2
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/OfferType;

    return-object v0

    .line 71
    :cond_3
    :goto_0
    sget-object p1, Lcom/superwall/sdk/store/abstractions/product/OfferType$Auto;->INSTANCE:Lcom/superwall/sdk/store/abstractions/product/OfferType$Auto;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/OfferType;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/superwall/sdk/store/abstractions/product/OfferType;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
