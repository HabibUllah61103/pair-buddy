.class final Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;
.super Ljava/lang/Object;
.source "HostView.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ui/HostView;->MaybeMatchContentsLayout(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHostView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HostView.kt\nexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n1563#2:260\n1634#2,3:261\n1869#2,2:265\n1#3:264\n*S KotlinDebug\n*F\n+ 1 HostView.kt\nexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1\n*L\n161#1:260\n161#1:261,3\n179#1:265,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $safeHeightPx:I

.field final synthetic $safeWidthPx:I

.field final synthetic this$0:Lexpo/modules/ui/HostView;


# direct methods
.method public static synthetic $r8$lambda$OBaurDQYbBYD7VNYtIG0wHeUTsc(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->measure_3p2s80s$lambda$5(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lexpo/modules/ui/HostView;IILandroidx/compose/ui/unit/Density;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->this$0:Lexpo/modules/ui/HostView;

    iput p2, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$safeWidthPx:I

    iput p3, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$safeHeightPx:I

    iput-object p4, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$density:Landroidx/compose/ui/unit/Density;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$5(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 8

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    check-cast p0, Ljava/lang/Iterable;

    .line 265
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 180
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 12
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

    const-string v0, "$this$Layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->this$0:Lexpo/modules/ui/HostView;

    invoke-virtual {v0}, Lexpo/modules/ui/HostView;->getProps()Lexpo/modules/ui/HostProps;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/ui/HostProps;->getUseViewportSizeMeasurement()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 150
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    iget v2, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$safeWidthPx:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 151
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$safeWidthPx:I

    goto :goto_0

    .line 152
    :cond_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 154
    :goto_0
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 156
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    if-ne v5, v3, :cond_2

    iget v3, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$safeHeightPx:I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 157
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$safeHeightPx:I

    goto :goto_1

    .line 158
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    .line 147
    :goto_1
    invoke-static {v1, v2, v4, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v1

    .line 161
    check-cast p2, Ljava/lang/Iterable;

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 261
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 262
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 161
    invoke-interface {v4, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 262
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 263
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 163
    move-object p2, v3

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_5

    move-object v2, v4

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_6

    move-object v2, v5

    goto :goto_3

    :cond_7
    :goto_4
    check-cast v2, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_5

    :cond_8
    move v6, v1

    .line 164
    :goto_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    :goto_6
    move-object v4, v2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v4, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_a

    goto :goto_6

    :cond_b
    :goto_7
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_c
    move v7, v1

    if-eqz v0, :cond_10

    .line 166
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p2

    if-eqz p2, :cond_d

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p2

    if-nez p2, :cond_10

    .line 167
    :cond_d
    iget-object p2, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v0, p0, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1;->this$0:Lexpo/modules/ui/HostView;

    .line 168
    invoke-interface {p2, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    float-to-double v1, v1

    .line 169
    invoke-interface {p2, v7}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p2

    float-to-double v4, p2

    .line 171
    invoke-virtual {v0}, Lexpo/modules/ui/HostView;->getShadowNodeProxy()Lexpo/modules/kotlin/views/ShadowNodeProxy;

    move-result-object p2

    .line 172
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    move-wide v1, v8

    .line 173
    :goto_8
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    move-wide v4, v8

    .line 171
    :goto_9
    invoke-virtual {p2, v1, v2, v4, v5}, Lexpo/modules/kotlin/views/ShadowNodeProxy;->setViewSize(DD)V

    .line 178
    :cond_10
    new-instance v9, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3}, Lexpo/modules/ui/HostView$MaybeMatchContentsLayout$2$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method
