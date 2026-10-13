.class public final Landroidx/graphics/shapes/Morph$Companion;
.super Ljava/lang/Object;
.source "Morph.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Morph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,340:1\n146#2,4:341\n146#2,4:345\n146#2,4:349\n146#2,4:353\n146#2,4:357\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n*L\n237#1:341,4\n282#1:345,4\n288#1:349,4\n295#1:353,4\n302#1:357,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0001\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/graphics/shapes/Morph$Companion;",
        "",
        "<init>",
        "()V",
        "match",
        "",
        "Lkotlin/Pair;",
        "Landroidx/graphics/shapes/Cubic;",
        "p1",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "p2",
        "match$graphics_shapes",
        "graphics-shapes"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/Morph$Companion;-><init>()V

    return-void
.end method

.method private static final match$lambda$10(Landroidx/collection/FloatFloatPair;)Ljava/lang/String;
    .locals 5

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/collection/FloatFloatPair;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Landroidx/graphics/shapes/Format_jvmKt;->toStringWithLessPrecision(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/collection/FloatFloatPair;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr p0, v2

    invoke-static {p0}, Landroidx/graphics/shapes/Format_jvmKt;->toStringWithLessPrecision(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final match$lambda$14$lambda$13$lambda$12(Lkotlin/jvm/functions/Function1;Landroidx/graphics/shapes/Cubic;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "C "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v1

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->box-impl(J)Landroidx/collection/FloatFloatPair;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v2

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/collection/FloatFloatPair;->box-impl(J)Landroidx/collection/FloatFloatPair;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v1

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result p1

    invoke-static {v1, p1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->box-impl(J)Landroidx/collection/FloatFloatPair;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final match$graphics_shapes(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "p1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v2, Landroidx/graphics/shapes/MeasuredPolygon;->Companion:Landroidx/graphics/shapes/MeasuredPolygon$Companion;

    new-instance v3, Landroidx/graphics/shapes/LengthMeasurer;

    invoke-direct {v3}, Landroidx/graphics/shapes/LengthMeasurer;-><init>()V

    check-cast v3, Landroidx/graphics/shapes/Measurer;

    invoke-virtual {v2, v3, v0}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;->measurePolygon$graphics_shapes(Landroidx/graphics/shapes/Measurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;

    move-result-object v0

    .line 221
    sget-object v2, Landroidx/graphics/shapes/MeasuredPolygon;->Companion:Landroidx/graphics/shapes/MeasuredPolygon$Companion;

    new-instance v3, Landroidx/graphics/shapes/LengthMeasurer;

    invoke-direct {v3}, Landroidx/graphics/shapes/LengthMeasurer;-><init>()V

    check-cast v3, Landroidx/graphics/shapes/Measurer;

    invoke-virtual {v2, v3, v1}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;->measurePolygon$graphics_shapes(Landroidx/graphics/shapes/Measurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Landroidx/graphics/shapes/MeasuredPolygon;->getFeatures()Ljava/util/List;

    move-result-object v2

    .line 227
    invoke-virtual {v1}, Landroidx/graphics/shapes/MeasuredPolygon;->getFeatures()Ljava/util/List;

    move-result-object v3

    .line 233
    invoke-static {v2, v3}, Landroidx/graphics/shapes/FeatureMappingKt;->featureMapper(Ljava/util/List;Ljava/util/List;)Landroidx/graphics/shapes/DoubleMapper;

    move-result-object v2

    const/4 v3, 0x0

    .line 236
    invoke-virtual {v2, v3}, Landroidx/graphics/shapes/DoubleMapper;->map(F)F

    move-result v3

    .line 237
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v3}, Landroidx/graphics/shapes/MeasuredPolygon;->cutAndShift(F)Landroidx/graphics/shapes/MeasuredPolygon;

    move-result-object v1

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 268
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 269
    move-object v8, v1

    check-cast v8, Ljava/util/List;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    const/4 v9, 0x1

    move v10, v9

    :goto_0
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 274
    invoke-virtual {v0}, Landroidx/graphics/shapes/MeasuredPolygon;->size()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v9, v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getEndOutlineProgress()F

    move-result v11

    .line 276
    :goto_1
    invoke-virtual {v1}, Landroidx/graphics/shapes/MeasuredPolygon;->size()I

    move-result v13

    if-ne v10, v13, :cond_1

    move v13, v12

    goto :goto_2

    .line 279
    :cond_1
    invoke-virtual {v6}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getEndOutlineProgress()F

    move-result v13

    add-float/2addr v13, v3

    invoke-static {v13, v12}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v13

    .line 278
    invoke-virtual {v2, v13}, Landroidx/graphics/shapes/DoubleMapper;->mapBack(F)F

    move-result v13

    .line 281
    :goto_2
    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 282
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    const v15, 0x358637bd    # 1.0E-6f

    add-float/2addr v15, v14

    cmpl-float v11, v11, v15

    if-lez v11, :cond_2

    .line 288
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 289
    invoke-virtual {v7, v14}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cutAtProgress(F)Lkotlin/Pair;

    move-result-object v7

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v9, 0x1

    .line 291
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    move v9, v11

    .line 286
    :goto_3
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    cmpl-float v13, v13, v15

    if-lez v13, :cond_3

    .line 295
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v14}, Landroidx/graphics/shapes/DoubleMapper;->map(F)F

    move-result v13

    sub-float/2addr v13, v3

    invoke-static {v13, v12}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v12

    .line 296
    invoke-virtual {v6, v12}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cutAtProgress(F)Lkotlin/Pair;

    move-result-object v6

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v10, 0x1

    .line 300
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    move v10, v12

    .line 293
    :goto_4
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 302
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 303
    invoke-virtual {v11}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v11

    invoke-virtual {v12}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    if-nez v7, :cond_5

    if-nez v6, :cond_5

    return-object v4

    .line 307
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected both Polygon\'s Cubic to be fully matched"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
