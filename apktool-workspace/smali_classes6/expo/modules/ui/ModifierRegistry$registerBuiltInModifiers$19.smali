.class final Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;
.super Ljava/lang/Object;
.source "ModifierRegistry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/ModifierRegistry;->registerBuiltInModifiers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function6<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Lexpo/modules/kotlin/views/ComposableScope;",
        "Lexpo/modules/kotlin/AppContext;",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Ljava/lang/String;",
        "-",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;+",
        "Lkotlin/Unit;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierRegistry.kt\nexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19\n+ 2 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverterKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,591:1\n176#2,3:592\n1#3:595\n75#4:596\n1128#5,6:597\n*S KotlinDebug\n*F\n+ 1 ModifierRegistry.kt\nexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19\n*L\n439#1:592,3\n447#1:596\n449#1:597,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;


# direct methods
.method public static synthetic $r8$lambda$_YmEtN1W0aO3RmQroLOfbBgPUas(FFFFFFFFFLexpo/modules/ui/convertibles/GraphicsLayerParams;FLandroidx/compose/ui/graphics/Shape;ILandroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p13}, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;->invoke$lambda$4$lambda$3(FFFFFFFFFLexpo/modules/ui/convertibles/GraphicsLayerParams;FLandroidx/compose/ui/graphics/Shape;ILandroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;

    invoke-direct {v0}, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;-><init>()V

    sput-object v0, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;->INSTANCE:Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$4$lambda$3(FFFFFFFFFLexpo/modules/ui/convertibles/GraphicsLayerParams;FLandroidx/compose/ui/graphics/Shape;ILandroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$graphicsLayer"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-interface {p13, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationX(F)V

    .line 451
    invoke-interface {p13, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationY(F)V

    .line 452
    invoke-interface {p13, p2}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationZ(F)V

    .line 453
    invoke-interface {p13, p3}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    .line 454
    invoke-interface {p13, p4}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    .line 455
    invoke-interface {p13, p5}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setAlpha(F)V

    mul-float/2addr p6, p7

    .line 456
    invoke-interface {p13, p6}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTranslationX(F)V

    mul-float/2addr p8, p7

    .line 457
    invoke-interface {p13, p8}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTranslationY(F)V

    .line 458
    invoke-virtual {p9}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getCameraDistance()F

    move-result p0

    mul-float/2addr p0, p7

    invoke-interface {p13, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setCameraDistance(F)V

    mul-float/2addr p10, p7

    .line 459
    invoke-interface {p13, p10}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setShadowElevation(F)V

    .line 460
    invoke-virtual {p9}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getTransformOriginX()F

    move-result p0

    invoke-virtual {p9}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getTransformOriginY()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide p0

    invoke-interface {p13, p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 461
    invoke-virtual {p9}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getClip()Z

    move-result p0

    invoke-interface {p13, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setClip(Z)V

    .line 462
    invoke-interface {p13, p11}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 463
    invoke-interface {p13, p12}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setCompositingStrategy-aDBOjCE(I)V

    .line 464
    invoke-virtual {p9}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getAmbientShadowColor()Landroid/graphics/Color;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide p0

    invoke-interface {p13, p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    .line 465
    :cond_0
    invoke-virtual {p9}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getSpotShadowColor()Landroid/graphics/Color;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lexpo/modules/ui/UtilsKt;->getCompose(Landroid/graphics/Color;)J

    move-result-wide p0

    invoke-interface {p13, p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    .line 466
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/util/Map;Lexpo/modules/kotlin/views/ComposableScope;Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/kotlin/views/ComposableScope;",
            "Lexpo/modules/kotlin/AppContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    const-string v3, "map"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$unused$var$"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x6a682b21

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "C427@12994L39,428@13056L39,429@13118L39,430@13177L36,431@13233L36,432@13291L35,433@13352L42,434@13420L42,435@13491L45,446@14032L7,448@14078L795:ModifierRegistry.kt#v15e7d"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    const-string v4, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:427)"

    invoke-static {v3, v2, v5, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x1b0

    .line 428
    const-string v3, "rotationX"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v7

    .line 429
    const-string v3, "rotationY"

    invoke-static {v0, v3, v4, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v8

    .line 430
    const-string v3, "rotationZ"

    invoke-static {v0, v3, v4, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v9

    .line 431
    const-string v3, "scaleX"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v6, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v10

    .line 432
    const-string v3, "scaleY"

    invoke-static {v0, v3, v6, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v11

    .line 433
    const-string v3, "alpha"

    invoke-static {v0, v3, v6, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v12

    .line 434
    const-string v3, "translationX"

    invoke-static {v0, v3, v4, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v13

    .line 435
    const-string v3, "translationY"

    invoke-static {v0, v3, v4, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v15

    .line 436
    const-string v3, "shadowElevation"

    invoke-static {v0, v3, v4, v1, v2}, Lexpo/modules/ui/convertibles/AnimatableFloatKt;->resolveAnimatable(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F

    move-result v2

    .line 592
    sget-object v3, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const-class v4, Lexpo/modules/ui/convertibles/GraphicsLayerParams;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v3

    .line 594
    const-string v4, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lexpo/modules/kotlin/records/RecordTypeConverter;

    invoke-static {v0, v3}, Lexpo/modules/kotlin/records/RecordTypeConverterKt;->recordFromMap(Ljava/util/Map;Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/records/Record;

    move-result-object v0

    .line 439
    check-cast v0, Lexpo/modules/ui/convertibles/GraphicsLayerParams;

    .line 440
    invoke-virtual {v0}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getShape()Lexpo/modules/ui/BuiltinShapeRecord;

    move-result-object v3

    const v4, 0x710a4259

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v4, "*439@13691L16"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sget-object v4, Lexpo/modules/ui/ModifierRegistry;->INSTANCE:Lexpo/modules/ui/ModifierRegistry;

    const/4 v6, 0x0

    invoke-static {v4, v3, v1, v6}, Lexpo/modules/ui/ModifierRegistry;->access$resolveShape(Lexpo/modules/ui/ModifierRegistry;Lexpo/modules/ui/BuiltinShapeRecord;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    :goto_0
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-nez v3, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    .line 441
    :cond_2
    invoke-virtual {v0}, Lexpo/modules/ui/convertibles/GraphicsLayerParams;->getCompositingStrategy()Lexpo/modules/ui/convertibles/CompositingStrategyType;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lexpo/modules/ui/convertibles/CompositingStrategyType;->ordinal()I

    move-result v4

    aget v5, v5, v4

    :goto_1
    const/4 v4, 0x1

    if-eq v5, v4, :cond_5

    const/4 v4, 0x2

    if-eq v5, v4, :cond_4

    .line 444
    sget-object v4, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getAuto--NrFUSI()I

    move-result v4

    goto :goto_2

    .line 443
    :cond_4
    sget-object v4, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getModulateAlpha--NrFUSI()I

    move-result v4

    goto :goto_2

    .line 442
    :cond_5
    sget-object v4, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getOffscreen--NrFUSI()I

    move-result v4

    .line 447
    :goto_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    const v6, 0x789c5f52

    const-string v14, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    .line 596
    invoke-static {v1, v6, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 447
    invoke-interface {v5}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v14

    .line 449
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const v6, -0x48fade91

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v6, "CC(remember):ModifierRegistry.kt#9igjgp"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v6

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    or-int v6, v6, v16

    move-object/from16 v16, v0

    .line 597
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_6

    .line 598
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v0, v6, :cond_7

    .line 449
    :cond_6
    new-instance v6, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19$$ExternalSyntheticLambda0;

    move/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v6 .. v19}, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19$$ExternalSyntheticLambda0;-><init>(FFFFFFFFFLexpo/modules/ui/convertibles/GraphicsLayerParams;FLandroidx/compose/ui/graphics/Shape;I)V

    .line 600
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v6

    .line 449
    :cond_7
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v5, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 427
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lexpo/modules/kotlin/views/ComposableScope;

    move-object v3, p3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    move-object v4, p4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p5

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lexpo/modules/ui/ModifierRegistry$registerBuiltInModifiers$19;->invoke(Ljava/util/Map;Lexpo/modules/kotlin/views/ComposableScope;Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
