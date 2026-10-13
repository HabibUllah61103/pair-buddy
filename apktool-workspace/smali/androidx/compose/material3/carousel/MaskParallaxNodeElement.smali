.class final Landroidx/compose/material3/carousel/MaskParallaxNodeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "MultiAspectCarousel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/carousel/MaskParallaxNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u000c\u0010\u0011\u001a\u00020\u000f*\u00020\u0012H\u0016J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/MaskParallaxNodeElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/carousel/MaskParallaxNode;",
        "baseShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "drawInfo",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V",
        "getBaseShape",
        "()Landroidx/compose/ui/graphics/Shape;",
        "getDrawInfo",
        "()Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "create",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final baseShape:Landroidx/compose/ui/graphics/Shape;

.field private final drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 278
    iput-object p1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    .line 279
    iput-object p2, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material3/carousel/MaskParallaxNode;
    .locals 3

    .line 282
    new-instance v0, Landroidx/compose/material3/carousel/MaskParallaxNode;

    iget-object v1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/carousel/MaskParallaxNode;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 276
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->create()Landroidx/compose/material3/carousel/MaskParallaxNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 297
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 298
    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    check-cast p1, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;

    iget-object v3, p1, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    iget-object p1, p1, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getBaseShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getDrawInfo()Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 302
    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    iget-object v1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    .line 290
    const-string v0, "maskParallaxNodeElement"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "baseShape"

    iget-object v2, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "drawInfo"

    iget-object v1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/material3/carousel/MaskParallaxNode;)V
    .locals 2

    .line 285
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/MaskParallaxNode;->getMaskShape()Landroidx/compose/material3/carousel/MaskShape;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->baseShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1}, Landroidx/compose/material3/carousel/MaskShape;->setBaseShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 286
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/MaskParallaxNode;->getMaskShape()Landroidx/compose/material3/carousel/MaskShape;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->drawInfo:Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/carousel/MaskShape;->setDrawInfo(Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 276
    check-cast p1, Landroidx/compose/material3/carousel/MaskParallaxNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;->update(Landroidx/compose/material3/carousel/MaskParallaxNode;)V

    return-void
.end method
