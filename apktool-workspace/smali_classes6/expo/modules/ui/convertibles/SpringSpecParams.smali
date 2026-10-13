.class public final Lexpo/modules/ui/convertibles/SpringSpecParams;
.super Ljava/lang/Object;
.source "AnimationSpecParams.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0013J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J.\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000bR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/SpringSpecParams;",
        "Lexpo/modules/kotlin/records/Record;",
        "dampingRatio",
        "",
        "stiffness",
        "visibilityThreshold",
        "<init>",
        "(FFLjava/lang/Float;)V",
        "getDampingRatio$annotations",
        "()V",
        "getDampingRatio",
        "()F",
        "getStiffness$annotations",
        "getStiffness",
        "getVisibilityThreshold$annotations",
        "getVisibilityThreshold",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "toAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(FFLjava/lang/Float;)Lexpo/modules/ui/convertibles/SpringSpecParams;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final dampingRatio:F

.field private final stiffness:F

.field private final visibilityThreshold:Ljava/lang/Float;


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

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/convertibles/SpringSpecParams;-><init>(FFLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFLjava/lang/Float;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    .line 37
    iput p2, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    .line 38
    iput-object p3, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const p2, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 35
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/ui/convertibles/SpringSpecParams;-><init>(FFLjava/lang/Float;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/convertibles/SpringSpecParams;FFLjava/lang/Float;ILjava/lang/Object;)Lexpo/modules/ui/convertibles/SpringSpecParams;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/convertibles/SpringSpecParams;->copy(FFLjava/lang/Float;)Lexpo/modules/ui/convertibles/SpringSpecParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDampingRatio$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStiffness$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getVisibilityThreshold$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    return v0
.end method

.method public final component3()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(FFLjava/lang/Float;)Lexpo/modules/ui/convertibles/SpringSpecParams;
    .locals 1

    new-instance v0, Lexpo/modules/ui/convertibles/SpringSpecParams;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/ui/convertibles/SpringSpecParams;-><init>(FFLjava/lang/Float;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/convertibles/SpringSpecParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/convertibles/SpringSpecParams;

    iget v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    iget v3, p1, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    iget v3, p1, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    iget-object p1, p1, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDampingRatio()F
    .locals 1

    .line 36
    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    return v0
.end method

.method public final getStiffness()F
    .locals 1

    .line 37
    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    return v0
.end method

.method public final getVisibilityThreshold()Ljava/lang/Float;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

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

.method public final toAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 41
    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    .line 42
    iget v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    .line 43
    iget-object v2, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    .line 40
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->dampingRatio:F

    iget v1, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->stiffness:F

    iget-object v2, p0, Lexpo/modules/ui/convertibles/SpringSpecParams;->visibilityThreshold:Ljava/lang/Float;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SpringSpecParams(dampingRatio="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", stiffness="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visibilityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
