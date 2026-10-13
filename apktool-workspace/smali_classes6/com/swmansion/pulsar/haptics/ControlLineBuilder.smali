.class public final Lcom/swmansion/pulsar/haptics/ControlLineBuilder;
.super Ljava/lang/Object;
.source "ControlLineBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bJ\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bJ4\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/ControlLineBuilder;",
        "",
        "configLine",
        "Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;)V",
        "getConfigLine",
        "()Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;",
        "getStepsPoints",
        "Ljava/util/ArrayList;",
        "Lcom/swmansion/pulsar/types/ControlPoint;",
        "Lkotlin/collections/ArrayList;",
        "getLinearPoints",
        "averageValuesInSegment",
        "Lkotlin/Pair;",
        "",
        "startTime",
        "",
        "endTime",
        "startPoint",
        "Lcom/swmansion/pulsar/types/ConfigPoint;",
        "endPoint",
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
.field private final configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;)V
    .locals 1

    const-string v0, "configLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    return-void
.end method

.method private final averageValuesInSegment(JJLcom/swmansion/pulsar/types/ConfigPoint;Lcom/swmansion/pulsar/types/ConfigPoint;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            "Lcom/swmansion/pulsar/types/ConfigPoint;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v0

    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 107
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 111
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v0

    sub-long/2addr p3, v0

    long-to-float p3, p3

    div-float/2addr p3, p2

    .line 114
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result p2

    invoke-virtual {p6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result p4

    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v0

    sub-float/2addr p4, v0

    mul-float/2addr p4, p1

    add-float/2addr p2, p4

    .line 116
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result p4

    invoke-virtual {p6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v0

    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    .line 118
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v0

    invoke-virtual {p6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v1

    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 120
    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result p1

    invoke-virtual {p6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result p6

    invoke-virtual {p5}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result p5

    sub-float/2addr p6, p5

    mul-float/2addr p6, p3

    add-float/2addr p1, p6

    add-float/2addr p2, p4

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 122
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    add-float/2addr v0, p1

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getConfigLine()Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    return-object v0
.end method

.method public final getLinearPoints()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 89
    iget-object v3, p0, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    invoke-virtual {v3}, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/swmansion/pulsar/types/ConfigPoint;

    const-wide/16 v4, 0x1

    .line 90
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    if-lez v2, :cond_0

    .line 92
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    invoke-virtual {v6}, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->getPoints()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 94
    :cond_0
    new-instance v6, Lcom/swmansion/pulsar/types/ControlPoint;

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v7

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v3

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/swmansion/pulsar/types/ControlPoint;-><init>(FFJ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getStepsPoints()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/pulsar/types/ControlPoint;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 19
    iget-object v2, v1, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->configLine:Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;

    invoke-virtual {v2}, Lcom/swmansion/pulsar/haptics/ConfigLineBuilder;->getPoints()Ljava/util/ArrayList;

    move-result-object v8

    .line 21
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v8

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v2}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v2

    move-wide v11, v2

    :goto_0
    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v5, v3, v11

    if-gez v5, :cond_8

    const-wide/16 v5, 0x4c

    add-long/2addr v5, v3

    .line 26
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    const-wide/16 v5, 0x1

    const-wide/16 v15, 0x0

    sub-long v9, v13, v3

    .line 27
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const/4 v5, 0x0

    move/from16 v17, v5

    move/from16 v18, v17

    :goto_2
    cmp-long v5, v3, v13

    if-gez v5, :cond_7

    :goto_3
    add-int/lit8 v5, v2, 0x1

    .line 35
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 36
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gtz v6, :cond_1

    move v2, v5

    goto :goto_3

    :cond_1
    if-gez v2, :cond_2

    .line 42
    move-object v6, v8

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_4
    move-wide/from16 v19, v11

    goto :goto_5

    .line 43
    :cond_2
    move-object v6, v8

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-lt v2, v6, :cond_3

    move-wide/from16 v19, v11

    move-wide v6, v13

    goto :goto_5

    .line 44
    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/pulsar/types/ConfigPoint;

    invoke-virtual {v6}, Lcom/swmansion/pulsar/types/ConfigPoint;->getTime()J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    :goto_5
    sub-long v11, v6, v3

    cmp-long v21, v11, v15

    if-gtz v21, :cond_4

    move-wide v3, v6

    move-wide/from16 v11, v19

    goto :goto_2

    :cond_4
    if-gez v2, :cond_5

    .line 55
    move-object v3, v8

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 56
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    :goto_6
    move v15, v2

    move-wide v4, v6

    goto :goto_7

    .line 58
    :cond_5
    move-object/from16 v21, v8

    check-cast v21, Ljava/util/List;

    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    if-lt v2, v15, :cond_6

    .line 59
    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 60
    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getAmplitude()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3}, Lcom/swmansion/pulsar/types/ConfigPoint;->getFrequency()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_6

    .line 63
    :cond_6
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    const-string v1, "get(...)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lcom/swmansion/pulsar/types/ConfigPoint;

    .line 64
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/swmansion/pulsar/types/ConfigPoint;

    move-object/from16 v1, p0

    move-object/from16 v22, v15

    move v15, v2

    move-wide v2, v3

    move-wide/from16 v23, v6

    move-object v7, v5

    move-wide/from16 v4, v23

    move-object/from16 v6, v22

    .line 65
    invoke-direct/range {v1 .. v7}, Lcom/swmansion/pulsar/haptics/ControlLineBuilder;->averageValuesInSegment(JJLcom/swmansion/pulsar/types/ConfigPoint;Lcom/swmansion/pulsar/types/ConfigPoint;)Lkotlin/Pair;

    move-result-object v3

    .line 53
    :goto_7
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    long-to-float v3, v11

    mul-float/2addr v1, v3

    add-float v17, v17, v1

    mul-float/2addr v2, v3

    add-float v18, v18, v2

    move-object/from16 v1, p0

    move-wide v3, v4

    move v2, v15

    move-wide/from16 v11, v19

    const-wide/16 v15, 0x0

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v19, v11

    .line 75
    new-instance v1, Lcom/swmansion/pulsar/types/ControlPoint;

    long-to-float v3, v9

    div-float v4, v17, v3

    div-float v3, v18, v3

    invoke-direct {v1, v4, v3, v9, v10}, Lcom/swmansion/pulsar/types/ControlPoint;-><init>(FFJ)V

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-wide v3, v13

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method
