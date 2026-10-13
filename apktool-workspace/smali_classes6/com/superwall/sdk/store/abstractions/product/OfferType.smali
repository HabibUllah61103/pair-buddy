.class public abstract Lcom/superwall/sdk/store/abstractions/product/OfferType;
.super Ljava/lang/Object;
.source "StoreProduct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/OfferType$Auto;,
        Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;,
        Lcom/superwall/sdk/store/abstractions/product/OfferType$None;,
        Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00192\u00020\u0001:\u0004\u0016\u0017\u0018\u0019B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\u0003\u001a\u001b\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/OfferType;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "specificId",
        "",
        "getSpecificId",
        "()Ljava/lang/String;",
        "toOffer",
        "Lcom/superwall/sdk/models/product/Offer;",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Auto",
        "None",
        "Specific",
        "Companion",
        "Lcom/superwall/sdk/store/abstractions/product/OfferType$Auto;",
        "Lcom/superwall/sdk/store/abstractions/product/OfferType$None;",
        "Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;",
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
.end annotation


# static fields
.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;


# direct methods
.method public static synthetic $r8$lambda$BqoJLYVgufnuEQzmcHRCQWjQBUw()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/OfferType;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/OfferType;->Companion:Lcom/superwall/sdk/store/abstractions/product/OfferType$Companion;

    .line 67
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/OfferType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/store/abstractions/product/OfferType$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/OfferType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/abstractions/product/OfferType;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 6

    .line 67
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/store/abstractions/product/OfferType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x0

    new-array v3, v1, [Lkotlin/reflect/KClass;

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.superwall.sdk.store.abstractions.product.OfferType"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 42
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/OfferType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/store/abstractions/product/OfferType;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getSpecificId()Ljava/lang/String;
    .locals 2

    .line 57
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final toOffer()Lcom/superwall/sdk/models/product/Offer;
    .locals 4

    .line 62
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Auto;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/superwall/sdk/models/product/Offer$Automatic;

    invoke-direct {v0, v2, v1, v2}, Lcom/superwall/sdk/models/product/Offer$Automatic;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/superwall/sdk/models/product/Offer;

    return-object v0

    .line 63
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/OfferType$None;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/superwall/sdk/models/product/Offer$NoOffer;->INSTANCE:Lcom/superwall/sdk/models/product/Offer$NoOffer;

    check-cast v0, Lcom/superwall/sdk/models/product/Offer;

    return-object v0

    .line 64
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/superwall/sdk/models/product/Offer$Specified;

    move-object v3, p0

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/OfferType$Specific;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/superwall/sdk/models/product/Offer$Specified;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/superwall/sdk/models/product/Offer;

    return-object v0

    .line 61
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
