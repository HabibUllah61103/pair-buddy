.class public final Lcom/superwall/sdk/storage/ReviewCount;
.super Ljava/lang/Object;
.source "CacheKeys.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/storage/ReviewCount$$serializer;,
        Lcom/superwall/sdk/storage/ReviewCount$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheKeys.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheKeys.kt\ncom/superwall/sdk/storage/ReviewCount\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n1#2:455\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 (2\u00020\u0001:\u0002\'(B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B+\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J%\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0001\u00a2\u0006\u0002\u0008&R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006)"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/ReviewCount;",
        "",
        "timesQueried",
        "",
        "timestamp",
        "",
        "<init>",
        "(IJ)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IIJLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getTimesQueried$annotations",
        "()V",
        "getTimesQueried",
        "()I",
        "getTimestamp",
        "()J",
        "date",
        "Ljava/util/Date;",
        "getDate",
        "()Ljava/util/Date;",
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
.field public static final Companion:Lcom/superwall/sdk/storage/ReviewCount$Companion;


# instance fields
.field private final timesQueried:I

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/storage/ReviewCount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/storage/ReviewCount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/storage/ReviewCount;->Companion:Lcom/superwall/sdk/storage/ReviewCount$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/storage/ReviewCount;-><init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IIJLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput p2, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 447
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 443
    iput-wide p1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    return-void

    :cond_1
    iput-wide p3, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput p1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    .line 447
    iput-wide p2, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 447
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    .line 444
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/storage/ReviewCount;-><init>(IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/storage/ReviewCount;IJILjava/lang/Object;)Lcom/superwall/sdk/storage/ReviewCount;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/storage/ReviewCount;->copy(IJ)Lcom/superwall/sdk/storage/ReviewCount;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTimesQueried$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "times_queried"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/storage/ReviewCount;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 443
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    if-eqz v1, :cond_1

    :goto_0
    iget v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    .line 447
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 443
    :goto_1
    iget-wide v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    return-wide v0
.end method

.method public final copy(IJ)Lcom/superwall/sdk/storage/ReviewCount;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/storage/ReviewCount;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/storage/ReviewCount;-><init>(IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/storage/ReviewCount;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/storage/ReviewCount;

    iget v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    iget v3, p1, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    iget-wide v5, p1, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 3

    .line 450
    iget-wide v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public final getTimesQueried()I
    .locals 1

    .line 445
    iget v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 447
    iget-wide v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/superwall/sdk/storage/ReviewCount;->timesQueried:I

    iget-wide v1, p0, Lcom/superwall/sdk/storage/ReviewCount;->timestamp:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ReviewCount(timesQueried="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", timestamp="

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
