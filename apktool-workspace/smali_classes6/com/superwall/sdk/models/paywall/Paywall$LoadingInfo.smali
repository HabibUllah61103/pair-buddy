.class public final Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
.super Ljava/lang/Object;
.source "Paywall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/paywall/Paywall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$$serializer;,
        Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 ,2\u00020\u0001:\u0002+,B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B9\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J-\u0010\u001c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\tH\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0001\u00a2\u0006\u0002\u0008*R&\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R&\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R&\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012\u00a8\u0006-"
    }
    d2 = {
        "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
        "",
        "startAt",
        "Ljava/util/Date;",
        "endAt",
        "failAt",
        "<init>",
        "(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/Date;Ljava/util/Date;Ljava/util/Date;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getStartAt$annotations",
        "()V",
        "getStartAt",
        "()Ljava/util/Date;",
        "setStartAt",
        "(Ljava/util/Date;)V",
        "getEndAt$annotations",
        "getEndAt",
        "setEndAt",
        "getFailAt$annotations",
        "getFailAt",
        "setFailAt",
        "component1",
        "component2",
        "component3",
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
.field public static final Companion:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$Companion;


# instance fields
.field private endAt:Ljava/util/Date;

.field private failAt:Ljava/util/Date;

.field private startAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->Companion:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Date;Ljava/util/Date;Ljava/util/Date;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    .line 225
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    .line 227
    iput-object p3, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 222
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->copy(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEndAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getFailAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getStartAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/DateSerializer;
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 221
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component2()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    iget-object p1, p1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEndAt()Ljava/util/Date;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getFailAt()Ljava/util/Date;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getStartAt()Ljava/util/Date;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setEndAt(Ljava/util/Date;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    return-void
.end method

.method public final setFailAt(Ljava/util/Date;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    return-void
.end method

.method public final setStartAt(Ljava/util/Date;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->startAt:Ljava/util/Date;

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->endAt:Ljava/util/Date;

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->failAt:Ljava/util/Date;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoadingInfo(startAt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", endAt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
