.class final Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1;
.super Ljava/lang/Object;
.source "SplitButton.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SplitButtonKt;->SplitButtonLayout--jt2gSs(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitButton.kt\nandroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1390:1\n563#2,2:1391\n34#2,6:1393\n565#2:1399\n563#2,2:1400\n34#2,6:1402\n565#2:1408\n133#2,3:1409\n34#2,6:1412\n136#2:1418\n320#2,8:1419\n*S KotlinDebug\n*F\n+ 1 SplitButton.kt\nandroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1\n*L\n149#1:1391,2\n149#1:1393,6\n149#1:1399\n154#1:1400,2\n154#1:1402,6\n154#1:1408\n168#1:1409,3\n168#1:1412,6\n168#1:1418\n169#1:1419,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$v$c$androidx-compose-ui-unit-Dp$-spacing$0:F


# direct methods
.method public static synthetic $r8$lambda$7OSDIMTAuvADBLIdlxYn57PAoP0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;FLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1;->measure_3p2s80s$lambda$4(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;FLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1;->$$v$c$androidx-compose-ui-unit-Dp$-spacing$0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$4(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;FLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p4

    .line 175
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 177
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result p2

    add-int v2, p0, p2

    move-object v1, p1

    .line 176
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    .line 145
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v11

    .line 1394
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    move v8, v7

    :goto_0
    const-string v9, "Collection contains no element matching the predicate."

    if-ge v8, v6, :cond_8

    .line 1395
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1392
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 149
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "LeadingButton"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 150
    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    .line 1403
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v8, v7

    :goto_1
    if-ge v8, v5, :cond_6

    .line 1404
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1401
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 154
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "TrailingButton"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 158
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    iget v5, v0, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1;->$$v$c$androidx-compose-ui-unit-Dp$-spacing$0:F

    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    add-int/2addr v2, v5

    neg-int v13, v2

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 157
    invoke-static/range {v11 .. v16}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v17

    .line 161
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v21

    .line 162
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v22

    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 160
    invoke-static/range {v17 .. v24}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v8

    .line 155
    invoke-interface {v10, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    const/4 v5, 0x2

    .line 166
    new-array v5, v5, [Landroidx/compose/ui/layout/Placeable;

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v2, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1413
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move v10, v7

    move v11, v10

    :goto_2
    if-ge v10, v9, :cond_0

    .line 1414
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1411
    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .line 168
    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    iget v9, v0, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1;->$$v$c$androidx-compose-ui-unit-Dp$-spacing$0:F

    invoke-interface {v1, v9}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v9

    add-int/2addr v11, v9

    .line 1420
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x0

    goto :goto_4

    .line 1421
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .line 169
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1421
    check-cast v9, Ljava/lang/Comparable;

    .line 1422
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v10

    if-gt v8, v10, :cond_3

    .line 1423
    :goto_3
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .line 169
    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1423
    check-cast v12, Ljava/lang/Comparable;

    .line 1424
    invoke-interface {v12, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-lez v13, :cond_2

    move-object v9, v12

    :cond_2
    if-eq v8, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move-object v5, v9

    .line 169
    :goto_4
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 171
    :cond_4
    invoke-static {v3, v4, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v5

    .line 172
    invoke-static {v3, v4, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v3

    .line 174
    iget v4, v0, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1;->$$v$c$androidx-compose-ui-unit-Dp$-spacing$0:F

    move v7, v5

    new-instance v5, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v6, v2, v1, v4}, Landroidx/compose/material3/SplitButtonKt$SplitButtonLayout$2$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;F)V

    const/4 v6, 0x4

    move v2, v7

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 1408
    :cond_6
    invoke-static {v9}, Landroidx/compose/ui/util/ListUtilsKt;->throwNoSuchElementException(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 1399
    :cond_8
    invoke-static {v9}, Landroidx/compose/ui/util/ListUtilsKt;->throwNoSuchElementException(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method
