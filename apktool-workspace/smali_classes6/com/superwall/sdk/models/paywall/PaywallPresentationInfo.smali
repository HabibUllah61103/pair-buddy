.class public final Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
.super Ljava/lang/Object;
.source "PaywallPresentationInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 &2\u00020\u0001:\u0002%&B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B-\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001\u00a2\u0006\u0002\u0008$R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
        "",
        "style",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "delay",
        "",
        "<init>",
        "(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getStyle$annotations",
        "()V",
        "getStyle",
        "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "getDelay$annotations",
        "getDelay",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
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

.field public static final Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$Companion;


# instance fields
.field private final delay:J

.field private final style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$Companion;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p5, :cond_0

    .line 7
    sget-object p5, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;

    invoke-virtual {p5}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iput-wide p3, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    .line 14
    iput-wide p2, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 7
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->copy(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDelay$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "delay"
    .end annotation

    return-void
.end method

.method public static synthetic getStyle$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "style"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 7
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    return-wide v0
.end method

.method public final copy(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;-><init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    iget-wide v5, p1, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDelay()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    return-wide v0
.end method

.method public final getStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->style:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-wide v1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->delay:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PaywallPresentationInfo(style="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", delay="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
