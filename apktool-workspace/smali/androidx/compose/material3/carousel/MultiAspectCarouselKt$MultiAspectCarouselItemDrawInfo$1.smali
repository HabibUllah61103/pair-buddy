.class public final Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;
.super Ljava/lang/Object;
.source "MultiAspectCarousel.kt"

# interfaces
.implements Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->MultiAspectCarouselItemDrawInfo(ILandroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselContainerState;",
        "viewportEndOffset",
        "",
        "getViewportEndOffset",
        "()F",
        "viewportStartOffset",
        "getViewportStartOffset",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
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
.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getViewportEndOffset()F
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportEndOffset()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getViewportStartOffset()F
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportStartOffset()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
