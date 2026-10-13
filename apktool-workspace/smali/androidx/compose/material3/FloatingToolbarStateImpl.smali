.class final Landroidx/compose/material3/FloatingToolbarStateImpl;
.super Ljava/lang/Object;
.source "FloatingToolbar.kt"

# interfaces
.implements Landroidx/compose/material3/FloatingToolbarState;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/FloatingToolbarStateImpl\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,2470:1\n81#2:2471\n114#2,2:2472\n81#2:2474\n114#2,2:2475\n*S KotlinDebug\n*F\n+ 1 FloatingToolbar.kt\nandroidx/compose/material3/FloatingToolbarStateImpl\n*L\n1471#1:2471\n1471#1:2472,2\n1479#1:2474\n1479#1:2475,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R+\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR+\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingToolbarStateImpl;",
        "Landroidx/compose/material3/FloatingToolbarState;",
        "initialOffsetLimit",
        "",
        "initialOffset",
        "initialContentOffset",
        "<init>",
        "(FFF)V",
        "<set-?>",
        "offsetLimit",
        "getOffsetLimit",
        "()F",
        "setOffsetLimit",
        "(F)V",
        "offsetLimit$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "newOffset",
        "offset",
        "getOffset",
        "setOffset",
        "contentOffset",
        "getContentOffset",
        "setContentOffset",
        "contentOffset$delegate",
        "_offset",
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
.field private _offset:Landroidx/compose/runtime/MutableFloatState;

.field private final contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final offsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->offsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1479
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1481
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->_offset:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public getContentOffset()F
    .locals 1

    .line 1479
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 2474
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getOffset()F
    .locals 1

    .line 1474
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->_offset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getOffsetLimit()F
    .locals 1

    .line 1471
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->offsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 2471
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public setContentOffset(F)V
    .locals 1

    .line 1479
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2475
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setOffset(F)V
    .locals 3

    .line 1476
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->_offset:Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/material3/FloatingToolbarStateImpl;->getOffsetLimit()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setOffsetLimit(F)V
    .locals 1

    .line 1471
    iget-object v0, p0, Landroidx/compose/material3/FloatingToolbarStateImpl;->offsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2472
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
