.class public final Landroidx/compose/material3/ListItemShapes;
.super Ljava/lang/Object;
.source "ListItemDefaults.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJN\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003J!\u0010\u0013\u001a\u00020\u0003*\u0004\u0018\u00010\u00032\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/material3/ListItemShapes;",
        "",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "selectedShape",
        "pressedShape",
        "focusedShape",
        "hoveredShape",
        "draggedShape",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V",
        "getShape",
        "()Landroidx/compose/ui/graphics/Shape;",
        "getSelectedShape",
        "getPressedShape",
        "getFocusedShape",
        "getHoveredShape",
        "getDraggedShape",
        "copy",
        "takeOrElse",
        "block",
        "Lkotlin/Function0;",
        "takeOrElse$material3",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final draggedShape:Landroidx/compose/ui/graphics/Shape;

.field private final focusedShape:Landroidx/compose/ui/graphics/Shape;

.field private final hoveredShape:Landroidx/compose/ui/graphics/Shape;

.field private final pressedShape:Landroidx/compose/ui/graphics/Shape;

.field private final selectedShape:Landroidx/compose/ui/graphics/Shape;

.field private final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public static synthetic $r8$lambda$9jzjPdZ00k1vbFPfKqn_r3RnTLg(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ListItemShapes;->copy$lambda$5(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EHvbtJ8FsDM_eunbYGire7Sbszg(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ListItemShapes;->copy$lambda$1(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IYijjYFRAZzooo59OwRX8kRlguE(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ListItemShapes;->copy$lambda$4(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kPlxn_J-sp0777BFQQZi9PUO5uI(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ListItemShapes;->copy$lambda$3(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t2uXhgporT7b-Cp7rW8o_dIP5VU(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ListItemShapes;->copy$lambda$0(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xcs7Ucz_YVKPoDNxcTDAd-X6gUk(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/ListItemShapes;->copy$lambda$2(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p1, p0, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 980
    iput-object p2, p0, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    .line 981
    iput-object p3, p0, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    .line 982
    iput-object p4, p0, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    .line 983
    iput-object p5, p0, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    .line 984
    iput-object p6, p0, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/ListItemShapes;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/material3/ListItemShapes;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 988
    iget-object p1, p0, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 989
    iget-object p2, p0, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 990
    iget-object p3, p0, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 991
    iget-object p4, p0, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 992
    iget-object p5, p0, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 993
    iget-object p6, p0, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 987
    invoke-virtual/range {p2 .. p8}, Landroidx/compose/material3/ListItemShapes;->copy(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/material3/ListItemShapes;

    move-result-object p0

    return-object p0
.end method

.method private static final copy$lambda$0(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 996
    iget-object p0, p0, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$1(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 997
    iget-object p0, p0, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$2(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 998
    iget-object p0, p0, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$3(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 999
    iget-object p0, p0, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$4(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1000
    iget-object p0, p0, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$5(Landroidx/compose/material3/ListItemShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1001
    iget-object p0, p0, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/material3/ListItemShapes;
    .locals 7

    .line 995
    new-instance v0, Landroidx/compose/material3/ListItemShapes;

    .line 996
    new-instance v1, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/ListItemShapes;)V

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/ListItemShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    .line 997
    new-instance p1, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/ListItemShapes;)V

    invoke-virtual {p0, p2, p1}, Landroidx/compose/material3/ListItemShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    .line 998
    new-instance p1, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/ListItemShapes;)V

    invoke-virtual {p0, p3, p1}, Landroidx/compose/material3/ListItemShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    .line 999
    new-instance p1, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/material3/ListItemShapes;)V

    invoke-virtual {p0, p4, p1}, Landroidx/compose/material3/ListItemShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    .line 1000
    new-instance p1, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/ListItemShapes;)V

    invoke-virtual {p0, p5, p1}, Landroidx/compose/material3/ListItemShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    .line 1001
    new-instance p1, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ListItemShapes$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/material3/ListItemShapes;)V

    invoke-virtual {p0, p6, p1}, Landroidx/compose/material3/ListItemShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    .line 995
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ListItemShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1008
    instance-of v2, p1, Landroidx/compose/material3/ListItemShapes;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v2, p0, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    check-cast p1, Landroidx/compose/material3/ListItemShapes;

    iget-object v3, p1, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1011
    :cond_2
    iget-object v2, p0, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 1012
    :cond_3
    iget-object v2, p0, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 1013
    :cond_4
    iget-object v2, p0, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 1014
    :cond_5
    iget-object v2, p0, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1015
    :cond_6
    iget-object v2, p0, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object p1, p1, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public final getDraggedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 984
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getFocusedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 982
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getHoveredShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 983
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getPressedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 981
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getSelectedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 980
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 979
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1021
    iget-object v0, p0, Landroidx/compose/material3/ListItemShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1022
    iget-object v1, p0, Landroidx/compose/material3/ListItemShapes;->selectedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1023
    iget-object v1, p0, Landroidx/compose/material3/ListItemShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1024
    iget-object v1, p0, Landroidx/compose/material3/ListItemShapes;->focusedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1025
    iget-object v1, p0, Landroidx/compose/material3/ListItemShapes;->hoveredShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1026
    iget-object v1, p0, Landroidx/compose/material3/ListItemShapes;->draggedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Shape;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/graphics/Shape;",
            ">;)",
            "Landroidx/compose/ui/graphics/Shape;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1004
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Shape;

    :cond_0
    return-object p1
.end method
