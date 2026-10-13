.class final Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;
.super Ljava/lang/Object;
.source "AutoSizingComposable.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/AutoSizingComposableKt;->AutoSizingComposable(Lexpo/modules/kotlin/views/ShadowNodeProxy;Ljava/util/EnumSet;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final synthetic $axis:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lexpo/modules/kotlin/views/Direction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shadowNodeProxy:Lexpo/modules/kotlin/views/ShadowNodeProxy;


# direct methods
.method public static synthetic $r8$lambda$XqDPFdecdiMrt8GgiIzt5rPojQY(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/EnumSet;Lexpo/modules/kotlin/views/ShadowNodeProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/kotlin/views/Direction;",
            ">;",
            "Lexpo/modules/kotlin/views/ShadowNodeProxy;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;->$axis:Ljava/util/EnumSet;

    iput-object p2, p0, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;->$shadowNodeProxy:Lexpo/modules/kotlin/views/ShadowNodeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 8

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v1, p1

    .line 33
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8
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

    .line 21
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 22
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-interface {p2, v0}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v0

    .line 23
    invoke-interface {p2, v0}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v1

    int-to-double v2, v0

    .line 24
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    div-double/2addr v2, v4

    int-to-double v0, v1

    .line 25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v0, v4

    .line 26
    iget-object v4, p0, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;->$axis:Ljava/util/EnumSet;

    sget-object v5, Lexpo/modules/kotlin/views/Direction;->HORIZONTAL:Lexpo/modules/kotlin/views/Direction;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v5

    .line 27
    :goto_0
    iget-object v4, p0, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;->$axis:Ljava/util/EnumSet;

    sget-object v7, Lexpo/modules/kotlin/views/Direction;->VERTICAL:Lexpo/modules/kotlin/views/Direction;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v5

    .line 28
    :goto_1
    iget-object v4, p0, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1;->$shadowNodeProxy:Lexpo/modules/kotlin/views/ShadowNodeProxy;

    invoke-virtual {v4, v2, v3, v0, v1}, Lexpo/modules/kotlin/views/ShadowNodeProxy;->setViewSize(DD)V

    .line 30
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result v2

    new-instance v4, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lexpo/modules/kotlin/views/AutoSizingComposableKt$AutoSizingComposable$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method
