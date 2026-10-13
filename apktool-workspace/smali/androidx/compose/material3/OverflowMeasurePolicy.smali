.class public final Landroidx/compose/material3/OverflowMeasurePolicy;
.super Ljava/lang/Object;
.source "AppBarDsl.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBarDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBarDsl.kt\nandroidx/compose/material3/OverflowMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,469:1\n320#2,8:470\n320#2,8:478\n150#2,3:486\n34#2,6:489\n153#2:495\n320#2,8:496\n320#2,8:504\n320#2,8:512\n320#2,8:520\n320#2,8:528\n320#2,8:536\n34#2,6:544\n34#2,6:550\n34#2,6:556\n34#2,6:562\n*S KotlinDebug\n*F\n+ 1 AppBarDsl.kt\nandroidx/compose/material3/OverflowMeasurePolicy\n*L\n315#1:470,8\n318#1:478,8\n359#1:486,3\n359#1:489,6\n359#1:495\n366#1:496,8\n368#1:504,8\n375#1:512,8\n376#1:520,8\n380#1:528,8\n381#1:536,8\n393#1:544,6\n397#1:550,6\n405#1:556,6\n409#1:562,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/OverflowMeasurePolicy;",
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "overflowState",
        "Landroidx/compose/material3/AppBarOverflowState;",
        "maxItemCount",
        "",
        "isVertical",
        "",
        "<init>",
        "(Landroidx/compose/material3/AppBarOverflowState;IZ)V",
        "getMaxItemCount",
        "()I",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final isVertical:Z

.field private final maxItemCount:I

.field private final overflowState:Landroidx/compose/material3/AppBarOverflowState;


# direct methods
.method public static synthetic $r8$lambda$2v_AZUa0f8eaSN1MrwWnawihDqQ(Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/OverflowMeasurePolicy;->measure_3p2s80s$lambda$9(Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kKk0TYR1W5koeIsBEHbOy5MwCwA(Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/OverflowMeasurePolicy;->measure_3p2s80s$lambda$10(Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/AppBarOverflowState;IZ)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Landroidx/compose/material3/OverflowMeasurePolicy;->overflowState:Landroidx/compose/material3/AppBarOverflowState;

    .line 300
    iput p2, p0, Landroidx/compose/material3/OverflowMeasurePolicy;->maxItemCount:I

    .line 301
    iput-boolean p3, p0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/AppBarOverflowState;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 298
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/OverflowMeasurePolicy;-><init>(Landroidx/compose/material3/AppBarOverflowState;IZ)V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$10(Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 10

    .line 557
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 558
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 559
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    .line 406
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 407
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p2

    add-int/2addr v5, p2

    add-int/lit8 v2, v2, 0x1

    move-object p2, v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    if-eqz p1, :cond_1

    .line 563
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_1

    .line 564
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 565
    move-object v4, p2

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 409
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 410
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$9(Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 10

    .line 545
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v6, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 546
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 547
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    .line 394
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 395
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    add-int/2addr v6, p2

    add-int/lit8 v2, v2, 0x1

    move-object p2, v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    if-eqz p1, :cond_1

    .line 551
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_1

    .line 552
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 553
    move-object v4, p2

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 397
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getMaxItemCount()I
    .locals 1

    .line 300
    iget v0, p0, Landroidx/compose/material3/OverflowMeasurePolicy;->maxItemCount:I

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;>;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v2, p3

    .line 307
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 308
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 310
    iget-object v7, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->overflowState:Landroidx/compose/material3/AppBarOverflowState;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Landroidx/compose/material3/AppBarOverflowState;->setTotalItemCount(I)V

    .line 314
    iget-boolean v7, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v7, :cond_3

    .line 471
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    .line 472
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 315
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    invoke-interface {v7, v9}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 472
    check-cast v7, Ljava/lang/Comparable;

    .line 473
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    if-gt v6, v9, :cond_2

    move v12, v6

    .line 474
    :goto_0
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 315
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    invoke-interface {v13, v14}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 474
    check-cast v13, Ljava/lang/Comparable;

    .line 475
    invoke-interface {v13, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_1

    move-object v7, v13

    :cond_1
    if-eq v12, v9, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 315
    :cond_2
    :goto_1
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_4

    .line 479
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    .line 480
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 318
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    invoke-interface {v7, v9}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 480
    check-cast v7, Ljava/lang/Comparable;

    .line 481
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    if-gt v6, v9, :cond_6

    move v12, v6

    .line 482
    :goto_2
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 318
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v14

    invoke-interface {v13, v14}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 482
    check-cast v13, Ljava/lang/Comparable;

    .line 483
    invoke-interface {v13, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_5

    move-object v7, v13

    :cond_5
    if-eq v12, v9, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 318
    :cond_6
    :goto_3
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_4

    :cond_7
    move v7, v4

    .line 321
    :goto_4
    iget-boolean v9, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v9, :cond_8

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    goto :goto_5

    :cond_8
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    .line 322
    :goto_5
    invoke-static {v9, v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v9

    .line 325
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/List;

    .line 328
    move-object v13, v5

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    move v14, v4

    move/from16 v18, v14

    :goto_6
    if-ge v14, v13, :cond_d

    .line 329
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v15, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v15

    .line 330
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-ne v14, v8, :cond_9

    move v8, v6

    goto :goto_7

    :cond_9
    move v8, v4

    :goto_7
    move/from16 v19, v6

    if-nez v8, :cond_a

    .line 331
    iget v6, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->maxItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v14, v6, :cond_a

    goto :goto_9

    .line 334
    :cond_a
    iget-boolean v6, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v6, :cond_b

    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    goto :goto_8

    :cond_b
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    :goto_8
    if-le v6, v9, :cond_c

    if-eqz v8, :cond_e

    add-int v8, v9, v7

    if-gt v6, v8, :cond_e

    .line 340
    :cond_c
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v18, v18, v6

    .line 342
    invoke-static {v9, v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v9

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v19

    goto :goto_6

    :cond_d
    move/from16 v19, v6

    .line 348
    :cond_e
    :goto_9
    iget-object v6, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->overflowState:Landroidx/compose/material3/AppBarOverflowState;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, v8}, Landroidx/compose/material3/AppBarOverflowState;->setVisibleItemCount(I)V

    .line 352
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v6, v5, :cond_11

    .line 354
    iget-boolean v5, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v5, :cond_f

    add-int v15, v9, v7

    const/16 v16, 0x7

    const/16 v17, 0x0

    move-object v5, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 355
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v6

    goto :goto_a

    :cond_f
    move-object v5, v12

    add-int v13, v9, v7

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 357
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v6

    .line 487
    :goto_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move v10, v4

    :goto_b
    if-ge v10, v9, :cond_10

    .line 491
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 488
    move-object v12, v8

    check-cast v12, Ljava/util/Collection;

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 359
    invoke-interface {v11, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    .line 488
    invoke-interface {v12, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 495
    :cond_10
    check-cast v8, Ljava/util/List;

    goto :goto_c

    :cond_11
    move-object v5, v12

    const/4 v8, 0x0

    .line 365
    :goto_c
    iget-boolean v1, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v1, :cond_15

    if-eqz v8, :cond_19

    .line 497
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_e

    .line 498
    :cond_12
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 366
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 498
    check-cast v1, Ljava/lang/Comparable;

    .line 499
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    move/from16 v7, v19

    if-gt v7, v6, :cond_14

    const/4 v7, 0x1

    .line 500
    :goto_d
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .line 366
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 500
    check-cast v9, Ljava/lang/Comparable;

    .line 501
    invoke-interface {v9, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_13

    move-object v1, v9

    :cond_13
    if-eq v7, v6, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 366
    :cond_14
    :goto_e
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    :cond_15
    if-eqz v8, :cond_19

    .line 505
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    goto :goto_10

    .line 506
    :cond_16
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 368
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 506
    check-cast v1, Ljava/lang/Comparable;

    .line 507
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    const/4 v7, 0x1

    if-gt v7, v6, :cond_18

    const/4 v7, 0x1

    .line 508
    :goto_f
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .line 368
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 508
    check-cast v9, Ljava/lang/Comparable;

    .line 509
    invoke-interface {v9, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_17

    move-object v1, v9

    :cond_17
    if-eq v7, v6, :cond_18

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 368
    :cond_18
    :goto_10
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    :cond_19
    move v1, v4

    :goto_11
    add-int v1, v18, v1

    .line 373
    iget-boolean v6, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v6, :cond_23

    .line 513
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    goto :goto_13

    .line 514
    :cond_1a
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 375
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 514
    check-cast v6, Ljava/lang/Comparable;

    .line 515
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    const/4 v9, 0x1

    if-gt v9, v7, :cond_1c

    const/4 v9, 0x1

    .line 516
    :goto_12
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 375
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 516
    check-cast v10, Ljava/lang/Comparable;

    .line 517
    invoke-interface {v10, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_1b

    move-object v6, v10

    :cond_1b
    if-eq v9, v7, :cond_1c

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 375
    :cond_1c
    :goto_13
    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_14

    :cond_1d
    move v6, v4

    :goto_14
    if-eqz v8, :cond_22

    .line 521
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x0

    goto :goto_16

    .line 522
    :cond_1e
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 376
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 522
    check-cast v7, Ljava/lang/Comparable;

    .line 523
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    const/4 v10, 0x1

    if-gt v10, v9, :cond_21

    move-object v10, v7

    const/4 v7, 0x1

    .line 524
    :goto_15
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 376
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 524
    check-cast v11, Ljava/lang/Comparable;

    .line 525
    invoke-interface {v11, v10}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_1f

    move-object v10, v11

    :cond_1f
    if-eq v7, v9, :cond_20

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_20
    move-object v7, v10

    .line 376
    :cond_21
    :goto_16
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_22

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 374
    :cond_22
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto/16 :goto_1c

    .line 529
    :cond_23
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x0

    goto :goto_18

    .line 530
    :cond_24
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 380
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 530
    check-cast v6, Ljava/lang/Comparable;

    .line 531
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    const/4 v9, 0x1

    if-gt v9, v7, :cond_26

    const/4 v9, 0x1

    .line 532
    :goto_17
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 380
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 532
    check-cast v10, Ljava/lang/Comparable;

    .line 533
    invoke-interface {v10, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_25

    move-object v6, v10

    :cond_25
    if-eq v9, v7, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 380
    :cond_26
    :goto_18
    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_27

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_19

    :cond_27
    move v6, v4

    :goto_19
    if-eqz v8, :cond_2b

    .line 537
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_28

    const/4 v7, 0x0

    goto :goto_1b

    .line 538
    :cond_28
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 381
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 538
    check-cast v7, Ljava/lang/Comparable;

    .line 539
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    const/4 v10, 0x1

    if-gt v10, v9, :cond_2a

    .line 540
    :goto_1a
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 381
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 540
    check-cast v11, Ljava/lang/Comparable;

    .line 541
    invoke-interface {v11, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_29

    move-object v7, v11

    :cond_29
    if-eq v10, v9, :cond_2a

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 381
    :cond_2a
    :goto_1b
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 379
    :cond_2b
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 387
    :goto_1c
    iget-boolean v6, v0, Landroidx/compose/material3/OverflowMeasurePolicy;->isVertical:Z

    if-eqz v6, :cond_2c

    .line 388
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v10

    .line 389
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v11

    .line 391
    new-instance v13, Landroidx/compose/material3/OverflowMeasurePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v13, v5, v8}, Landroidx/compose/material3/OverflowMeasurePolicy$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1

    .line 400
    :cond_2c
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v1

    .line 401
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v4

    .line 403
    new-instance v6, Landroidx/compose/material3/OverflowMeasurePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v8}, Landroidx/compose/material3/OverflowMeasurePolicy$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move v3, v1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
