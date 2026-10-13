.class final Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;
.super Ljava/lang/Object;
.source "SearchBar.kt"

# interfaces
.implements Landroidx/compose/material3/SearchBarScrollBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,3686:1\n81#2:3687\n114#2,2:3688\n81#2:3690\n114#2,2:3691\n81#2:3693\n114#2,2:3694\n59#3:3696\n90#4:3697\n*S KotlinDebug\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior\n*L\n1399#1:3687\n1399#1:3688,2\n1400#1:3690\n1400#1:3691,2\n1401#1:3693\n1401#1:3694,2\n1437#1:3696\n1437#1:3697\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0003\u0018\u0000 =2\u00020\u0001:\u0001=BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000c\u00102\u001a\u000203*\u000203H\u0016J\u0018\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u0003H\u0082@\u00a2\u0006\u0004\u0008;\u0010<R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R+\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR+\u0010 \u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001f\u001a\u0004\u0008!\u0010\u001b\"\u0004\u0008\"\u0010\u001dR+\u0010$\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u001f\u001a\u0004\u0008%\u0010\u001b\"\u0004\u0008&\u0010\u001dR$\u0010)\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u00038W@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010\u001b\"\u0004\u0008+\u0010\u001dR$\u0010,\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010\u001b\"\u0004\u0008.\u0010\u001dR$\u0010/\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u00038W@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00080\u0010\u001b\"\u0004\u00081\u0010\u001dR\u0014\u00104\u001a\u000205X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;",
        "Landroidx/compose/material3/SearchBarScrollBehavior;",
        "initialOffset",
        "",
        "initialOffsetLimit",
        "initialContentOffset",
        "canScroll",
        "Lkotlin/Function0;",
        "",
        "reverseLayout",
        "snapAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "flingAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "<init>",
        "(FFFLkotlin/jvm/functions/Function0;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)V",
        "getCanScroll",
        "()Lkotlin/jvm/functions/Function0;",
        "getReverseLayout",
        "()Z",
        "getSnapAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "getFlingAnimationSpec",
        "()Landroidx/compose/animation/core/DecayAnimationSpec;",
        "<set-?>",
        "_scrollOffset",
        "get_scrollOffset",
        "()F",
        "set_scrollOffset",
        "(F)V",
        "_scrollOffset$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "_scrollOffsetLimit",
        "get_scrollOffsetLimit",
        "set_scrollOffsetLimit",
        "_scrollOffsetLimit$delegate",
        "_contentOffset",
        "get_contentOffset",
        "set_contentOffset",
        "_contentOffset$delegate",
        "newOffset",
        "scrollOffset",
        "getScrollOffset",
        "setScrollOffset",
        "scrollOffsetLimit",
        "getScrollOffsetLimit",
        "setScrollOffsetLimit",
        "contentOffset",
        "getContentOffset",
        "setContentOffset",
        "searchBarScrollBehavior",
        "Landroidx/compose/ui/Modifier;",
        "nestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "getNestedScrollConnection",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "settleSearchBar",
        "Landroidx/compose/ui/unit/Velocity;",
        "velocity",
        "settleSearchBar-OhffZ5M",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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
.field public static final Companion:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;


# instance fields
.field private final _contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final _scrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final _scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final canScroll:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private final reverseLayout:Z

.field private final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C198nxXnDOlKu2bMvwdSFnwxvek(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$1(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FCx6-e9IydRsjVQ8QzhNGbnt9pY(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$2(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MIURHfudt-MpSvt_bR3gELWN1rc(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->settleSearchBar_OhffZ5M$lambda$0(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dWA-j6k-uqVV6TrPZjL8HEvfrbc(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->settleSearchBar_OhffZ5M$lambda$1(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qdqXOFL9m9CBamiKhATRcQtvWQw(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$0(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tr7OjfZtsmdVt7i6sfbbdDrD1wg(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->searchBarScrollBehavior$lambda$1$0(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->Companion:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$Companion;

    return-void
.end method

.method public constructor <init>(FFFLkotlin/jvm/functions/Function0;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    iput-object p4, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    .line 1395
    iput-boolean p5, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->reverseLayout:Z

    .line 1396
    iput-object p6, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1397
    iput-object p7, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 1399
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_scrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1400
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1401
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1441
    new-instance p1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$nestedScrollConnection$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$nestedScrollConnection$1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p1, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public static final synthetic access$settleSearchBar-OhffZ5M(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1388
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->settleSearchBar-OhffZ5M(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final get_contentOffset()F
    .locals 1

    .line 1401
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 3693
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method private final get_scrollOffset()F
    .locals 1

    .line 1399
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_scrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 3687
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method private final get_scrollOffsetLimit()F
    .locals 1

    .line 1400
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 3690
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method private static final searchBarScrollBehavior$lambda$0(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;F)Lkotlin/Unit;
    .locals 1

    .line 1424
    invoke-virtual {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffset(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$1(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    .line 1430
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 1431
    invoke-virtual {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    .line 1432
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    add-int/2addr p3, p0

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 1433
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    new-instance v5, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$1$0(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 8

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v0, p2

    .line 1434
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 1435
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final searchBarScrollBehavior$lambda$2(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lkotlin/Unit;
    .locals 4

    .line 1437
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-float p1, p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffsetLimit(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final set_contentOffset(F)V
    .locals 1

    .line 1401
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 3694
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final set_scrollOffset(F)V
    .locals 1

    .line 1399
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_scrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 3688
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final set_scrollOffsetLimit(F)V
    .locals 1

    .line 1400
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->_scrollOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 3691
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final settleSearchBar-OhffZ5M(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;

    iget v3, v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v2

    iget-object v1, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1483
    iget v3, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v2, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v3, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->F$0:F

    iget-object v4, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1488
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v1

    cmpg-float v1, v1, v11

    if-nez v1, :cond_4

    move v1, v11

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v3

    div-float/2addr v1, v3

    :goto_1
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v3

    if-nez v5, :cond_5

    goto/16 :goto_6

    .line 1492
    :cond_5
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move/from16 v14, p1

    iput v14, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1495
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v5, v3

    if-lez v3, :cond_7

    .line 1496
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    .line 1497
    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v5

    .line 1498
    iget-object v6, v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    move-object v8, v6

    .line 1497
    new-instance v6, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v0, v12}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;)V

    iput-object v12, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    iput v1, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->F$0:F

    iput v4, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    move-object v3, v5

    const/4 v5, 0x0

    move-object v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay$default(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v1

    move-object v4, v12

    :goto_2
    move v1, v3

    move-object v12, v4

    .line 1510
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_a

    .line 1511
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v13

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    move v1, v11

    goto :goto_3

    .line 1512
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v1

    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    .line 1513
    iget-object v5, v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1511
    new-instance v1, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    iput-object v12, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->L$0:Ljava/lang/Object;

    iput v10, v7, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1;->label:I

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v8, v7

    move-object v7, v1

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_9

    :goto_4
    return-object v2

    :cond_9
    move-object v2, v12

    :goto_5
    move-object v12, v2

    .line 1519
    :cond_a
    iget v1, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v11, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v1

    return-object v1

    .line 1490
    :cond_b
    :goto_6
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v1

    return-object v1
.end method

.method private static final settleSearchBar_OhffZ5M$lambda$0(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;
    .locals 3

    .line 1500
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, v1

    .line 1501
    invoke-virtual {p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result v1

    add-float v2, v1, v0

    .line 1502
    invoke-virtual {p1, v2}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffset(F)V

    .line 1503
    invoke-virtual {p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffset()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1504
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1505
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->getVelocity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, p1

    .line 1507
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 1508
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final settleSearchBar_OhffZ5M$lambda$1(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/animation/core/AnimationScope;)Lkotlin/Unit;
    .locals 0

    .line 1515
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->setScrollOffset(F)V

    .line 1516
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getCanScroll()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getContentOffset()F
    .locals 1

    .line 1416
    invoke-direct {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->get_contentOffset()F

    move-result v0

    return v0
.end method

.method public final getFlingAnimationSpec()Landroidx/compose/animation/core/DecayAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpec;

    return-object v0
.end method

.method public getNestedScrollConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 1440
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->nestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public final getReverseLayout()Z
    .locals 1

    .line 1395
    iget-boolean v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->reverseLayout:Z

    return v0
.end method

.method public getScrollOffset()F
    .locals 1

    .line 1404
    invoke-direct {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->get_scrollOffset()F

    move-result v0

    return v0
.end method

.method public getScrollOffsetLimit()F
    .locals 1

    .line 1410
    invoke-direct {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->get_scrollOffsetLimit()F

    move-result v0

    return v0
.end method

.method public final getSnapAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public searchBarScrollBehavior(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 11

    .line 1423
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 1424
    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    invoke-static {v0}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v1

    .line 1426
    iget-object v0, p0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1422
    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function3;

    const/16 v9, 0xb8

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 1428
    invoke-static {p1}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 1429
    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 1437
    new-instance v0, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public setContentOffset(F)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->set_contentOffset(F)V

    return-void
.end method

.method public setScrollOffset(F)V
    .locals 2

    .line 1406
    invoke-virtual {p0}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->getScrollOffsetLimit()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->set_scrollOffset(F)V

    return-void
.end method

.method public setScrollOffsetLimit(F)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->set_scrollOffsetLimit(F)V

    return-void
.end method
