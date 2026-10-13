.class public final Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;
.super Ljava/lang/Object;
.source "StripeProductType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/product/StripeProductType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionIntroductoryOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$$serializer;,
        Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$Companion;,
        Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 72\u00020\u0001:\u0003567B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rBK\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\u0011J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0007H\u00c6\u0003J\t\u0010%\u001a\u00020\tH\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003J;\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\tH\u00d6\u0001J\t\u0010,\u001a\u00020\u0005H\u00d6\u0001J%\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0001\u00a2\u0006\u0002\u00084R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0013\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0013\u001a\u0004\u0008 \u0010!\u00a8\u00068"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;",
        "",
        "period",
        "Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;",
        "localizedPrice",
        "",
        "price",
        "Ljava/math/BigDecimal;",
        "periodCount",
        "",
        "paymentMethod",
        "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;",
        "<init>",
        "(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getPeriod$annotations",
        "()V",
        "getPeriod",
        "()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;",
        "getLocalizedPrice$annotations",
        "getLocalizedPrice",
        "()Ljava/lang/String;",
        "getPrice$annotations",
        "getPrice",
        "()Ljava/math/BigDecimal;",
        "getPeriodCount$annotations",
        "getPeriodCount",
        "()I",
        "getPaymentMethod$annotations",
        "getPaymentMethod",
        "()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "PaymentMethod",
        "$serializer",
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
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$Companion;


# instance fields
.field private final localizedPrice:Ljava/lang/String;

.field private final paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

.field private final period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

.field private final periodCount:I

.field private final price:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->Companion:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$Companion;

    const/4 v0, 0x5

    .line 72
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;->Companion:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 72
    sget-object p7, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$$serializer;

    invoke-virtual {p7}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    iput-object p3, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    iput p5, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    iput-object p6, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;)V
    .locals 1

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizedPrice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    .line 76
    iput-object p2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    .line 81
    iput p4, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    .line 83
    iput-object p5, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 72
    sget-object v0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->copy(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;)Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLocalizedPrice$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "price"
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "payment_method"
    .end annotation

    return-void
.end method

.method public static synthetic getPeriod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "period"
    .end annotation

    return-void
.end method

.method public static synthetic getPeriodCount$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "period_count"
    .end annotation

    return-void
.end method

.method public static synthetic getPrice$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "raw_price"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/BigDecimalSerializer;
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 72
    sget-object v0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/serialization/BigDecimalSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/BigDecimalSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    return v0
.end method

.method public final component5()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;)Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;
    .locals 7

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizedPrice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;-><init>(Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    iget v3, p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLocalizedPrice()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethod()Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    return-object v0
.end method

.method public final getPeriod()Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    return-object v0
.end method

.method public final getPeriodCount()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    return v0
.end method

.method public final getPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->period:Lcom/superwall/sdk/models/product/StripeProductType$StripeSubscriptionPeriod;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->localizedPrice:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->price:Ljava/math/BigDecimal;

    iget v3, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->periodCount:I

    iget-object v4, p0, Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;->paymentMethod:Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer$PaymentMethod;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SubscriptionIntroductoryOffer(period="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", localizedPrice="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
