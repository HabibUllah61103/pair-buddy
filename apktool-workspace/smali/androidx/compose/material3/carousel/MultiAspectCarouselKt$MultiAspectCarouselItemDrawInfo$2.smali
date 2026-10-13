.class public final Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;
.super Ljava/lang/Object;
.source "MultiAspectCarousel.kt"

# interfaces
.implements Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/carousel/MultiAspectCarouselKt;->MultiAspectCarouselItemDrawInfo(ILandroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/material3/carousel/MultiAspectCarouselItemDrawInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiAspectCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,621:1\n117#2,2:622\n34#2,6:624\n119#2:630\n59#3:631\n54#3:633\n90#4:632\n85#4:634\n*S KotlinDebug\n*F\n+ 1 MultiAspectCarousel.kt\nandroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2\n*L\n101#1:622,2\n101#1:624,6\n101#1:630\n109#1:631\n111#1:633\n109#1:632\n111#1:634\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2",
        "Landroidx/compose/material3/carousel/MultiAspectCarouselItemInfoState;",
        "getInfo",
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
        "isVisible",
        "",
        "()Z",
        "crossAxisSize",
        "",
        "getCrossAxisSize",
        "()F",
        "mainAxisSize",
        "getMainAxisSize",
        "offset",
        "getOffset",
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
.field final synthetic $index:I

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$index:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getInfo()Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .locals 6

    .line 101
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$index:I

    .line 625
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 626
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 623
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 101
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v5

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 630
    :goto_1
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    return-object v4
.end method


# virtual methods
.method public getCrossAxisSize()F
    .locals 4

    .line 108
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    int-to-float v0, v0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    goto :goto_0
.end method

.method public getMainAxisSize()F
    .locals 1

    .line 115
    invoke-direct {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->getInfo()Landroidx/compose/foundation/lazy/LazyListItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOffset()F
    .locals 1

    .line 118
    invoke-direct {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->getInfo()Landroidx/compose/foundation/lazy/LazyListItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 104
    invoke-direct {p0}, Landroidx/compose/material3/carousel/MultiAspectCarouselKt$MultiAspectCarouselItemDrawInfo$2;->getInfo()Landroidx/compose/foundation/lazy/LazyListItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
