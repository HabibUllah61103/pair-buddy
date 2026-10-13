.class public final Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
.super Ljava/lang/Object;
.source "TriggerRuleOccurrence.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$$serializer;,
        Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Companion;,
        Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;,
        Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u0003012B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB7\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\rJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0001\u00a2\u0006\u0002\u0008/R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u000f\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u00020\u001b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u000f\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00063"
    }
    d2 = {
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "",
        "key",
        "",
        "maxCount",
        "",
        "rawInterval",
        "Lcom/superwall/sdk/models/triggers/RawInterval;",
        "<init>",
        "(Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getKey$annotations",
        "()V",
        "getKey",
        "()Ljava/lang/String;",
        "getMaxCount$annotations",
        "getMaxCount",
        "()I",
        "setMaxCount",
        "(I)V",
        "getRawInterval$annotations",
        "getRawInterval",
        "()Lcom/superwall/sdk/models/triggers/RawInterval;",
        "interval",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;",
        "getInterval$annotations",
        "getInterval",
        "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;",
        "component1",
        "component2",
        "component3",
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
        "Interval",
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
.field public static final Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Companion;


# instance fields
.field private final interval:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

.field private final key:Ljava/lang/String;

.field private maxCount:I

.field private final rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 23
    sget-object p5, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$$serializer;

    invoke-virtual {p5}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    iput p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    iput-object p4, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    .line 34
    invoke-virtual {p4}, Lcom/superwall/sdk/models/triggers/RawInterval;->getType()Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;

    move-result-object p1

    sget-object p2, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 36
    sget-object p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    goto :goto_1

    .line 34
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 35
    :cond_2
    new-instance p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;

    invoke-virtual {p4}, Lcom/superwall/sdk/models/triggers/RawInterval;->getMinutes()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;-><init>(I)V

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    .line 23
    :goto_1
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->interval:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawInterval"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    .line 29
    iput-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    .line 34
    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/RawInterval;->getType()Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;

    move-result-object p1

    sget-object p2, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 36
    sget-object p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    goto :goto_1

    .line 34
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;

    invoke-virtual {p3}, Lcom/superwall/sdk/models/triggers/RawInterval;->getMinutes()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;-><init>(I)V

    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    .line 34
    :goto_1
    iput-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->interval:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;ILjava/lang/Object;)Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->copy(Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;)Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getInterval$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getKey$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "key"
    .end annotation

    return-void
.end method

.method public static synthetic getMaxCount$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "max_count"
    .end annotation

    return-void
.end method

.method public static synthetic getRawInterval$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "interval"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lcom/superwall/sdk/models/triggers/RawInterval$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/RawInterval$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    return v0
.end method

.method public final component3()Lcom/superwall/sdk/models/triggers/RawInterval;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;)Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawInterval"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;-><init>(Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    iget v3, p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    iget-object p1, p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInterval()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->interval:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxCount()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    return v0
.end method

.method public final getRawInterval()Lcom/superwall/sdk/models/triggers/RawInterval;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/RawInterval;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setMaxCount(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->key:Ljava/lang/String;

    iget v1, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->maxCount:I

    iget-object v2, p0, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->rawInterval:Lcom/superwall/sdk/models/triggers/RawInterval;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TriggerRuleOccurrence(key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", maxCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawInterval="

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
