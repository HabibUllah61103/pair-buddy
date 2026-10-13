.class final Landroidx/compose/material3/BottomAppBarStateImpl;
.super Ljava/lang/Object;
.source "AppBar.kt"

# interfaces
.implements Landroidx/compose/material3/BottomAppBarState;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/BottomAppBarStateImpl\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,3816:1\n81#2:3817\n114#2,2:3818\n81#2:3820\n114#2,2:3821\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/BottomAppBarStateImpl\n*L\n2496#1:3817\n2496#1:3818,2\n2505#1:3820\n2505#1:3821,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R+\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR+\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u0014\u0010\u0018\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000bR\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/material3/BottomAppBarStateImpl;",
        "Landroidx/compose/material3/BottomAppBarState;",
        "initialHeightOffsetLimit",
        "",
        "initialHeightOffset",
        "initialContentOffset",
        "<init>",
        "(FFF)V",
        "<set-?>",
        "heightOffsetLimit",
        "getHeightOffsetLimit",
        "()F",
        "setHeightOffsetLimit",
        "(F)V",
        "heightOffsetLimit$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "newOffset",
        "heightOffset",
        "getHeightOffset",
        "setHeightOffset",
        "contentOffset",
        "getContentOffset",
        "setContentOffset",
        "contentOffset$delegate",
        "collapsedFraction",
        "getCollapsedFraction",
        "_heightOffset",
        "Landroidx/compose/runtime/MutableFloatState;",
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
.field private _heightOffset:Landroidx/compose/runtime/MutableFloatState;

.field private final contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 2488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2496
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2505
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2515
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public getCollapsedFraction()F
    .locals 2

    .line 2509
    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffsetLimit()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    .line 2510
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffset()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffsetLimit()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getContentOffset()F
    .locals 1

    .line 2505
    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 3820
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getHeightOffset()F
    .locals 1

    .line 2499
    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getHeightOffsetLimit()F
    .locals 1

    .line 2496
    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 3817
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public setContentOffset(F)V
    .locals 1

    .line 2505
    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 3821
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setHeightOffset(F)V
    .locals 3

    .line 2501
    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    .line 2502
    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffsetLimit()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 2501
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setHeightOffsetLimit(F)V
    .locals 1

    .line 2496
    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 3818
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
