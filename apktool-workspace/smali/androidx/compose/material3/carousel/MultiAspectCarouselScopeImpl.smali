.class final Landroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl;
.super Ljava/lang/Object;
.source "MultiAspectCarousel.kt"

# interfaces
.implements Landroidx/compose/material3/carousel/MultiAspectCarouselScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiAspectCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,621:1\n1282#2,6:622\n*S KotlinDebug\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl\n*L\n240#1:622,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0017J)\u0010\n\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/MultiAspectCarouselScopeImpl;",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselScope;",
        "<init>",
        "()V",
        "maskClip",
        "Landroidx/compose/ui/Modifier;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "multiAspectItemDrawInfo",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;",
        "maskBorder",
        "border",
        "Landroidx/compose/foundation/BorderStroke;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maskBorder(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 3

    const v0, 0x4707d9ac

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "C(maskBorder)N(border,shape,multiAspectItemDrawInfo)239@9661L77:MultiAspectCarousel.kt#dcf9yb"

    invoke-static {p5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.carousel.MultiAspectCarouselScopeImpl.maskBorder (MultiAspectCarousel.kt:237)"

    invoke-static {v0, p6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p6, -0x5b87c6e7

    .line 239
    const-string v0, "CC(remember):MultiAspectCarousel.kt#9igjgp"

    .line 240
    invoke-static {p5, p6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 622
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p6

    .line 623
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p6, v0, :cond_1

    .line 240
    new-instance p6, Landroidx/compose/material3/carousel/MaskShape;

    invoke-direct {p6, p3, p4}, Landroidx/compose/material3/carousel/MaskShape;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V

    .line 625
    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 240
    :cond_1
    check-cast p6, Landroidx/compose/material3/carousel/MaskShape;

    invoke-static {p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p6, Landroidx/compose/ui/graphics/Shape;

    .line 238
    invoke-static {p1, p2, p6}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p1
.end method

.method public maskClip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 229
    new-instance v0, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;

    invoke-direct {v0, p2, p3}, Landroidx/compose/material3/carousel/MaskParallaxNodeElement;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
