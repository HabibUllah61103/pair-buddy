.class public final Landroidx/compose/material3/carousel/MultiAspectCarouselKt;
.super Ljava/lang/Object;
.source "MultiAspectCarousel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiAspectCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MultiAspectCarouselKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,621:1\n1282#2,6:622\n*S KotlinDebug\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MultiAspectCarouselKt\n*L\n66#1:622,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a+\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000eH\u0007\u001a\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a2\u0006\u0002\u0010\u0016\u001a\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010H\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "MultiAspectCarouselScope",
        "",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V",
        "MultiAspectCarouselItemDrawInfo",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "index",
        "",
        "state",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "getParallax",
        "",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;",
        "itemState",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;",
        "getMask",
        "Landroidx/collection/FloatFloatPair;",
        "(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)J",
        "getMinSize",
        "getMaskIntensity",
        "mainAxisSize",
        "crossAxisSize",
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


# direct methods
.method public static synthetic $r8$lambda$lkIMnRpCPN7rN52-QQdrZ1xOAyg(Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->MultiAspectCarouselScope$lambda$1(Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final MultiAspectCarouselItemDrawInfo(ILandroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
    .locals 3

    .line 87
    new-instance v0, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfoImpl;

    .line 89
    new-instance v1, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    check-cast v1, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;

    .line 99
    new-instance v2, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;

    invoke-direct {v2, p1, p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    check-cast v2, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;

    .line 87
    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfoImpl;-><init>(ILandroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)V

    check-cast v0, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-object v0
.end method

.method public static final MultiAspectCarouselItemDrawInfo(ILandroidx/compose/foundation/lazy/grid/LazyGridState;)Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
    .locals 3

    .line 139
    new-instance v0, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfoImpl;

    .line 141
    new-instance v1, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$3;

    invoke-direct {v1, p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$3;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    check-cast v1, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;

    .line 151
    new-instance v2, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$4;

    invoke-direct {v2, p1, p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$4;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    check-cast v2, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;

    .line 139
    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfoImpl;-><init>(ILandroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)V

    check-cast v0, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-object v0
.end method

.method public static final MultiAspectCarouselScope(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/carousel/MultiAspectCarouselScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, 0x35b9c173

    .line 65
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(MultiAspectCarouselScope)N(content)65@2907L43,66@2961L9:MultiAspectCarousel.kt#dcf9yb"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.carousel.MultiAspectCarouselScope (MultiAspectCarousel.kt:64)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const v0, -0x51b0c202

    const-string v2, "CC(remember):MultiAspectCarousel.kt#9igjgp"

    .line 66
    invoke-static {p1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 622
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 623
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 66
    new-instance v0, Landroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl;

    invoke-direct {v0}, Landroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl;-><init>()V

    .line 625
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    :cond_4
    check-cast v0, Landroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 65
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 68
    :cond_6
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_7
    return-void
.end method

.method private static final MultiAspectCarouselScope$lambda$1(Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p1

    invoke-static {p0, p2, p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->MultiAspectCarouselScope(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getMask(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->getMask(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getMinSize(Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->getMinSize(Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getParallax(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->getParallax(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)F

    move-result p0

    return p0
.end method

.method private static final getMask(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)J
    .locals 4

    .line 542
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0

    .line 544
    :cond_0
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getMainAxisSize()F

    move-result v0

    .line 545
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getCrossAxisSize()F

    move-result v2

    .line 551
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getOffset()F

    move-result p1

    .line 554
    invoke-static {v0, v2}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->getMaskIntensity(FF)F

    move-result v2

    .line 557
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportStartOffset()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 558
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportStartOffset()F

    move-result p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    .line 561
    invoke-static {v1, p1, v1, v0, p0}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result p0

    .line 568
    invoke-static {p0, v0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0

    .line 572
    :cond_1
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportEndOffset()F

    move-result v3

    sub-float/2addr v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 573
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportEndOffset()F

    move-result p0

    sub-float/2addr p0, p1

    sub-float/2addr p0, v0

    neg-float p0, p0

    mul-float/2addr v2, v0

    .line 577
    invoke-static {v0, v2, v1, v0, p0}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result p0

    .line 584
    invoke-static {v1, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0

    .line 587
    :cond_2
    invoke-static {v1, v0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final getMaskIntensity(FF)F
    .locals 4

    div-float/2addr p0, p1

    const p1, 0x3fe38e39

    cmpl-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    if-lez v0, :cond_0

    return v1

    :cond_0
    cmpg-float v0, p0, p1

    const v2, 0x3eaaaaab

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    cmpl-float v0, p0, v3

    if-lez v0, :cond_1

    .line 603
    invoke-static {v2, v1, v3, p1, p0}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result p0

    return p0

    :cond_1
    cmpg-float p1, p0, v3

    const/high16 v0, 0x3e800000    # 0.25f

    if-gez p1, :cond_2

    const/high16 p1, 0x3f100000    # 0.5625f

    cmpl-float v1, p0, p1

    if-lez v1, :cond_2

    .line 611
    invoke-static {v0, v2, p1, v3, p0}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private static final getMinSize(Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)F
    .locals 2

    .line 591
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 593
    :cond_0
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getMainAxisSize()F

    move-result v0

    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getCrossAxisSize()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->getMaskIntensity(FF)F

    move-result v0

    .line 594
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getMainAxisSize()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr p0, v1

    return p0
.end method

.method private static final getParallax(Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;)F
    .locals 4

    .line 493
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 495
    :cond_0
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getMainAxisSize()F

    move-result v0

    .line 496
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getCrossAxisSize()F

    move-result v2

    .line 502
    invoke-interface {p1}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;->getOffset()F

    move-result p1

    .line 505
    invoke-static {v0, v2}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->getMaskIntensity(FF)F

    move-result v2

    mul-float/2addr v2, v0

    .line 509
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportStartOffset()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 510
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportStartOffset()F

    move-result p0

    sub-float/2addr p0, p1

    .line 512
    invoke-static {v1, v2, v1, v0, p0}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result p0

    return p0

    .line 522
    :cond_1
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportEndOffset()F

    move-result v3

    sub-float/2addr v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 523
    invoke-interface {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;->getViewportEndOffset()F

    move-result p0

    sub-float/2addr p0, p1

    sub-float/2addr p0, v0

    neg-float p0, p0

    .line 526
    invoke-static {v1, v2, v1, v0, p0}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(FFFFF)F

    move-result p0

    neg-float p0, p0

    return p0

    :cond_2
    return v1
.end method
