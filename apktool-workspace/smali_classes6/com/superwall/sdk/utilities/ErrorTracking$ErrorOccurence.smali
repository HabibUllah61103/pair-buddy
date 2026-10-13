.class public final Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;
.super Ljava/lang/Object;
.source "ErrorTracking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/utilities/ErrorTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorOccurence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$$serializer;,
        Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000201B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bBI\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\n\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010$\u001a\u00020\t2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\rH\u00d6\u0001J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0001\u00a2\u0006\u0002\u0008/R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0014R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0014R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u0008\u0010\u001d\u00a8\u00062"
    }
    d2 = {
        "Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;",
        "",
        "type",
        "",
        "message",
        "stacktrace",
        "timestamp",
        "",
        "isFatal",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getType$annotations",
        "()V",
        "getType",
        "()Ljava/lang/String;",
        "getMessage$annotations",
        "getMessage",
        "getStacktrace$annotations",
        "getStacktrace",
        "getTimestamp$annotations",
        "getTimestamp",
        "()J",
        "isFatal$annotations",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field public static final Companion:Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$Companion;


# instance fields
.field private final isFatal:Z

.field private final message:Ljava/lang/String;

.field private final stacktrace:Ljava/lang/String;

.field private final timestamp:J

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->Companion:Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p8, :cond_0

    .line 25
    sget-object p8, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$$serializer;->INSTANCE:Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$$serializer;

    invoke-virtual {p8}, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    iput-wide p5, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    iput-boolean p7, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stacktrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    .line 33
    iput-wide p4, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    .line 35
    iput-boolean p6, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Object;)Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-wide p4, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-boolean p6, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    :cond_4
    move p8, p6

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p8}, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMessage$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "message"
    .end annotation

    return-void
.end method

.method public static synthetic getStacktrace$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "stacktrace"
    .end annotation

    return-void
.end method

.method public static synthetic getTimestamp$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "timestamp"
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "type"
    .end annotation

    return-void
.end method

.method public static synthetic isFatal$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "isFatal"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x4

    iget-boolean p0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    return-wide v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stacktrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;

    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    iget-wide v5, p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStacktrace()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFatal()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->stacktrace:Ljava/lang/String;

    iget-wide v3, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->timestamp:J

    iget-boolean v5, p0, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;->isFatal:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ErrorOccurence(type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", message="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stacktrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFatal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
