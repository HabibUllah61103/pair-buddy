.class public final Landroidx/compose/material3/FabVisibleNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "FloatingActionButton.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material3/FabVisibleNode\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n+ 7 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 8 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 9 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 10 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,1484:1\n113#2:1485\n57#3:1486\n61#3:1489\n60#4:1487\n70#4:1490\n53#4,3:1492\n80#4:1496\n80#4:1498\n53#4,3:1501\n22#5:1488\n33#6:1491\n32#7:1495\n159#7:1499\n30#8:1497\n30#9:1500\n108#10:1504\n68#10,7:1505\n*S KotlinDebug\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material3/FabVisibleNode\n*L\n1201#1:1485\n1203#1:1486\n1203#1:1489\n1203#1:1487\n1203#1:1490\n1203#1:1492,3\n1208#1:1496\n1213#1:1498\n1214#1:1501,3\n1203#1:1488\n1203#1:1491\n1208#1:1495\n1214#1:1499\n1213#1:1497\n1214#1:1500\n1219#1:1504\n1219#1:1505,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BC\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ>\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bJ#\u0010\u0015\u001a\u00020\u0016*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/material3/FabVisibleNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "visible",
        "",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "targetScale",
        "",
        "scaleAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "alphaAnimationSpec",
        "<init>",
        "(ZLandroidx/compose/ui/Alignment;FLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V",
        "scaleAnimatable",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "alphaAnimatable",
        "updateNode",
        "",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private alignment:Landroidx/compose/ui/Alignment;

.field private final alphaAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private alphaAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final scaleAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private scaleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private targetScale:F


# direct methods
.method public static synthetic $r8$lambda$-iRtycbmahVKTylm5GjrlXYZpVQ(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/FabVisibleNode;->measure_3p2s80s$lambda$1(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6eVI43bzcwtirD8ZbC4Ib2Uptx8(Landroidx/compose/material3/FabVisibleNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/FabVisibleNode;->_init_$lambda$0(Landroidx/compose/material3/FabVisibleNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ntDcovHiX8C_a6tsYvSKe5VCVWo(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/FabVisibleNode;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/ui/Alignment;FLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Alignment;",
            "F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1183
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 1185
    iput-object p2, p0, Landroidx/compose/material3/FabVisibleNode;->alignment:Landroidx/compose/ui/Alignment;

    .line 1186
    iput p3, p0, Landroidx/compose/material3/FabVisibleNode;->targetScale:F

    .line 1187
    iput-object p4, p0, Landroidx/compose/material3/FabVisibleNode;->scaleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1188
    iput-object p5, p0, Landroidx/compose/material3/FabVisibleNode;->alphaAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move p4, p2

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    const/4 p5, 0x2

    const/4 v0, 0x0

    .line 1191
    invoke-static {p4, p3, p5, v0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p4

    iput-object p4, p0, Landroidx/compose/material3/FabVisibleNode;->scaleAnimatable:Landroidx/compose/animation/core/Animatable;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    .line 1192
    :goto_1
    invoke-static {p2, p3, p5, v0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/FabVisibleNode;->alphaAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 1196
    new-instance p1, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/FabVisibleNode;)V

    invoke-static {p1}, Landroidx/compose/ui/draw/DrawModifierKt;->CacheDrawModifierNode(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/CacheDrawModifierNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    .line 1195
    invoke-virtual {p0, p1}, Landroidx/compose/material3/FabVisibleNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/Alignment;FLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p6, v0

    goto :goto_0

    :cond_1
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 1183
    invoke-direct/range {p1 .. p6}, Landroidx/compose/material3/FabVisibleNode;-><init>(ZLandroidx/compose/ui/Alignment;FLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/compose/material3/FabVisibleNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1197
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->obtainGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v2

    const/16 v3, 0x10

    int-to-float v3, v3

    .line 1485
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 1201
    invoke-virtual {v1, v3}, Landroidx/compose/ui/draw/CacheDrawScope;->toPx-0680j_4(F)F

    move-result v3

    .line 1203
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    .line 1488
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 1203
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    long-to-int v7, v7

    .line 1488
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-float/2addr v7, v5

    .line 1492
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    .line 1493
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v4, v6

    and-long/2addr v7, v9

    or-long/2addr v4, v7

    .line 1491
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v4

    .line 1204
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->toIntSize-uvyYCjk(J)J

    move-result-wide v4

    .line 1205
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSizeKt;->toIntSize-uvyYCjk(J)J

    move-result-wide v14

    .line 1208
    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    neg-int v8, v8

    int-to-long v11, v7

    shl-long/2addr v11, v6

    int-to-long v7, v8

    and-long/2addr v7, v9

    or-long/2addr v7, v11

    .line 1495
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v7

    .line 1208
    invoke-virtual {v2, v7, v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setTopLeft--gyyYBs(J)V

    .line 1210
    iget-object v7, v0, Landroidx/compose/material3/FabVisibleNode;->alphaAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    .line 1213
    iget-object v11, v0, Landroidx/compose/material3/FabVisibleNode;->alignment:Landroidx/compose/ui/Alignment;

    const/4 v7, 0x1

    int-to-long v7, v7

    shl-long v12, v7, v6

    and-long/2addr v7, v9

    or-long/2addr v7, v12

    .line 1497
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v12

    .line 1213
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v16

    invoke-interface/range {v11 .. v16}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v7

    .line 1499
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    int-to-float v7, v7

    .line 1501
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    .line 1502
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v11, v6

    and-long/2addr v7, v9

    or-long/2addr v7, v11

    .line 1500
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    .line 1501
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 1502
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    shl-long/2addr v11, v6

    and-long/2addr v9, v13

    or-long/2addr v9, v11

    .line 1500
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v9

    .line 1214
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setPivotOffset-k-4lQ0M(J)V

    .line 1215
    iget v6, v0, Landroidx/compose/material3/FabVisibleNode;->targetScale:F

    iget-object v7, v0, Landroidx/compose/material3/FabVisibleNode;->scaleAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v8, v7}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setScaleX(F)V

    .line 1216
    iget v6, v0, Landroidx/compose/material3/FabVisibleNode;->targetScale:F

    iget-object v0, v0, Landroidx/compose/material3/FabVisibleNode;->scaleAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v6, v8, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setScaleY(F)V

    .line 1218
    new-instance v6, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda1;-><init>(F)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/draw/CacheDrawScope;->record-TdoYBX4$default(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 1223
    new-instance v2, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-virtual {v0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAlphaAnimatable$p(Landroidx/compose/material3/FabVisibleNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1183
    iget-object p0, p0, Landroidx/compose/material3/FabVisibleNode;->alphaAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getScaleAnimatable$p(Landroidx/compose/material3/FabVisibleNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1183
    iget-object p0, p0, Landroidx/compose/material3/FabVisibleNode;->scaleAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method static final lambda$0$0$0(FLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;
    .locals 2

    .line 1219
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 1505
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    invoke-interface {v1, p0, p0, p0, p0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    .line 1219
    :try_start_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float p0, p0

    invoke-interface {p1, p0, p0, p0, p0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    .line 1220
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 1509
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    neg-float p0, p0

    invoke-interface {v0, p0, p0, p0, p0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    throw p1
.end method

.method static final lambda$0$1(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;
    .locals 0

    .line 1223
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    .line 1267
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$1(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    .line 1270
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    .line 1266
    iget-object v0, p0, Landroidx/compose/material3/FabVisibleNode;->alphaAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1267
    new-instance v5, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda3;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v0, p1

    .line 1269
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    .line 1270
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda4;

    invoke-direct {v4, p1}, Landroidx/compose/material3/FabVisibleNode$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final updateNode(ZLandroidx/compose/ui/Alignment;FLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Alignment;",
            "F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    .line 1236
    iput-object v3, v0, Landroidx/compose/material3/FabVisibleNode;->alignment:Landroidx/compose/ui/Alignment;

    move/from16 v3, p3

    .line 1237
    iput v3, v0, Landroidx/compose/material3/FabVisibleNode;->targetScale:F

    .line 1238
    iput-object v2, v0, Landroidx/compose/material3/FabVisibleNode;->scaleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1239
    iput-object v4, v0, Landroidx/compose/material3/FabVisibleNode;->alphaAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1241
    invoke-virtual {v0}, Landroidx/compose/material3/FabVisibleNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v3, Landroidx/compose/material3/FabVisibleNode$updateNode$1;

    const/4 v11, 0x0

    invoke-direct {v3, v0, v1, v2, v11}, Landroidx/compose/material3/FabVisibleNode$updateNode$1;-><init>(Landroidx/compose/material3/FabVisibleNode;ZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1251
    invoke-virtual {v0}, Landroidx/compose/material3/FabVisibleNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v12

    new-instance v2, Landroidx/compose/material3/FabVisibleNode$updateNode$2;

    invoke-direct {v2, v0, v1, v4, v11}, Landroidx/compose/material3/FabVisibleNode$updateNode$2;-><init>(Landroidx/compose/material3/FabVisibleNode;ZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
