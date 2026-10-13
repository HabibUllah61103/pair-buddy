.class public abstract Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
.super Ljava/lang/Object;
.source "ProductItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/product/ProductItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StoreProductType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;,
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Companion;,
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;,
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;,
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;,
        Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00152\u00020\u0001:\u0006\u0010\u0011\u0012\u0013\u0014\u0015B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0005\u0016\u0017\u0018\u0019\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "PlayStore",
        "AppStore",
        "Stripe",
        "Paddle",
        "Other",
        "Companion",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;",
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

.field public static final Companion:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Companion;


# direct methods
.method public static synthetic $r8$lambda$TlMhi73Mqe-em9IKaj20VWqDic0()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;->Companion:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Companion;

    .line 347
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 10

    .line 347
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x5

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore$$serializer;

    aput-object v1, v4, v5

    sget-object v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other$$serializer;

    aput-object v1, v4, v6

    sget-object v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle$$serializer;

    aput-object v1, v4, v7

    sget-object v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore$$serializer;

    aput-object v1, v4, v8

    sget-object v1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe$$serializer;

    aput-object v1, v4, v9

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.superwall.sdk.models.product.ProductItem.StoreProductType"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 347
    sget-object v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
