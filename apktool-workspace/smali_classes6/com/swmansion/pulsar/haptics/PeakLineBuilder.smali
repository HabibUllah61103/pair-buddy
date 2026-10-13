.class public final Lcom/swmansion/pulsar/haptics/PeakLineBuilder;
.super Ljava/lang/Object;
.source "PeakLineBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeakLineBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeakLineBuilder.kt\ncom/swmansion/pulsar/haptics/PeakLineBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1863#2,2:54\n*S KotlinDebug\n*F\n+ 1 PeakLineBuilder.kt\ncom/swmansion/pulsar/haptics/PeakLineBuilder\n*L\n27#1:54,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u001c\u0010\u000c\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0007J&\u0010\r\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0011\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/PeakLineBuilder;",
        "",
        "minTransitionDuration",
        "",
        "<init>",
        "(J)V",
        "convertToContinuousPatternOfAmplitude",
        "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;",
        "pattern",
        "",
        "Lcom/swmansion/pulsar/types/ConfigPoint;",
        "baseline",
        "convertToContinuousPatternOfFrequency",
        "convertToContinuousPattern",
        "useAmplitude",
        "",
        "peakTiming",
        "time",
        "Pulsar_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final minTransitionDuration:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->minTransitionDuration:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0xf

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;-><init>(J)V

    return-void
.end method

.method private final convertToContinuousPattern(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Z)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;",
            "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;",
            "Z)",
            "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/pulsar/types/ConfigPoint;

    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v3

    .line 29
    :goto_1
    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->peakTiming(J)Ljava/util/List;

    move-result-object v1

    .line 30
    new-instance v4, Lcom/swmansion/pulsar/types/ValuePoint;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->valueForX(J)F

    move-result v5

    invoke-direct {v4, v6, v7, v5}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 31
    new-instance v5, Lcom/swmansion/pulsar/types/ValuePoint;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v3}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 32
    new-instance v6, Lcom/swmansion/pulsar/types/ValuePoint;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v3}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 33
    new-instance v3, Lcom/swmansion/pulsar/types/ValuePoint;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {p2, v10, v11}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->valueForX(J)F

    move-result v1

    invoke-direct {v3, v8, v9, v1}, Lcom/swmansion/pulsar/types/ValuePoint;-><init>(JF)V

    .line 34
    invoke-virtual {v0, v4}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    .line 35
    invoke-virtual {v0, v5}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    .line 36
    invoke-virtual {v0, v6}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    .line 37
    invoke-virtual {v0, v3}, Lcom/swmansion/pulsar/haptics/ValueLineBuilder;->pushPoint(Lcom/swmansion/pulsar/types/ValuePoint;)V

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private final peakTiming(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 43
    iget-wide v0, p0, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->minTransitionDuration:J

    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    long-to-double v0, v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v4

    double-to-long v0, v0

    const/4 v4, 0x4

    .line 46
    new-array v4, v4, [Ljava/lang/Long;

    sub-long v2, p1, v2

    const/4 v5, 0x2

    int-to-long v6, v5

    div-long/2addr v0, v6

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    sub-long v2, p1, v0

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    add-long/2addr p1, v0

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v4, p2

    .line 45
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final convertToContinuousPatternOfAmplitude(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;",
            "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;",
            ")",
            "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;"
        }
    .end annotation

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->convertToContinuousPattern(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Z)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final convertToContinuousPatternOfFrequency(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ">;",
            "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;",
            ")",
            "Lcom/swmansion/pulsar/haptics/ValueLineBuilder;"
        }
    .end annotation

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/swmansion/pulsar/haptics/PeakLineBuilder;->convertToContinuousPattern(Ljava/util/List;Lcom/swmansion/pulsar/haptics/ValueLineBuilder;Z)Lcom/swmansion/pulsar/haptics/ValueLineBuilder;

    move-result-object p1

    return-object p1
.end method
