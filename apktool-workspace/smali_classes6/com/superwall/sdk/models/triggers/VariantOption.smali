.class public final Lcom/superwall/sdk/models/triggers/VariantOption;
.super Ljava/lang/Object;
.source "VariantOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/triggers/VariantOption$$serializer;,
        Lcom/superwall/sdk/models/triggers/VariantOption$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 :2\u00020\u0001:\u0002:;B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\nBA\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000eJ\u0006\u0010\'\u001a\u00020#J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J3\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u00020\u0007H\u00d6\u0001J\t\u00101\u001a\u00020\u0005H\u00d6\u0001J%\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0001\u00a2\u0006\u0002\u00089R$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR&\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001f\u0010\u0010\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\u001c\u0010\"\u001a\u00020#8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008$\u0010\u0010\u001a\u0004\u0008%\u0010&\u00a8\u0006<"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/VariantOption;",
        "",
        "type",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;",
        "id",
        "",
        "percentage",
        "",
        "paywallId",
        "<init>",
        "(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getType$annotations",
        "()V",
        "getType",
        "()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;",
        "setType",
        "(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;)V",
        "getId$annotations",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "getPercentage$annotations",
        "getPercentage",
        "()I",
        "setPercentage",
        "(I)V",
        "getPaywallId$annotations",
        "getPaywallId",
        "setPaywallId",
        "variant",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "getVariant$annotations",
        "getVariant",
        "()Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "toVariant",
        "component1",
        "component2",
        "component3",
        "component4",
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
        "Companion",
        "$serializer",
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

.field public static final Companion:Lcom/superwall/sdk/models/triggers/VariantOption$Companion;


# instance fields
.field private id:Ljava/lang/String;

.field private paywallId:Ljava/lang/String;

.field private percentage:I

.field private type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

.field private final variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/triggers/VariantOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/VariantOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/triggers/VariantOption;->Companion:Lcom/superwall/sdk/models/triggers/VariantOption$Companion;

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->Companion:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/triggers/VariantOption;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p6, :cond_0

    .line 8
    sget-object p6, Lcom/superwall/sdk/models/triggers/VariantOption$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/VariantOption$$serializer;

    invoke-virtual {p6}, Lcom/superwall/sdk/models/triggers/VariantOption$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    iput p4, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/superwall/sdk/models/triggers/VariantOption;->toVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    .line 12
    iput-object p2, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    .line 16
    iput-object p4, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/superwall/sdk/models/triggers/VariantOption;->toVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/triggers/VariantOption;-><init>(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 8
    sget-object v0, Lcom/superwall/sdk/models/triggers/VariantOption;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/triggers/VariantOption;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/VariantOption;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/triggers/VariantOption;->copy(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)Lcom/superwall/sdk/models/triggers/VariantOption;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "variant_id"
    .end annotation

    return-void
.end method

.method public static synthetic getPaywallId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paywall_identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getPercentage$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "percentage"
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "variant_type"
    .end annotation

    return-void
.end method

.method public static synthetic getVariant$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/triggers/VariantOption;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 8
    sget-object v0, Lcom/superwall/sdk/models/triggers/VariantOption;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)Lcom/superwall/sdk/models/triggers/VariantOption;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/triggers/VariantOption;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/models/triggers/VariantOption;-><init>(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/VariantOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/triggers/VariantOption;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    iget v3, p1, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaywallId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPercentage()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    return v0
.end method

.method public final getType()Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    return-object v0
.end method

.method public final getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->variant:Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    return-void
.end method

.method public final setPaywallId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    return-void
.end method

.method public final setPercentage(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    return-void
.end method

.method public final setType(Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    iget v2, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->percentage:I

    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VariantOption(type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywallId="

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

.method public final toVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;
    .locals 4

    .line 23
    new-instance v0, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    .line 24
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->id:Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->type:Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;

    .line 26
    iget-object v3, p0, Lcom/superwall/sdk/models/triggers/VariantOption;->paywallId:Ljava/lang/String;

    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant$VariantType;Ljava/lang/String;)V

    return-object v0
.end method
