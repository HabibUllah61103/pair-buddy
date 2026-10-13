.class public final Landroidx/compose/material3/WavyProgressIndicatorKt;
.super Ljava/lang/Object;
.source "WavyProgressIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWavyProgressIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WavyProgressIndicator.kt\nandroidx/compose/material3/WavyProgressIndicatorKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,508:1\n1282#2,6:509\n1282#2,6:515\n1282#2,6:521\n1282#2,6:527\n1282#2,6:533\n1282#2,6:549\n65#3,10:539\n65#3,10:597\n70#4:555\n67#4,9:556\n77#4:595\n79#5,6:565\n86#5,3:580\n89#5,2:589\n93#5:594\n347#6,9:571\n356#6,3:591\n4206#7,6:583\n1#8:596\n*S KotlinDebug\n*F\n+ 1 WavyProgressIndicator.kt\nandroidx/compose/material3/WavyProgressIndicatorKt\n*L\n114#1:509,6\n220#1:515,6\n221#1:521,6\n222#1:527,6\n223#1:533,6\n305#1:549,6\n229#1:539,10\n118#1:597,10\n360#1:555\n360#1:556,9\n360#1:595\n360#1:565,6\n360#1:580,3\n360#1:589,2\n360#1:594\n360#1:571,9\n360#1:591,3\n360#1:583,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u009c\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2#\u0008\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0002\u0012\u0004\u0012\u00020\u00040\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001ai\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u0092\u0001\u0010\u001a\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2#\u0008\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0002\u0012\u0004\u0012\u00020\u00040\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001ai\u0010\u001a\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0019\"\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\"\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010!\u00a8\u0006$"
    }
    d2 = {
        "LinearWavyProgressIndicator",
        "",
        "progress",
        "Lkotlin/Function0;",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "trackColor",
        "stroke",
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "trackStroke",
        "gapSize",
        "Landroidx/compose/ui/unit/Dp;",
        "stopSize",
        "amplitude",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "wavelength",
        "waveSpeed",
        "LinearWavyProgressIndicator-1YwxWKA",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFLandroidx/compose/runtime/Composer;III)V",
        "LinearWavyProgressIndicator-hvuEXSk",
        "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLandroidx/compose/runtime/Composer;II)V",
        "CircularWavyProgressIndicator",
        "CircularWavyProgressIndicator-L8eD4gc",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFLandroidx/compose/runtime/Composer;II)V",
        "CircularWavyProgressIndicator-hvuEXSk",
        "IncreasingAmplitudeAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "getIncreasingAmplitudeAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "DecreasingAmplitudeAnimationSpec",
        "getDecreasingAmplitudeAnimationSpec",
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
.field private static final DecreasingAmplitudeAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final IncreasingAmplitudeAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-Abbo4YIz5SBwhSLHJ64-cgAXtA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/WavyProgressIndicatorKt;->CircularWavyProgressIndicator_L8eD4gc$lambda$1(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-hKdhvnsM6Obt6hF-RpLuWbx9SE(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_hvuEXSk$lambda$3$0(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4QFffljCqA_DqomAj9Ts3yoDIwQ(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_hvuEXSk$lambda$1$0(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5N8HVrXRZAADFZXr3-pp6E8SyuY(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p17}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_1YwxWKA$lambda$1(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C0ifra0qqcuJLytxKMvm-HZ3mAU(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/WavyProgressIndicatorKt;->CircularWavyProgressIndicator_hvuEXSk$lambda$1(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DNh9rnD_kOi5ZwW8RIslZfV9OB8(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_hvuEXSk$lambda$0$0(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Inmt0wED-UHFOo4iZJcQr4W-zXo(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WavyProgressIndicatorKt;->CircularWavyProgressIndicator_L8eD4gc$lambda$0$0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cX8WIBFA6omldfPbaxyazT_GX2o(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_1YwxWKA$lambda$0$0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iFo73mZfSguf1-mglbKGxmIiwa0(Landroidx/compose/runtime/State;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_hvuEXSk$lambda$2$0(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zvAFIxv8f3QJQkU8RalrGTjEVyY(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator_hvuEXSk$lambda$4(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 499
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MotionTokens;->getEasingStandardCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/Easing;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 497
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    sput-object v0, Landroidx/compose/material3/WavyProgressIndicatorKt;->IncreasingAmplitudeAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 506
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MotionTokens;->getEasingEmphasizedAccelerateCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/Easing;

    .line 504
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    sput-object v0, Landroidx/compose/material3/WavyProgressIndicatorKt;->DecreasingAmplitudeAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public static final CircularWavyProgressIndicator-L8eD4gc(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFLandroidx/compose/runtime/Composer;II)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v13, p13

    move/from16 v14, p14

    const v0, -0x55ac9a22

    move-object/from16 v2, p12

    .line 289
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(CircularWavyProgressIndicator)N(progress,modifier,color:c#ui.graphics.Color,trackColor:c#ui.graphics.Color,stroke,trackStroke,gapSize:c#ui.unit.Dp,amplitude,wavelength:c#ui.unit.Dp,waveSpeed:c#ui.unit.Dp)304@15574L485,289@14958L1107:WavyProgressIndicator.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v13, 0x6

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v13

    goto :goto_1

    :cond_1
    move v3, v13

    :goto_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_2

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v6, v13, 0x30

    if-nez v6, :cond_4

    move-object/from16 v6, p1

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit16 v7, v13, 0x180

    if-nez v7, :cond_7

    and-int/lit8 v7, v14, 0x4

    if-nez v7, :cond_5

    move-wide/from16 v7, p2

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p2

    :cond_6
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v3, v9

    goto :goto_6

    :cond_7
    move-wide/from16 v7, p2

    :goto_6
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_a

    and-int/lit8 v9, v14, 0x8

    if-nez v9, :cond_8

    move-wide/from16 v9, p4

    invoke-interface {v2, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x800

    goto :goto_7

    :cond_8
    move-wide/from16 v9, p4

    :cond_9
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v3, v11

    goto :goto_8

    :cond_a
    move-wide/from16 v9, p4

    :goto_8
    and-int/lit16 v11, v13, 0x6000

    if-nez v11, :cond_d

    and-int/lit8 v11, v14, 0x10

    if-nez v11, :cond_b

    move-object/from16 v11, p6

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x4000

    goto :goto_9

    :cond_b
    move-object/from16 v11, p6

    :cond_c
    const/16 v12, 0x2000

    :goto_9
    or-int/2addr v3, v12

    goto :goto_a

    :cond_d
    move-object/from16 v11, p6

    :goto_a
    const/high16 v12, 0x30000

    and-int/2addr v12, v13

    if-nez v12, :cond_10

    and-int/lit8 v12, v14, 0x20

    if-nez v12, :cond_e

    move-object/from16 v12, p7

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x20000

    goto :goto_b

    :cond_e
    move-object/from16 v12, p7

    :cond_f
    const/high16 v15, 0x10000

    :goto_b
    or-int/2addr v3, v15

    goto :goto_c

    :cond_10
    move-object/from16 v12, p7

    :goto_c
    const/high16 v15, 0x180000

    and-int/2addr v15, v13

    if-nez v15, :cond_13

    and-int/lit8 v15, v14, 0x40

    if-nez v15, :cond_11

    move/from16 v15, p8

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_d

    :cond_11
    move/from16 v15, p8

    :cond_12
    const/high16 v16, 0x80000

    :goto_d
    or-int v3, v3, v16

    goto :goto_e

    :cond_13
    move/from16 v15, p8

    :goto_e
    const/high16 v16, 0xc00000

    and-int v16, v13, v16

    if-nez v16, :cond_16

    and-int/lit16 v4, v14, 0x80

    if-nez v4, :cond_14

    move-object/from16 v4, p9

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_14
    move-object/from16 v4, p9

    :cond_15
    const/high16 v17, 0x400000

    :goto_f
    or-int v3, v3, v17

    goto :goto_10

    :cond_16
    move-object/from16 v4, p9

    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v13, v17

    if-nez v17, :cond_19

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_17

    move/from16 v0, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x4000000

    goto :goto_11

    :cond_17
    move/from16 v0, p10

    :cond_18
    const/high16 v18, 0x2000000

    :goto_11
    or-int v3, v3, v18

    goto :goto_12

    :cond_19
    move/from16 v0, p10

    :goto_12
    const/high16 v18, 0x30000000

    and-int v18, v13, v18

    if-nez v18, :cond_1c

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_1a

    move/from16 v0, p11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_1b

    const/high16 v18, 0x20000000

    goto :goto_13

    :cond_1a
    move/from16 v0, p11

    :cond_1b
    const/high16 v18, 0x10000000

    :goto_13
    or-int v3, v3, v18

    goto :goto_14

    :cond_1c
    move/from16 v0, p11

    :goto_14
    const v18, 0x12492493

    and-int v0, v3, v18

    const v1, 0x12492492

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_15

    :cond_1d
    move v0, v4

    :goto_15
    and-int/lit8 v1, v3, 0x1

    invoke-interface {v2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "280@14403L14,281@14473L10,282@14536L23,283@14617L19"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v13, 0x1

    const v1, -0x70000001

    const v19, -0xe000001

    const v20, -0x1c00001

    const v21, -0x380001

    const v22, -0x70001

    const v23, -0xe001

    if-eqz v0, :cond_27

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_16

    .line 278
    :cond_1e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_1f

    and-int/lit16 v3, v3, -0x381

    :cond_1f
    and-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v3, v3, -0x1c01

    :cond_20
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_21

    and-int v3, v3, v23

    :cond_21
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_22

    and-int v3, v3, v22

    :cond_22
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_23

    and-int v3, v3, v21

    :cond_23
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_24

    and-int v3, v3, v20

    :cond_24
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_25

    and-int v3, v3, v19

    :cond_25
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_26

    and-int/2addr v3, v1

    :cond_26
    move-object/from16 v0, p9

    move/from16 v5, p10

    goto/16 :goto_19

    :cond_27
    :goto_16
    if-eqz v5, :cond_28

    .line 280
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v6, v0

    :cond_28
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_29

    .line 281
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0, v2, v4}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getIndicatorColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v3, v3, -0x381

    :cond_29
    and-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_2a

    .line 282
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0, v2, v4}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int/lit16 v3, v3, -0x1c01

    :cond_2a
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_2b

    .line 283
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0, v2, v4}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularIndicatorStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v0

    and-int v3, v3, v23

    move-object v11, v0

    :cond_2b
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_2c

    .line 284
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0, v2, v4}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularTrackStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v0

    and-int v3, v3, v22

    move-object v12, v0

    :cond_2c
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_2d

    .line 285
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularIndicatorTrackGapSize-D9Ej5fM()F

    move-result v0

    and-int v3, v3, v21

    move v15, v0

    :cond_2d
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_2e

    .line 286
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getIndicatorAmplitude()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    and-int v3, v3, v20

    goto :goto_17

    :cond_2e
    move-object/from16 v0, p9

    :goto_17
    and-int/lit16 v5, v14, 0x100

    if-eqz v5, :cond_2f

    .line 287
    sget-object v5, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularWavelength-D9Ej5fM()F

    move-result v5

    and-int v3, v3, v19

    goto :goto_18

    :cond_2f
    move/from16 v5, p10

    :goto_18
    move/from16 p12, v1

    and-int/lit16 v1, v14, 0x200

    if-eqz v1, :cond_30

    and-int v3, v3, p12

    move v1, v5

    goto :goto_1a

    :cond_30
    :goto_19
    move/from16 v1, p11

    .line 278
    :goto_1a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v19

    if-eqz v19, :cond_31

    const/4 v4, -0x1

    move-object/from16 p10, v0

    const-string v0, "androidx.compose.material3.CircularWavyProgressIndicator (WavyProgressIndicator.kt:288)"

    move/from16 p12, v1

    const v1, -0x55ac9a22

    invoke-static {v1, v3, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1b

    :cond_31
    move-object/from16 p10, v0

    move/from16 p12, v1

    .line 293
    :goto_1b
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularContainerSize-D9Ej5fM()F

    move-result v0

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 p2, p0

    move-object/from16 p1, v0

    move/from16 p11, v5

    move-wide/from16 p3, v7

    move-wide/from16 p5, v9

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    move/from16 p9, v15

    .line 294
    invoke-static/range {p1 .. p12}, Landroidx/compose/material3/internal/CircularWavyProgressModifiersKt;->circularWavyProgressIndicator-4ohQjRg(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v4, p10

    move/from16 v17, p12

    move/from16 v20, v3

    const v3, 0x63120ce3

    .line 305
    const-string v4, "CC(remember):WavyProgressIndicator.kt#9igjgp"

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, v20, 0xe

    const/4 v4, 0x4

    if-ne v3, v4, :cond_32

    const/4 v3, 0x1

    goto :goto_1c

    :cond_32
    const/4 v3, 0x0

    .line 549
    :goto_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_33

    .line 550
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_34

    .line 305
    :cond_33
    new-instance v4, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 552
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 305
    :cond_34
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x1

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    .line 290
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_35
    move-object/from16 v0, p10

    move-wide v3, v7

    move-object v7, v11

    move-object v8, v12

    move/from16 v12, v17

    move v11, v5

    goto :goto_1d

    :cond_36
    move-object/from16 v1, p0

    .line 278
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v0, p9

    move-wide v3, v7

    move-object v7, v11

    move-object v8, v12

    move/from16 v11, p10

    move/from16 v12, p11

    .line 316
    :goto_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_37

    move-wide/from16 v24, v9

    move-object v9, v2

    move-object v2, v6

    move-wide/from16 v5, v24

    move-object v10, v0

    new-instance v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;

    move/from16 v24, v15

    move-object v15, v9

    move/from16 v9, v24

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFII)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_37
    return-void
.end method

.method public static final CircularWavyProgressIndicator-hvuEXSk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLandroidx/compose/runtime/Composer;II)V
    .locals 23

    move/from16 v12, p12

    move/from16 v13, p13

    const v0, 0x3926fbd5

    move-object/from16 v1, p11

    .line 359
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(CircularWavyProgressIndicator)N(modifier,color:c#ui.graphics.Color,trackColor:c#ui.graphics.Color,stroke,trackStroke,gapSize:c#ui.unit.Dp,amplitude,wavelength:c#ui.unit.Dp,waveSpeed:c#ui.unit.Dp)359@18671L813:WavyProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v12, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v12

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v12

    :goto_1
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_5

    and-int/lit8 v5, v13, 0x2

    if-nez v5, :cond_3

    move-wide/from16 v5, p1

    invoke-interface {v1, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    goto :goto_3

    :cond_5
    move-wide/from16 v5, p1

    :goto_3
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_8

    and-int/lit8 v7, v13, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p3

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p3

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p3

    :goto_5
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    and-int/lit8 v9, v13, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p5

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v9, p5

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v4, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :goto_7
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, v13, 0x10

    if-nez v10, :cond_c

    move-object/from16 v10, p6

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v10, p6

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v4, v11

    goto :goto_9

    :cond_e
    move-object/from16 v10, p6

    :goto_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v12

    if-nez v11, :cond_11

    and-int/lit8 v11, v13, 0x20

    if-nez v11, :cond_f

    move/from16 v11, p7

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_f
    move/from16 v11, p7

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v4, v14

    goto :goto_b

    :cond_11
    move/from16 v11, p7

    :goto_b
    and-int/lit8 v14, v13, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_12

    or-int/2addr v4, v15

    goto :goto_d

    :cond_12
    and-int/2addr v15, v12

    if-nez v15, :cond_14

    move/from16 v15, p8

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v4, v4, v16

    goto :goto_e

    :cond_14
    :goto_d
    move/from16 v15, p8

    :goto_e
    const/high16 v16, 0xc00000

    and-int v16, v12, v16

    if-nez v16, :cond_17

    and-int/lit16 v0, v13, 0x80

    if-nez v0, :cond_15

    move/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_15
    move/from16 v0, p9

    :cond_16
    const/high16 v17, 0x400000

    :goto_f
    or-int v4, v4, v17

    goto :goto_10

    :cond_17
    move/from16 v0, p9

    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v12, v17

    if-nez v17, :cond_1a

    and-int/lit16 v0, v13, 0x100

    if-nez v0, :cond_18

    move/from16 v0, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_11

    :cond_18
    move/from16 v0, p10

    :cond_19
    const/high16 v17, 0x2000000

    :goto_11
    or-int v4, v4, v17

    goto :goto_12

    :cond_1a
    move/from16 v0, p10

    :goto_12
    const v17, 0x2492493

    and-int v0, v4, v17

    move/from16 p11, v2

    const v2, 0x2492492

    if-eq v0, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_13

    :cond_1b
    const/4 v0, 0x0

    :goto_13
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "350@18149L14,351@18219L10,352@18282L23,353@18363L19"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    const v2, -0xe000001

    const v18, -0x1c00001

    const v19, -0x70001

    const v20, -0xe001

    if-eqz v0, :cond_25

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    .line 349
    :cond_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_1d

    and-int/lit8 v4, v4, -0x71

    :cond_1d
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_1e

    and-int/lit16 v4, v4, -0x381

    :cond_1e
    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_1f

    and-int/lit16 v4, v4, -0x1c01

    :cond_1f
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_20

    and-int v4, v4, v20

    :cond_20
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_21

    and-int v4, v4, v19

    :cond_21
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_22

    and-int v4, v4, v18

    :cond_22
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_23

    and-int/2addr v4, v2

    :cond_23
    move-object/from16 v0, p0

    move/from16 v14, p9

    move v2, v11

    move v11, v15

    :cond_24
    move v15, v4

    move/from16 v4, p10

    goto/16 :goto_1a

    :cond_25
    :goto_14
    if-eqz p11, :cond_26

    .line 350
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_15

    :cond_26
    move-object/from16 v0, p0

    :goto_15
    and-int/lit8 v21, v13, 0x2

    if-eqz v21, :cond_27

    .line 351
    sget-object v5, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getIndicatorColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    and-int/lit8 v4, v4, -0x71

    move/from16 p11, v2

    move v2, v6

    move-wide/from16 v5, v21

    goto :goto_16

    :cond_27
    move/from16 p11, v2

    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v17, v13, 0x4

    if-eqz v17, :cond_28

    .line 352
    sget-object v7, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v7, v1, v2}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v4, v4, -0x381

    :cond_28
    and-int/lit8 v17, v13, 0x8

    if-eqz v17, :cond_29

    .line 353
    sget-object v9, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v9, v1, v2}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularIndicatorStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v9

    and-int/lit16 v4, v4, -0x1c01

    :cond_29
    and-int/lit8 v17, v13, 0x10

    if-eqz v17, :cond_2a

    .line 354
    sget-object v10, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v10, v1, v2}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularTrackStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v10

    and-int v4, v4, v20

    :cond_2a
    and-int/lit8 v2, v13, 0x20

    if-eqz v2, :cond_2b

    .line 355
    sget-object v2, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularIndicatorTrackGapSize-D9Ej5fM()F

    move-result v2

    and-int v4, v4, v19

    goto :goto_17

    :cond_2b
    move v2, v11

    :goto_17
    if-eqz v14, :cond_2c

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_2c
    move v11, v15

    :goto_18
    and-int/lit16 v14, v13, 0x80

    if-eqz v14, :cond_2d

    .line 357
    sget-object v14, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v14}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularWavelength-D9Ej5fM()F

    move-result v14

    and-int v4, v4, v18

    goto :goto_19

    :cond_2d
    move/from16 v14, p9

    :goto_19
    and-int/lit16 v15, v13, 0x100

    if-eqz v15, :cond_24

    and-int v4, v4, p11

    move v15, v4

    move v4, v14

    .line 349
    :goto_1a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_2e

    const/4 v3, -0x1

    move/from16 p7, v2

    const-string v2, "androidx.compose.material3.CircularWavyProgressIndicator (WavyProgressIndicator.kt:358)"

    move/from16 p10, v4

    const v4, 0x3926fbd5

    invoke-static {v4, v15, v3, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1b

    :cond_2e
    move/from16 p7, v2

    move/from16 p10, v4

    .line 360
    :goto_1b
    sget-object v2, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getCircularContainerSize-D9Ej5fM()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x2bb5b5d7

    const-string v4, "CC(Box)P(2,1,3)71@3423L130:Box.kt#2w3rfo"

    .line 555
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 556
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    const/4 v4, 0x0

    .line 560
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    const v15, -0x4ee9b9da

    move-object/from16 v16, v0

    .line 561
    const-string v0, "CC(Layout)P(!1,2)79@3206L23,82@3357L359:Layout.kt#80mrfh"

    .line 565
    invoke-static {v1, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 566
    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 567
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 568
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 570
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    move/from16 p0, v0

    const v0, -0x2942ffcf

    move-wide/from16 p1, v5

    .line 569
    const-string v5, "CC(ReusableComposeNode)P(1,2)355@14017L9:Composables.kt#9igjgp"

    .line 571
    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 572
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 573
    :cond_2f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 574
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 575
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    .line 577
    :cond_30
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 579
    :goto_1c
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 580
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v0, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 581
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 582
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 584
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 585
    :cond_31
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 586
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 589
    :cond_32
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x7ff482d7

    .line 591
    const-string v2, "C72@3468L9:Box.kt#2w3rfo"

    .line 562
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, -0x715f9082

    const-string v2, "C360@18764L452,375@19417L61:WavyProgressIndicator.kt#uh7d8r"

    .line 361
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 362
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 p0, v0

    move-wide/from16 p3, v7

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move/from16 p8, v11

    move/from16 p9, v14

    .line 363
    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/internal/CircularWavyProgressModifiersKt;->circularWavyProgressIndicator-4JQtiWo(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-wide/from16 v5, p1

    move/from16 v11, p7

    move/from16 v15, p8

    move/from16 v17, p10

    const/4 v2, 0x0

    .line 361
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 376
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 361
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 562
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 592
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 571
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 565
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 555
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 595
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_33
    move-wide v2, v5

    move-wide v4, v7

    move-object v7, v10

    move v8, v11

    move v10, v14

    move/from16 v11, v17

    goto :goto_1d

    .line 349
    :cond_34
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p0

    move-wide v2, v5

    move-wide v4, v7

    move-object v7, v10

    move v8, v11

    move/from16 v10, p9

    move/from16 v11, p10

    :goto_1d
    move-object v6, v9

    move v9, v15

    .line 378
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_35

    new-instance v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda2;

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFII)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void
.end method

.method private static final CircularWavyProgressIndicator_L8eD4gc$lambda$0$0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 8

    .line 306
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 308
    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    .line 310
    new-instance v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 311
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p0

    .line 312
    :goto_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 310
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 309
    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V

    .line 314
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final CircularWavyProgressIndicator_L8eD4gc$lambda$1(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v15, p13

    move-object/from16 v13, p14

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/WavyProgressIndicatorKt;->CircularWavyProgressIndicator-L8eD4gc(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FLkotlin/jvm/functions/Function1;FFLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final CircularWavyProgressIndicator_hvuEXSk$lambda$1(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 15

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v14, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/WavyProgressIndicatorKt;->CircularWavyProgressIndicator-hvuEXSk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final LinearWavyProgressIndicator-1YwxWKA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFLandroidx/compose/runtime/Composer;III)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v14, p14

    move/from16 v0, p16

    const v2, 0x785c225e

    move-object/from16 v3, p13

    .line 109
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v4, "C(LinearWavyProgressIndicator)N(progress,modifier,color:c#ui.graphics.Color,trackColor:c#ui.graphics.Color,stroke,trackStroke,gapSize:c#ui.unit.Dp,stopSize:c#ui.unit.Dp,amplitude,wavelength:c#ui.unit.Dp,waveSpeed:c#ui.unit.Dp)113@6037L317,109@5882L1193:WavyProgressIndicator.kt#uh7d8r"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v14, 0x6

    if-nez v4, :cond_1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v14

    goto :goto_1

    :cond_1
    move v4, v14

    :goto_1
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_2

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v8, v14, 0x30

    if-nez v8, :cond_4

    move-object/from16 v8, p1

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v8, p1

    :goto_4
    and-int/lit16 v9, v14, 0x180

    if-nez v9, :cond_7

    and-int/lit8 v9, v0, 0x4

    if-nez v9, :cond_5

    move-wide/from16 v9, p2

    invoke-interface {v3, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x100

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p2

    :cond_6
    const/16 v11, 0x80

    :goto_5
    or-int/2addr v4, v11

    goto :goto_6

    :cond_7
    move-wide/from16 v9, p2

    :goto_6
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_a

    and-int/lit8 v11, v0, 0x8

    if-nez v11, :cond_8

    move-wide/from16 v11, p4

    invoke-interface {v3, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_7

    :cond_8
    move-wide/from16 v11, p4

    :cond_9
    const/16 v13, 0x400

    :goto_7
    or-int/2addr v4, v13

    goto :goto_8

    :cond_a
    move-wide/from16 v11, p4

    :goto_8
    and-int/lit16 v13, v14, 0x6000

    if-nez v13, :cond_d

    and-int/lit8 v13, v0, 0x10

    if-nez v13, :cond_b

    move-object/from16 v13, p6

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/16 v15, 0x4000

    goto :goto_9

    :cond_b
    move-object/from16 v13, p6

    :cond_c
    const/16 v15, 0x2000

    :goto_9
    or-int/2addr v4, v15

    goto :goto_a

    :cond_d
    move-object/from16 v13, p6

    :goto_a
    const/high16 v15, 0x30000

    and-int/2addr v15, v14

    if-nez v15, :cond_10

    and-int/lit8 v15, v0, 0x20

    if-nez v15, :cond_e

    move-object/from16 v15, p7

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_b

    :cond_e
    move-object/from16 v15, p7

    :cond_f
    const/high16 v16, 0x10000

    :goto_b
    or-int v4, v4, v16

    goto :goto_c

    :cond_10
    move-object/from16 v15, p7

    :goto_c
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v0, 0x40

    move/from16 v6, p8

    if-nez v16, :cond_11

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_d

    :cond_11
    const/high16 v16, 0x80000

    :goto_d
    or-int v4, v4, v16

    goto :goto_e

    :cond_12
    move/from16 v6, p8

    :goto_e
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    if-nez v16, :cond_15

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_13

    move/from16 v2, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_13
    move/from16 v2, p9

    :cond_14
    const/high16 v17, 0x400000

    :goto_f
    or-int v4, v4, v17

    goto :goto_10

    :cond_15
    move/from16 v2, p9

    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v14, v17

    if-nez v17, :cond_18

    and-int/lit16 v5, v0, 0x100

    if-nez v5, :cond_16

    move-object/from16 v5, p10

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x4000000

    goto :goto_11

    :cond_16
    move-object/from16 v5, p10

    :cond_17
    const/high16 v18, 0x2000000

    :goto_11
    or-int v4, v4, v18

    goto :goto_12

    :cond_18
    move-object/from16 v5, p10

    :goto_12
    const/high16 v18, 0x30000000

    and-int v18, v14, v18

    if-nez v18, :cond_1b

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_19

    move/from16 v2, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x20000000

    goto :goto_13

    :cond_19
    move/from16 v2, p11

    :cond_1a
    const/high16 v18, 0x10000000

    :goto_13
    or-int v4, v4, v18

    goto :goto_14

    :cond_1b
    move/from16 v2, p11

    :goto_14
    and-int/lit8 v18, p15, 0x6

    if-nez v18, :cond_1e

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_1c

    move/from16 v2, p12

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_1d

    const/16 v18, 0x4

    goto :goto_15

    :cond_1c
    move/from16 v2, p12

    :cond_1d
    const/16 v18, 0x2

    :goto_15
    or-int v18, p15, v18

    goto :goto_16

    :cond_1e
    move/from16 v2, p12

    move/from16 v18, p15

    :goto_16
    const v19, 0x12492493

    and-int v2, v4, v19

    const v5, 0x12492492

    const/4 v6, 0x0

    if-ne v2, v5, :cond_20

    and-int/lit8 v2, v18, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1f

    goto :goto_17

    :cond_1f
    move v2, v6

    goto :goto_18

    :cond_20
    :goto_17
    const/4 v2, 0x1

    :goto_18
    and-int/lit8 v5, v4, 0x1

    invoke-interface {v3, v2, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v2, "99@5245L14,100@5315L10,101@5378L21,102@5457L17"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v14, 0x1

    const v5, -0xe000001

    const v17, -0x1c00001

    const v20, -0x380001

    const v21, -0x70001

    const v22, -0xe001

    if-eqz v2, :cond_2b

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_19

    .line 97
    :cond_21
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_22

    and-int/lit16 v4, v4, -0x381

    :cond_22
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_23

    and-int/lit16 v4, v4, -0x1c01

    :cond_23
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_24

    and-int v4, v4, v22

    :cond_24
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_25

    and-int v4, v4, v21

    :cond_25
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_26

    and-int v4, v4, v20

    :cond_26
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_27

    and-int v4, v4, v17

    :cond_27
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_28

    and-int/2addr v4, v5

    :cond_28
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_29

    const v2, -0x70000001

    and-int/2addr v4, v2

    :cond_29
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_2a

    and-int/lit8 v18, v18, -0xf

    :cond_2a
    move-object/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    move v0, v4

    move/from16 v2, v18

    move/from16 p10, p8

    move/from16 v4, p9

    goto/16 :goto_22

    :cond_2b
    :goto_19
    if-eqz v7, :cond_2c

    .line 99
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_1a

    :cond_2c
    move-object v2, v8

    :goto_1a
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2d

    .line 100
    sget-object v7, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v7, v3, v6}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getIndicatorColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v4, v4, -0x381

    goto :goto_1b

    :cond_2d
    move-wide v7, v9

    :goto_1b
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2e

    .line 101
    sget-object v9, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v9, v3, v6}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int/lit16 v4, v4, -0x1c01

    goto :goto_1c

    :cond_2e
    move-wide v9, v11

    :goto_1c
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_2f

    .line 102
    sget-object v11, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v11, v3, v6}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearIndicatorStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v11

    and-int v4, v4, v22

    goto :goto_1d

    :cond_2f
    move-object v11, v13

    :goto_1d
    and-int/lit8 v12, v0, 0x20

    if-eqz v12, :cond_30

    .line 103
    sget-object v12, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v12, v3, v6}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearTrackStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v12

    and-int v4, v4, v21

    move-object v15, v12

    :cond_30
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_31

    .line 104
    sget-object v12, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v12}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearIndicatorTrackGapSize-D9Ej5fM()F

    move-result v12

    and-int v4, v4, v20

    goto :goto_1e

    :cond_31
    move/from16 v12, p8

    :goto_1e
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_32

    .line 105
    sget-object v13, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v13}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearTrackStopIndicatorSize-D9Ej5fM()F

    move-result v13

    and-int v4, v4, v17

    goto :goto_1f

    :cond_32
    move/from16 v13, p9

    :goto_1f
    move/from16 v17, v5

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_33

    .line 106
    sget-object v5, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getIndicatorAmplitude()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    and-int v4, v4, v17

    goto :goto_20

    :cond_33
    move-object/from16 v5, p10

    :goto_20
    and-int/lit16 v6, v0, 0x200

    if-eqz v6, :cond_34

    .line 107
    sget-object v6, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearDeterminateWavelength-D9Ej5fM()F

    move-result v6

    const v20, -0x70000001

    and-int v4, v4, v20

    goto :goto_21

    :cond_34
    move/from16 v6, p11

    :goto_21
    move-object/from16 p1, v2

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_35

    and-int/lit8 v18, v18, -0xf

    move v0, v4

    move/from16 p10, v12

    move v4, v13

    move/from16 v2, v18

    move-object v13, v11

    move-wide v11, v9

    move-wide v9, v7

    move-object/from16 v8, p1

    move v7, v6

    goto :goto_22

    :cond_35
    move v0, v4

    move/from16 p10, v12

    move v4, v13

    move/from16 v2, v18

    move-object v13, v11

    move-wide v11, v9

    move-wide v9, v7

    move-object/from16 v8, p1

    move/from16 v7, p12

    .line 97
    :goto_22
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    move/from16 p11, v4

    if-eqz v18, :cond_36

    const-string v4, "androidx.compose.material3.LinearWavyProgressIndicator (WavyProgressIndicator.kt:108)"

    move-object/from16 p3, v5

    const v5, 0x785c225e

    invoke-static {v5, v0, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_23

    :cond_36
    move-object/from16 p3, v5

    .line 113
    :goto_23
    invoke-static {}, Landroidx/compose/material3/internal/AccessibilityUtilKt;->getIncreaseVerticalSemanticsBounds()Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v8, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, -0x2e2286e5

    .line 114
    const-string v5, "CC(remember):WavyProgressIndicator.kt#9igjgp"

    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v0, 0xe

    const/4 v4, 0x4

    if-ne v0, v4, :cond_37

    const/4 v0, 0x1

    goto :goto_24

    :cond_37
    const/4 v0, 0x0

    .line 509
    :goto_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_38

    .line 510
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_39

    .line 114
    :cond_38
    new-instance v4, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 512
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    :cond_39
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v0, 0x1

    invoke-static {v2, v0, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 121
    sget-object v2, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearContainerWidth-D9Ej5fM()F

    move-result v2

    .line 122
    sget-object v4, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearContainerHeight-D9Ej5fM()F

    move-result v4

    .line 120
    invoke-static {v0, v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p12, v6

    move/from16 p13, v7

    move-wide/from16 p4, v9

    move-wide/from16 p6, v11

    move-object/from16 p8, v13

    move-object/from16 p9, v15

    .line 125
    invoke-static/range {p1 .. p13}, Landroidx/compose/material3/internal/LinearWavyProgressModifiersKt;->linearWavyProgressIndicator-bMBChCs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v5, p3

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v4, p13

    const/4 v7, 0x0

    .line 110
    invoke-static {v0, v3, v7}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3a
    move-object v0, v3

    move-object v7, v13

    move v13, v4

    move-wide v3, v9

    move v9, v1

    move v10, v2

    move-wide/from16 v24, v11

    move-object v11, v5

    move v12, v6

    move-wide/from16 v5, v24

    goto :goto_25

    .line 97
    :cond_3b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v0, v3

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v13

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    :goto_25
    move-object v2, v8

    move-object v8, v15

    .line 138
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda9;

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFIII)V

    move-object/from16 v1, v23

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3c
    return-void
.end method

.method public static final LinearWavyProgressIndicator-hvuEXSk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLandroidx/compose/runtime/Composer;II)V
    .locals 33

    move/from16 v12, p12

    move/from16 v13, p13

    const v0, -0x7b6a5971

    move-object/from16 v1, p11

    .line 178
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(LinearWavyProgressIndicator)N(modifier,color:c#ui.graphics.Color,trackColor:c#ui.graphics.Color,stroke,trackStroke,gapSize:c#ui.unit.Dp,amplitude,wavelength:c#ui.unit.Dp,waveSpeed:c#ui.unit.Dp)178@9454L65,180@9571L219,187@9842L219,194@10114L221,201@10388L221,219@11063L23,220@11132L23,221@11202L24,222@11273L24,208@10615L1062:WavyProgressIndicator.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v12, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v12

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v12

    :goto_1
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_5

    and-int/lit8 v5, v13, 0x2

    if-nez v5, :cond_3

    move-wide/from16 v5, p1

    invoke-interface {v1, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    goto :goto_3

    :cond_5
    move-wide/from16 v5, p1

    :goto_3
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_8

    and-int/lit8 v7, v13, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p3

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p3

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p3

    :goto_5
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    and-int/lit8 v9, v13, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p5

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v9, p5

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v4, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :goto_7
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, v13, 0x10

    if-nez v10, :cond_c

    move-object/from16 v10, p6

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v10, p6

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v4, v11

    goto :goto_9

    :cond_e
    move-object/from16 v10, p6

    :goto_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v12

    if-nez v11, :cond_11

    and-int/lit8 v11, v13, 0x20

    if-nez v11, :cond_f

    move/from16 v11, p7

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_f
    move/from16 v11, p7

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v4, v14

    goto :goto_b

    :cond_11
    move/from16 v11, p7

    :goto_b
    and-int/lit8 v14, v13, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_12

    or-int/2addr v4, v15

    goto :goto_d

    :cond_12
    and-int/2addr v15, v12

    if-nez v15, :cond_14

    move/from16 v15, p8

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v4, v4, v16

    goto :goto_e

    :cond_14
    :goto_d
    move/from16 v15, p8

    :goto_e
    const/high16 v16, 0xc00000

    and-int v16, v12, v16

    if-nez v16, :cond_17

    and-int/lit16 v0, v13, 0x80

    if-nez v0, :cond_15

    move/from16 v0, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_15
    move/from16 v0, p9

    :cond_16
    const/high16 v17, 0x400000

    :goto_f
    or-int v4, v4, v17

    goto :goto_10

    :cond_17
    move/from16 v0, p9

    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v12, v17

    if-nez v17, :cond_1a

    and-int/lit16 v0, v13, 0x100

    if-nez v0, :cond_18

    move/from16 v0, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_11

    :cond_18
    move/from16 v0, p10

    :cond_19
    const/high16 v17, 0x2000000

    :goto_11
    or-int v4, v4, v17

    goto :goto_12

    :cond_1a
    move/from16 v0, p10

    :goto_12
    const v17, 0x2492493

    and-int v0, v4, v17

    move/from16 p11, v2

    const v2, 0x2492492

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_13

    :cond_1b
    move v0, v3

    :goto_13
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "169@8902L14,170@8972L10,171@9035L21,172@9114L17"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    const v2, -0x1c00001

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, -0x70001

    const v19, -0xe001

    if-eqz v0, :cond_24

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    .line 168
    :cond_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_1d

    and-int/lit8 v4, v4, -0x71

    :cond_1d
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_1e

    and-int/lit16 v4, v4, -0x381

    :cond_1e
    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_1f

    and-int/lit16 v4, v4, -0x1c01

    :cond_1f
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_20

    and-int v4, v4, v19

    :cond_20
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_21

    and-int v4, v4, v18

    :cond_21
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_22

    and-int/2addr v4, v2

    :cond_22
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_23

    const v0, -0xe000001

    and-int/2addr v4, v0

    :cond_23
    move-object/from16 v0, p0

    move/from16 v31, p9

    move/from16 v32, p10

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    goto/16 :goto_17

    :cond_24
    :goto_14
    if-eqz p11, :cond_25

    .line 169
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_15

    :cond_25
    move-object/from16 v0, p0

    :goto_15
    and-int/lit8 v20, v13, 0x2

    if-eqz v20, :cond_26

    .line 170
    sget-object v5, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v5, v1, v3}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getIndicatorColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit8 v4, v4, -0x71

    :cond_26
    and-int/lit8 v20, v13, 0x4

    if-eqz v20, :cond_27

    .line 171
    sget-object v7, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v7, v1, v3}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getTrackColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int/lit16 v4, v4, -0x381

    :cond_27
    and-int/lit8 v20, v13, 0x8

    if-eqz v20, :cond_28

    .line 172
    sget-object v9, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v9, v1, v3}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearIndicatorStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v9

    and-int/lit16 v4, v4, -0x1c01

    :cond_28
    and-int/lit8 v20, v13, 0x10

    if-eqz v20, :cond_29

    .line 173
    sget-object v10, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v10, v1, v3}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearTrackStroke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-result-object v10

    and-int v4, v4, v19

    :cond_29
    and-int/lit8 v19, v13, 0x20

    if-eqz v19, :cond_2a

    .line 174
    sget-object v11, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v11}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearIndicatorTrackGapSize-D9Ej5fM()F

    move-result v11

    and-int v4, v4, v18

    :cond_2a
    if-eqz v14, :cond_2b

    move/from16 v15, v17

    :cond_2b
    and-int/lit16 v14, v13, 0x80

    if-eqz v14, :cond_2c

    .line 176
    sget-object v14, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v14}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearIndeterminateWavelength-D9Ej5fM()F

    move-result v14

    and-int/2addr v2, v4

    move v4, v2

    goto :goto_16

    :cond_2c
    move/from16 v14, p9

    :goto_16
    and-int/lit16 v2, v13, 0x100

    if-eqz v2, :cond_2d

    const v2, -0xe000001

    and-int/2addr v4, v2

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v32, v31

    goto :goto_17

    :cond_2d
    move/from16 v32, p10

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .line 168
    :goto_17
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v5, "androidx.compose.material3.LinearWavyProgressIndicator (WavyProgressIndicator.kt:177)"

    const v6, -0x7b6a5971

    invoke-static {v6, v4, v2, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_2e
    const-string v2, "LinearWavyProgressIndicatorProgress"

    const/4 v4, 0x6

    invoke-static {v2, v1, v4, v3}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v2

    .line 184
    invoke-static {}, Landroidx/compose/material3/ProgressIndicatorKt;->getLinearIndeterminateFirstLineHeadAnimationSpec()Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    .line 185
    sget v5, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v5, v5, 0x61b0

    sget v6, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v6, v6, 0x9

    or-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 181
    const-string v9, "LinearWavyProgressIndicatorFirstHead"

    move-object/from16 p5, v1

    move-object/from16 p0, v2

    move-object/from16 p3, v4

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p1, v7

    move/from16 p2, v8

    move-object/from16 p4, v9

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    move-object/from16 v4, p0

    move-object/from16 v2, p5

    .line 191
    invoke-static {}, Landroidx/compose/material3/ProgressIndicatorKt;->getLinearIndeterminateFirstLineTailAnimationSpec()Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v5

    .line 192
    sget v6, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v6, v6, 0x61b0

    sget v7, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v7, v7, 0x9

    or-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 188
    const-string v10, "LinearWavyProgressIndicatorFirstTail"

    move-object/from16 p3, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p1, v8

    move/from16 p2, v9

    move-object/from16 p4, v10

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    move-object/from16 v5, p0

    move-object/from16 v4, p5

    .line 198
    invoke-static {}, Landroidx/compose/material3/ProgressIndicatorKt;->getLinearIndeterminateSecondLineHeadAnimationSpec()Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v6

    .line 199
    sget v7, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v7, v7, 0x61b0

    sget v8, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v8, v8, 0x9

    or-int/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 195
    const-string v11, "LinearWavyProgressIndicatorSecondHead"

    move-object/from16 p3, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p1, v9

    move/from16 p2, v10

    move-object/from16 p4, v11

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    move-object/from16 v6, p0

    move-object/from16 v5, p5

    .line 205
    invoke-static {}, Landroidx/compose/material3/ProgressIndicatorKt;->getLinearIndeterminateSecondLineTailAnimationSpec()Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v7

    .line 206
    sget v8, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v8, v8, 0x61b0

    sget v9, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v9, v9, 0x9

    or-int/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 202
    const-string v14, "LinearWavyProgressIndicatorSecondTail"

    move-object/from16 p3, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p1, v10

    move/from16 p2, v11

    move-object/from16 p4, v14

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v5

    move-object/from16 v14, p5

    .line 212
    invoke-static {}, Landroidx/compose/material3/internal/AccessibilityUtilKt;->getIncreaseVerticalSemanticsBounds()Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v0, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 213
    invoke-static {v6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 215
    sget-object v7, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearContainerWidth-D9Ej5fM()F

    move-result v7

    .line 216
    sget-object v8, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/WavyProgressIndicatorDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/WavyProgressIndicatorDefaults;->getLinearContainerHeight-D9Ej5fM()F

    move-result v8

    .line 214
    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 218
    invoke-static {v6}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    const v6, -0x4a38a45a

    .line 220
    const-string v7, "CC(remember):WavyProgressIndicator.kt#9igjgp"

    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 515
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_2f

    .line 516
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v8, v6, :cond_30

    .line 220
    :cond_2f
    new-instance v8, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/State;)V

    .line 518
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 220
    :cond_30
    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v1, -0x4a389bba

    .line 221
    invoke-static {v14, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 521
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_31

    .line 522
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_32

    .line 221
    :cond_31
    new-instance v6, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/State;)V

    .line 524
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 221
    :cond_32
    move-object/from16 v20, v6

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v1, -0x4a3892f9

    .line 222
    invoke-static {v14, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 527
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_33

    .line 528
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_34

    .line 222
    :cond_33
    new-instance v2, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda5;

    invoke-direct {v2, v4}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/runtime/State;)V

    .line 530
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 222
    :cond_34
    move-object/from16 v21, v2

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v1, -0x4a388a19

    .line 223
    invoke-static {v14, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 533
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_35

    .line 534
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_36

    .line 223
    :cond_35
    new-instance v2, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda6;

    invoke-direct {v2, v5}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/State;)V

    .line 536
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 223
    :cond_36
    move-object/from16 v22, v2

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    cmpg-float v2, v15, v1

    if-gez v2, :cond_37

    goto :goto_18

    :cond_37
    move v1, v15

    :goto_18
    cmpl-float v2, v1, v17

    if-lez v2, :cond_38

    move/from16 v30, v17

    goto :goto_19

    :cond_38
    move/from16 v30, v1

    .line 219
    :goto_19
    invoke-static/range {v18 .. v32}, Landroidx/compose/material3/internal/LinearWavyProgressModifiersKt;->linearWavyProgressIndicator-OFGGHrU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 209
    invoke-static {v1, v14, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_39
    move-object v1, v0

    move-wide/from16 v2, v23

    move-wide/from16 v4, v25

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v8, v29

    move/from16 v10, v31

    move/from16 v11, v32

    goto :goto_1a

    :cond_3a
    move-object v14, v1

    .line 168
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v1, p0

    move-wide v2, v5

    move-wide v4, v7

    move-object v6, v9

    move-object v7, v10

    move v8, v11

    move/from16 v10, p9

    move/from16 v11, p10

    :goto_1a
    move v9, v15

    .line 234
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_3b

    new-instance v0, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/WavyProgressIndicatorKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFII)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3b
    return-void
.end method

.method private static final LinearWavyProgressIndicator_1YwxWKA$lambda$0$0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 7

    .line 116
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    .line 118
    :goto_1
    new-instance v1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    cmpg-float v2, p0, v0

    if-gez v2, :cond_2

    move p0, v0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v2

    if-lez v3, :cond_3

    move p0, v2

    :cond_3
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V

    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final LinearWavyProgressIndicator_1YwxWKA$lambda$1(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 18

    or-int/lit8 v0, p13, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    invoke-static/range {p14 .. p14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v17, p15

    move-object/from16 v14, p16

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator-1YwxWKA(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFLkotlin/jvm/functions/Function1;FFLandroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final LinearWavyProgressIndicator_hvuEXSk$lambda$0$0(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 220
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final LinearWavyProgressIndicator_hvuEXSk$lambda$1$0(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 221
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final LinearWavyProgressIndicator_hvuEXSk$lambda$2$0(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 222
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final LinearWavyProgressIndicator_hvuEXSk$lambda$3$0(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 223
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final LinearWavyProgressIndicator_hvuEXSk$lambda$4(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 15

    or-int/lit8 v0, p11, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v14, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/WavyProgressIndicatorKt;->LinearWavyProgressIndicator-hvuEXSk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;FFFFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getDecreasingAmplitudeAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 503
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorKt;->DecreasingAmplitudeAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public static final getIncreasingAmplitudeAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 496
    sget-object v0, Landroidx/compose/material3/WavyProgressIndicatorKt;->IncreasingAmplitudeAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method
