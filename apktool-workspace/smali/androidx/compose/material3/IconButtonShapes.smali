.class public final Landroidx/compose/material3/IconButtonShapes;
.super Ljava/lang/Object;
.source "IconButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003J!\u0010\u000b\u001a\u00020\u0003*\u0004\u0018\u00010\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/material3/IconButtonShapes;",
        "",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "pressedShape",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V",
        "getShape",
        "()Landroidx/compose/ui/graphics/Shape;",
        "getPressedShape",
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
.field private final pressedShape:Landroidx/compose/ui/graphics/Shape;

.field private final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public static synthetic $r8$lambda$HXXmIgda6OTRFCuYHAORjRHR2fg(Landroidx/compose/material3/IconButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/IconButtonShapes;->copy$lambda$0(Landroidx/compose/material3/IconButtonShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$es76_FM08yLvg979AU1fIugYR54(Landroidx/compose/material3/IconButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/IconButtonShapes;->copy$lambda$1(Landroidx/compose/material3/IconButtonShapes;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    iput-object p1, p0, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .line 1489
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/IconButtonShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/IconButtonShapes;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/material3/IconButtonShapes;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 1492
    iget-object p1, p0, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/IconButtonShapes;->copy(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/material3/IconButtonShapes;

    move-result-object p0

    return-object p0
.end method

.method private static final copy$lambda$0(Landroidx/compose/material3/IconButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1494
    iget-object p0, p0, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method private static final copy$lambda$1(Landroidx/compose/material3/IconButtonShapes;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1495
    iget-object p0, p0, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/material3/IconButtonShapes;
    .locals 2

    .line 1493
    new-instance v0, Landroidx/compose/material3/IconButtonShapes;

    .line 1494
    new-instance v1, Landroidx/compose/material3/IconButtonShapes$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/material3/IconButtonShapes$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/IconButtonShapes;)V

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/IconButtonShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    .line 1495
    new-instance v1, Landroidx/compose/material3/IconButtonShapes$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/compose/material3/IconButtonShapes$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/IconButtonShapes;)V

    invoke-virtual {p0, p2, v1}, Landroidx/compose/material3/IconButtonShapes;->takeOrElse$material3(Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    .line 1493
    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/IconButtonShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1502
    instance-of v2, p1, Landroidx/compose/material3/IconButtonShapes;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1504
    :cond_1
    iget-object v2, p0, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    check-cast p1, Landroidx/compose/material3/IconButtonShapes;

    iget-object v3, p1, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1505
    :cond_2
    iget-object v2, p0, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    iget-object p1, p1, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getPressedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1489
    iget-object v0, p0, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 1489
    iget-object v0, p0, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1511
    iget-object v0, p0, Landroidx/compose/material3/IconButtonShapes;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1512
    iget-object v1, p0, Landroidx/compose/material3/IconButtonShapes;->pressedShape:Landroidx/compose/ui/graphics/Shape;

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

    .line 1498
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Shape;

    :cond_0
    return-object p1
.end method
