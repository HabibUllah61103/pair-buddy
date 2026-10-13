.class public final Landroidx/compose/material3/IconToggleButtonShapes;
.super Ljava/lang/Object;
.source "IconButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J*\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003J!\u0010\r\u001a\u00020\u0003*\u0004\u0018\u00010\u00032\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/IconToggleButtonShapes;",
        "",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "pressedShape",
        "checkedShape",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V",
        "getShape",
        "()Landroidx/compose/ui/graphics/Shape;",
        "getPressedShape",
        "getCheckedShape",
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
.field private final checkedShape:Landroidx/compose/ui/graphics/Shape;

.field private final pressedShape:Landroidx/compose/ui/graphics/Shape;

.field private final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public static synthetic $r8$lambda$3Yc6ZxTWjdH-N1r-Zq94sJ8MnQs(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/IconToggleButtonShapes;->copy$lambda$2(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D_VYpPtk2vGxU0sVBCbIqAHfhfY(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/IconToggleButtonShapes;->copy$lambda$0(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uhGteHBGX-NTzKD-ZGVR5nM4aBQ(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/IconToggleButtonShapes;->copy$lambda$1(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1529
    iput-object p1, p0, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1530
    iput-object p2, p0, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    .line 1531
    iput-object p3, p0, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, p1

    .line 1528
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/IconToggleButtonShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/IconToggleButtonShapes;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/material3/IconToggleButtonShapes;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1536
    iget-object p1, p0, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 1537
    iget-object p2, p0, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 1538
    iget-object p3, p0, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

    .line 1535
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/IconToggleButtonShapes;->copy(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/material3/IconToggleButtonShapes;

    move-result-object p0

    return-object p0
.end method

.method private static final copy$lambda$0(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1541
    iget-object p0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$1(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1542
    iget-object p0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$2(Landroidx/compose/material3/IconToggleButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1543
    iget-object p0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/material3/IconToggleButtonShapes;
    .locals 2

    .line 1540
    new-instance v0, Landroidx/compose/material3/IconToggleButtonShapes;

    .line 1541
    new-instance v1, Landroidx/compose/material3/IconToggleButtonShapes$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/material3/IconToggleButtonShapes$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/IconToggleButtonShapes;)V

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/IconToggleButtonShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    .line 1542
    new-instance v1, Landroidx/compose/material3/IconToggleButtonShapes$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/compose/material3/IconToggleButtonShapes$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/IconToggleButtonShapes;)V

    invoke-virtual {p0, p2, v1}, Landroidx/compose/material3/IconToggleButtonShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    .line 1543
    new-instance v1, Landroidx/compose/material3/IconToggleButtonShapes$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/compose/material3/IconToggleButtonShapes$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/IconToggleButtonShapes;)V

    invoke-virtual {p0, p3, v1}, Landroidx/compose/material3/IconToggleButtonShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p3

    .line 1540
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/material3/IconToggleButtonShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1550
    instance-of v2, p1, Landroidx/compose/material3/IconToggleButtonShapes;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1552
    :cond_1
    iget-object v2, p0, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    check-cast p1, Landroidx/compose/material3/IconToggleButtonShapes;

    iget-object v3, p1, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1553
    :cond_2
    iget-object v2, p0, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 1554
    :cond_3
    iget-object v2, p0, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object p1, p1, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getCheckedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1531
    iget-object v0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getPressedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1530
    iget-object v0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1529
    iget-object v0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1560
    iget-object v0, p0, Landroidx/compose/material3/IconToggleButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1561
    iget-object v1, p0, Landroidx/compose/material3/IconToggleButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1562
    iget-object v1, p0, Landroidx/compose/material3/IconToggleButtonShapes;->checkedShape:Landroidx/compose/ui/graphics/Shape;

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

    .line 1546
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Shape;

    :cond_0
    return-object p1
.end method
