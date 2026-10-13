.class public final Landroidx/compose/material3/ButtonGroupParentData;
.super Ljava/lang/Object;
.source "ButtonGroup.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J5\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/material3/ButtonGroupParentData;",
        "",
        "weight",
        "",
        "pressedAnimatable",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "alignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "<init>",
        "(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)V",
        "getWeight",
        "()F",
        "setWeight",
        "(F)V",
        "getPressedAnimatable",
        "()Landroidx/compose/animation/core/Animatable;",
        "setPressedAnimatable",
        "(Landroidx/compose/animation/core/Animatable;)V",
        "getAlignment",
        "()Landroidx/compose/ui/Alignment$Vertical;",
        "setAlignment",
        "(Landroidx/compose/ui/Alignment$Vertical;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final $stable:I = 0x8


# instance fields
.field private alignment:Landroidx/compose/ui/Alignment$Vertical;

.field private pressedAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            ")V"
        }
    .end annotation

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput p1, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    .line 1022
    iput-object p2, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 1023
    iput-object p3, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method

.method public synthetic constructor <init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    const/4 p2, 0x2

    .line 1022
    invoke-static {v0, v0, p2, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    .line 1020
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/ButtonGroupParentData;FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;ILjava/lang/Object;)Landroidx/compose/material3/ButtonGroupParentData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ButtonGroupParentData;->copy(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/material3/ButtonGroupParentData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    return v0
.end method

.method public final component2()Landroidx/compose/animation/core/Animatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object v0
.end method

.method public final component3()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public final copy(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/material3/ButtonGroupParentData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            ")",
            "Landroidx/compose/material3/ButtonGroupParentData;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/ButtonGroupParentData;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/material3/ButtonGroupParentData;-><init>(FLandroidx/compose/animation/core/Animatable;Landroidx/compose/ui/Alignment$Vertical;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/ButtonGroupParentData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/ButtonGroupParentData;

    iget v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    iget v3, p1, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    iget-object v3, p1, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object p1, p1, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1

    .line 1023
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public final getPressedAnimatable()Landroidx/compose/animation/core/Animatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object v0
.end method

.method public final getWeight()F
    .locals 1

    .line 1021
    iget v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAlignment(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method

.method public final setPressedAnimatable(Landroidx/compose/animation/core/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;)V"
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    return-void
.end method

.method public final setWeight(F)V
    .locals 0

    .line 1021
    iput p1, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ButtonGroupParentData(weight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pressedAnimatable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->pressedAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/ButtonGroupParentData;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
