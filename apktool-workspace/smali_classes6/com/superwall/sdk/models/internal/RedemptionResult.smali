.class public abstract Lcom/superwall/sdk/models/internal/RedemptionResult;
.super Ljava/lang/Object;
.source "WebRedemption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$Error;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;,
        Lcom/superwall/sdk/models/internal/RedemptionResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \"2\u00020\u0001:\u0007\u001c\u001d\u001e\u001f !\"B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u0012\u0010\t\u001a\u00020\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010\u0082\u0001\u0005#$%&\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/models/internal/RedemptionResult;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "code",
        "",
        "getCode",
        "()Ljava/lang/String;",
        "stripeSubscriptionId",
        "",
        "getStripeSubscriptionId",
        "()Ljava/util/List;",
        "paddleSubscriptionIds",
        "getPaddleSubscriptionIds",
        "subscriptionIds",
        "getSubscriptionIds",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Success",
        "Error",
        "Expired",
        "InvalidCode",
        "ExpiredSubscription",
        "PaywallInfo",
        "Companion",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$Error;",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;",
        "Lcom/superwall/sdk/models/internal/RedemptionResult$Success;",
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

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "status"
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

.field public static final Companion:Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;


# direct methods
.method public static synthetic $r8$lambda$L72GjwAknRqIHFUSfnJRbBNAeVQ()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/models/internal/RedemptionResult;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/internal/RedemptionResult;->Companion:Lcom/superwall/sdk/models/internal/RedemptionResult$Companion;

    .line 39
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/models/internal/RedemptionResult$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/models/internal/RedemptionResult$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/internal/RedemptionResult;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 10

    .line 39
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/models/internal/RedemptionResult;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x5

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/superwall/sdk/models/internal/RedemptionResult$Error;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/superwall/sdk/models/internal/RedemptionResult$Expired;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/superwall/sdk/models/internal/RedemptionResult$Error$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionResult$Error$$serializer;

    aput-object v1, v4, v5

    sget-object v1, Lcom/superwall/sdk/models/internal/RedemptionResult$Expired$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionResult$Expired$$serializer;

    aput-object v1, v4, v6

    sget-object v1, Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionResult$ExpiredSubscription$$serializer;

    aput-object v1, v4, v7

    sget-object v1, Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$$serializer;->INSTANCE:Lcom/superwall/sdk/models/internal/RedemptionResult$InvalidCode$$serializer;

    aput-object v1, v4, v8

    sget-object v1, Lcom/superwall/sdk/models/internal/DirectSuccessSerializer;->INSTANCE:Lcom/superwall/sdk/models/internal/DirectSuccessSerializer;

    aput-object v1, v4, v9

    new-array v1, v6, [Ljava/lang/annotation/Annotation;

    .line 40
    new-instance v6, Lcom/superwall/sdk/models/internal/RedemptionResult$Error$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v7, "status"

    invoke-direct {v6, v7}, Lcom/superwall/sdk/models/internal/RedemptionResult$Error$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v5

    move-object v5, v1

    .line 39
    const-string v1, "com.superwall.sdk.models.internal.RedemptionResult"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 39
    sget-object v0, Lcom/superwall/sdk/models/internal/RedemptionResult;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/models/internal/RedemptionResult;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public abstract getCode()Ljava/lang/String;
.end method

.method public final getPaddleSubscriptionIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    if-eqz v0, :cond_3

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getPurchaserInfo()Lcom/superwall/sdk/models/internal/PurchaserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getStoreIdentifiers()Lcom/superwall/sdk/models/internal/StoreIdentifiers;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    instance-of v1, v1, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getPurchaserInfo()Lcom/superwall/sdk/models/internal/PurchaserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getStoreIdentifiers()Lcom/superwall/sdk/models/internal/StoreIdentifiers;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Paddle;->getPaddleSubscriptionIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 70
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 73
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStripeSubscriptionId()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    instance-of v0, p0, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    if-eqz v0, :cond_3

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getPurchaserInfo()Lcom/superwall/sdk/models/internal/PurchaserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getStoreIdentifiers()Lcom/superwall/sdk/models/internal/StoreIdentifiers;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 49
    :goto_0
    instance-of v1, v1, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionResult$Success;->getRedemptionInfo()Lcom/superwall/sdk/models/internal/RedemptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/RedemptionInfo;->getPurchaserInfo()Lcom/superwall/sdk/models/internal/PurchaserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/PurchaserInfo;->getStoreIdentifiers()Lcom/superwall/sdk/models/internal/StoreIdentifiers;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/superwall/sdk/models/internal/StoreIdentifiers$Stripe;->getSubscriptionIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 53
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 55
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 57
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSubscriptionIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getStripeSubscriptionId()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/superwall/sdk/models/internal/RedemptionResult;->getPaddleSubscriptionIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
