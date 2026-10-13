.class final Landroidx/compose/material3/carousel/MaskShape;
.super Ljava/lang/Object;
.source "MultiAspectCarousel.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiAspectCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MaskShape\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,621:1\n30#2:622\n53#3,3:623\n*S KotlinDebug\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MaskShape\n*L\n341#1:622\n341#1:623,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/MaskShape;",
        "Landroidx/compose/ui/graphics/Shape;",
        "baseShape",
        "drawInfo",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V",
        "getBaseShape",
        "()Landroidx/compose/ui/graphics/Shape;",
        "setBaseShape",
        "(Landroidx/compose/ui/graphics/Shape;)V",
        "getDrawInfo",
        "()Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "setDrawInfo",
        "(Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "createOutline",
        "Landroidx/compose/ui/graphics/Outline;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createOutline-Pq9zytI",
        "(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;",
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
.field private baseShape:Landroidx/compose/ui/graphics/Shape;

.field private drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

.field private final path:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Landroidx/compose/material3/carousel/MaskShape;->baseShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    .line 312
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/carousel/MaskShape;->path:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 6

    .line 319
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskShape;->path:Landroidx/compose/ui/graphics/Path;

    .line 320
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 321
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 323
    iget-object v2, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v2}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getSize()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    iget-object v2, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v2}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    .line 327
    iget-object v3, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v3}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getMaskStart()F

    move-result v3

    .line 328
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    .line 329
    iget-object v5, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v5}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getMaskEnd()F

    move-result v5

    .line 330
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    .line 326
    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_0

    .line 333
    :cond_1
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    .line 334
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    .line 335
    iget-object v4, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v4}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getMaskStart()F

    move-result v4

    .line 336
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    .line 337
    iget-object v5, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-interface {v5}, Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;->getMaskEnd()F

    move-result v5

    .line 333
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    :goto_0
    move-object v1, v2

    .line 340
    :goto_1
    iget-object v2, p0, Landroidx/compose/material3/carousel/MaskShape;->baseShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p3, p4}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p3

    invoke-static {v0, p3}, Landroidx/compose/ui/graphics/OutlineKt;->addOutline(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Outline;)V

    .line 341
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p3

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p4

    .line 623
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v1, p3

    .line 624
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long p3, p3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr p3, v3

    or-long/2addr p3, v1

    .line 622
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p3

    .line 341
    invoke-interface {v0, p3, p4}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    .line 342
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 345
    iget-object p3, p0, Landroidx/compose/material3/carousel/MaskShape;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {p3}, Landroidx/compose/ui/graphics/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    check-cast p3, Landroidx/compose/ui/graphics/Outline;

    return-object p3

    :cond_2
    new-instance p1, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object p2, p0, Landroidx/compose/material3/carousel/MaskShape;->path:Landroidx/compose/ui/graphics/Path;

    invoke-direct {p1, p2}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    check-cast p1, Landroidx/compose/ui/graphics/Outline;

    return-object p1
.end method

.method public final getBaseShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 309
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskShape;->baseShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getDrawInfo()Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
    .locals 1

    .line 309
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-object v0
.end method

.method public final setBaseShape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 309
    iput-object p1, p0, Landroidx/compose/material3/carousel/MaskShape;->baseShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public final setDrawInfo(Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V
    .locals 0

    .line 309
    iput-object p1, p0, Landroidx/compose/material3/carousel/MaskShape;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-void
.end method
