.class final Landroidx/compose/material3/carousel/MaskParallaxNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "MultiAspectCarousel.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiAspectCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MaskParallaxNode\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,621:1\n119#2,8:622\n119#2,8:630\n*S KotlinDebug\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MaskParallaxNode\n*L\n269#1:622,8\n271#1:630,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\u0012\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000c\u0010\u001b\u001a\u00020\u001c*\u00020\u001dH\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/MaskParallaxNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "baseShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "drawInfo",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V",
        "getDrawInfo",
        "()Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "setDrawInfo",
        "(Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V",
        "maskShape",
        "Landroidx/compose/material3/carousel/MaskShape;",
        "getMaskShape",
        "()Landroidx/compose/material3/carousel/MaskShape;",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "draw",
        "",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
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


# instance fields
.field private drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

.field private final maskShape:Landroidx/compose/material3/carousel/MaskShape;


# direct methods
.method public static synthetic $r8$lambda$VODQJGBcMTVO-DwHmMDNdsp6YP8(Landroidx/compose/material3/carousel/MaskParallaxNode;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/carousel/MaskParallaxNode;->measure_3p2s80s$lambda$0$0(Landroidx/compose/material3/carousel/MaskParallaxNode;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YFvBZoIiDwvWb3ZNKtTiiptc1vE(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/carousel/MaskParallaxNode;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/carousel/MaskParallaxNode;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/carousel/MaskParallaxNode;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V
    .locals 1

    .line 244
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 245
    iput-object p2, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    .line 248
    new-instance p2, Landroidx/compose/material3/carousel/MaskShape;

    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-direct {p2, p1, v0}, Landroidx/compose/material3/carousel/MaskShape;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V

    iput-object p2, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->maskShape:Landroidx/compose/material3/carousel/MaskShape;

    return-void
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/carousel/MaskParallaxNode;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 8

    .line 256
    new-instance v5, Landroidx/compose/material3/carousel/MaskParallaxNode$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Landroidx/compose/material3/carousel/MaskParallaxNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/carousel/MaskParallaxNode;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 264
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$0$0(Landroidx/compose/material3/carousel/MaskParallaxNode;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 260
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setClip(Z)V

    .line 261
    iget-object p0, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->maskShape:Landroidx/compose/material3/carousel/MaskShape;

    check-cast p0, Landroidx/compose/ui/graphics/Shape;

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 262
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 5

    .line 268
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v0}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_0

    .line 269
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v3, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v3}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getParallax()F

    move-result v3

    .line 623
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 269
    :try_start_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float v0, v3

    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    neg-float v1, v3

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw p1

    .line 271
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v3, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v3}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getParallax()F

    move-result v3

    .line 631
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 271
    :try_start_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 635
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float v0, v3

    invoke-interface {p1, v2, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    return-void

    :catchall_1
    move-exception p1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    neg-float v1, v3

    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw p1
.end method

.method public final getDrawInfo()Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-object v0
.end method

.method public final getMaskShape()Landroidx/compose/material3/carousel/MaskShape;
    .locals 1

    .line 248
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->maskShape:Landroidx/compose/material3/carousel/MaskShape;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    .line 254
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 255
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Landroidx/compose/material3/carousel/MaskParallaxNode$$ExternalSyntheticLambda1;

    invoke-direct {v4, p2, p0}, Landroidx/compose/material3/carousel/MaskParallaxNode$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/carousel/MaskParallaxNode;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final setDrawInfo(Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V
    .locals 0

    .line 245
    iput-object p1, p0, Landroidx/compose/material3/carousel/MaskParallaxNode;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-void
.end method
