.class public final Landroidx/compose/material3/TopAppBarState;
.super Ljava/lang/Object;
.source "AppBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/TopAppBarState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/TopAppBarState\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,3816:1\n81#2:3817\n114#2,2:3818\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/TopAppBarState\n*L\n2071#1:3817\n2071#1:3818,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR+\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00038F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000cR \u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\nR\u0011\u0010 \u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\nR\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/material3/TopAppBarState;",
        "",
        "initialHeightOffsetLimit",
        "",
        "initialHeightOffset",
        "initialContentOffset",
        "<init>",
        "(FFF)V",
        "heightOffsetLimit",
        "getHeightOffsetLimit",
        "()F",
        "setHeightOffsetLimit",
        "(F)V",
        "newOffset",
        "heightOffset",
        "getHeightOffset",
        "setHeightOffset",
        "<set-?>",
        "contentOffset",
        "getContentOffset",
        "setContentOffset",
        "contentOffset$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "isAtTop",
        "Lkotlin/Function0;",
        "",
        "isAtTop$material3",
        "()Lkotlin/jvm/functions/Function0;",
        "setAtTop$material3",
        "(Lkotlin/jvm/functions/Function0;)V",
        "collapsedFraction",
        "getCollapsedFraction",
        "overlappedFraction",
        "getOverlappedFraction",
        "_heightOffset",
        "Landroidx/compose/runtime/MutableFloatState;",
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material3/TopAppBarState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/TopAppBarState;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private _heightOffset:Landroidx/compose/runtime/MutableFloatState;

.field private final contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private heightOffsetLimit:F

.field private isAtTop:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$25NhY2vOCYjd--Zasi5zQayiCI8(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/TopAppBarState;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/TopAppBarState;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/TopAppBarState;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$56fN2C7iDbXUlSG-J--_QsmxKts()Z
    .locals 1

    invoke-static {}, Landroidx/compose/material3/TopAppBarState;->isAtTop$lambda$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$enzoMo0gwzxenP7KTPxhSPj5R_I(Ljava/util/List;)Landroidx/compose/material3/TopAppBarState;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/TopAppBarState;->Saver$lambda$1(Ljava/util/List;)Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TopAppBarState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/TopAppBarState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/TopAppBarState;->Companion:Landroidx/compose/material3/TopAppBarState$Companion;

    .line 2117
    new-instance v0, Landroidx/compose/material3/TopAppBarState$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/compose/material3/TopAppBarState$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Landroidx/compose/material3/TopAppBarState$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroidx/compose/material3/TopAppBarState$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    iput p1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 2071
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2077
    new-instance p1, Landroidx/compose/material3/TopAppBarState$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/compose/material3/TopAppBarState$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->isAtTop:Lkotlin/jvm/functions/Function0;

    .line 2129
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/TopAppBarState;)Ljava/util/List;
    .locals 2

    const/4 p0, 0x3

    .line 2118
    new-array p0, p0, [Ljava/lang/Float;

    iget v0, p1, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->getContentOffset()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Ljava/util/List;)Landroidx/compose/material3/TopAppBarState;
    .locals 4

    .line 2120
    new-instance v0, Landroidx/compose/material3/TopAppBarState;

    const/4 v1, 0x0

    .line 2121
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    .line 2122
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    .line 2123
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 2120
    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/material3/TopAppBarState;-><init>(FFF)V

    return-object v0
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 2033
    sget-object v0, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method private static final isAtTop$lambda$0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getCollapsedFraction()F
    .locals 2

    .line 2087
    iget v0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    .line 2088
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v0

    iget v1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final getContentOffset()F
    .locals 1

    .line 2071
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 3817
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getHeightOffset()F
    .locals 1

    .line 2055
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getHeightOffsetLimit()F
    .locals 1

    .line 2046
    iget v0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    return v0
.end method

.method public final getOverlappedFraction()F
    .locals 4

    .line 2102
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->isAtTop:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getContentOffset()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2104
    :cond_0
    iget v0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    cmpg-float v2, v0, v1

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    .line 2106
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getContentOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    .line 2107
    iget v3, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 2106
    invoke-static {v0, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 2109
    iget v1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2
.end method

.method public final isAtTop$material3()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2077
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->isAtTop:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final setAtTop$material3(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2077
    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->isAtTop:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setContentOffset(F)V
    .locals 1

    .line 2071
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 3818
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setHeightOffset(F)V
    .locals 3

    .line 2057
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    .line 2058
    iget v1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 2057
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setHeightOffsetLimit(F)V
    .locals 0

    .line 2046
    iput p1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    return-void
.end method
