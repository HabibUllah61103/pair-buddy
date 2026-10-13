.class public final Landroidx/compose/material3/internal/LinearWavyProgressModifiersKt;
.super Ljava/lang/Object;
.source "LinearWavyProgressModifiers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinearWavyProgressModifiers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearWavyProgressModifiers.kt\nandroidx/compose/material3/internal/LinearWavyProgressModifiersKt\n+ 2 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 6 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,1146:1\n57#2:1147\n57#2:1150\n61#2:1153\n61#2:1160\n60#3:1148\n60#3:1151\n70#3:1154\n53#3,3:1157\n70#3:1161\n53#3,3:1164\n53#3,3:1168\n22#4:1149\n22#4:1152\n22#4:1155\n22#4:1162\n30#5:1156\n30#5:1163\n33#6:1167\n*S KotlinDebug\n*F\n+ 1 LinearWavyProgressModifiers.kt\nandroidx/compose/material3/internal/LinearWavyProgressModifiersKt\n*L\n749#1:1147\n750#1:1150\n764#1:1153\n773#1:1160\n749#1:1148\n750#1:1151\n764#1:1154\n762#1:1157,3\n773#1:1161\n771#1:1164,3\n775#1:1168,3\n749#1:1149\n750#1:1152\n764#1:1155\n773#1:1162\n762#1:1156\n771#1:1163\n775#1:1167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u001a\u0084\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032!\u0010\u0005\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u0002\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a\u008b\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001aC\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008$\u0010%\"\u000e\u0010&\u001a\u00020\'X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "linearWavyProgressIndicator",
        "Landroidx/compose/ui/Modifier;",
        "progress",
        "Lkotlin/Function0;",
        "",
        "amplitude",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "trackColor",
        "stroke",
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "trackStroke",
        "gapSize",
        "Landroidx/compose/ui/unit/Dp;",
        "stopSize",
        "wavelength",
        "waveSpeed",
        "linearWavyProgressIndicator-bMBChCs",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;",
        "firstLineHeadProgress",
        "firstLineTailProgress",
        "secondLineHeadProgress",
        "secondLineTailProgress",
        "linearWavyProgressIndicator-OFGGHrU",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;",
        "drawStopIndicator",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "progressEnd",
        "progressIndicatorSize",
        "Landroidx/compose/ui/geometry/Size;",
        "maxStopIndicatorSize",
        "horizontalInsets",
        "drawStopIndicator-VnkRyUA",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJFFLandroidx/compose/ui/graphics/drawscope/Stroke;J)V",
        "MinAnimationDuration",
        "",
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MinAnimationDuration:I = 0x32


# direct methods
.method public static final synthetic access$drawStopIndicator-VnkRyUA(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJFFLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/internal/LinearWavyProgressModifiersKt;->drawStopIndicator-VnkRyUA(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJFFLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    return-void
.end method

.method private static final drawStopIndicator-VnkRyUA(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJFFLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 14

    .line 739
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v0

    move/from16 v2, p4

    invoke-interface {p0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 743
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v2

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    :goto_0
    const/16 v4, 0x20

    shr-long v5, p2, v4

    long-to-int v5, v5

    .line 1149
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v2

    .line 1152
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v2, p1

    add-float v2, v2, p5

    cmpg-float v5, v6, v2

    if-gtz v5, :cond_1

    sub-float v5, v2, v6

    sub-float/2addr v0, v5

    .line 752
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v6, v2

    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_3

    .line 757
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v2

    sget-object v3, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const-wide v7, 0xffffffffL

    if-eqz v2, :cond_2

    div-float/2addr v0, v3

    add-float/2addr v6, v0

    and-long v9, p2, v7

    long-to-int v2, v9

    .line 1155
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr v2, v3

    .line 1157
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    .line 1158
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v4, v5, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    .line 1156
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v5

    const/16 v11, 0x78

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide/from16 v2, p7

    move v4, v0

    .line 758
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void

    :cond_2
    and-long v1, p2, v7

    long-to-int v1, v1

    .line 1162
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    .line 1164
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    .line 1165
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    shl-long v1, v2, v4

    and-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 1163
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .line 1168
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    .line 1169
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    shl-long v3, v5, v4

    and-long v5, v9, v7

    or-long/2addr v3, v5

    .line 1167
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v6

    const/16 v12, 0x78

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v1

    move-object v1, p0

    move-wide/from16 v2, p7

    .line 768
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final linearWavyProgressIndicator-OFGGHrU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;JJ",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "FFFF)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 129
    new-instance v0, Landroidx/compose/material3/internal/IndeterminateLinearWavyProgressElement;

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v14, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/internal/IndeterminateLinearWavyProgressElement;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v1, p0

    .line 128
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final linearWavyProgressIndicator-bMBChCs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;JJ",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "FFFF)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 84
    new-instance v0, Landroidx/compose/material3/internal/DeterminateLinearWavyProgressElement;

    const/4 v13, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/internal/DeterminateLinearWavyProgressElement;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 83
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
