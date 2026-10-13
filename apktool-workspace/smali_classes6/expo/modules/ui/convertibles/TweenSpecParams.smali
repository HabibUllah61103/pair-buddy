.class public final Lexpo/modules/ui/convertibles/TweenSpecParams;
.super Ljava/lang/Object;
.source "AnimationSpecParams.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/TweenSpecParams;",
        "Lexpo/modules/kotlin/records/Record;",
        "durationMillis",
        "",
        "delayMillis",
        "easing",
        "Lexpo/modules/ui/convertibles/EasingType;",
        "<init>",
        "(IILexpo/modules/ui/convertibles/EasingType;)V",
        "getDurationMillis$annotations",
        "()V",
        "getDurationMillis",
        "()I",
        "getDelayMillis$annotations",
        "getDelayMillis",
        "getEasing$annotations",
        "getEasing",
        "()Lexpo/modules/ui/convertibles/EasingType;",
        "toAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final delayMillis:I

.field private final durationMillis:I

.field private final easing:Lexpo/modules/ui/convertibles/EasingType;


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

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ui/convertibles/TweenSpecParams;-><init>(IILexpo/modules/ui/convertibles/EasingType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILexpo/modules/ui/convertibles/EasingType;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    .line 49
    iput p2, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    .line 50
    iput-object p3, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    return-void
.end method

.method public synthetic constructor <init>(IILexpo/modules/ui/convertibles/EasingType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x12c

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 47
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/ui/convertibles/TweenSpecParams;-><init>(IILexpo/modules/ui/convertibles/EasingType;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/convertibles/TweenSpecParams;IILexpo/modules/ui/convertibles/EasingType;ILjava/lang/Object;)Lexpo/modules/ui/convertibles/TweenSpecParams;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/ui/convertibles/TweenSpecParams;->copy(IILexpo/modules/ui/convertibles/EasingType;)Lexpo/modules/ui/convertibles/TweenSpecParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDelayMillis$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDurationMillis$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getEasing$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    return v0
.end method

.method public final component3()Lexpo/modules/ui/convertibles/EasingType;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    return-object v0
.end method

.method public final copy(IILexpo/modules/ui/convertibles/EasingType;)Lexpo/modules/ui/convertibles/TweenSpecParams;
    .locals 1

    new-instance v0, Lexpo/modules/ui/convertibles/TweenSpecParams;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/ui/convertibles/TweenSpecParams;-><init>(IILexpo/modules/ui/convertibles/EasingType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/convertibles/TweenSpecParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/convertibles/TweenSpecParams;

    iget v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    iget v3, p1, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    iget v3, p1, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    iget-object p1, p1, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDelayMillis()I
    .locals 1

    .line 49
    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    return v0
.end method

.method public final getDurationMillis()I
    .locals 1

    .line 48
    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    return v0
.end method

.method public final getEasing()Lexpo/modules/ui/convertibles/EasingType;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/ui/convertibles/EasingType;->hashCode()I

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

    .line 53
    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    .line 54
    iget v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    .line 55
    iget-object v2, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lexpo/modules/ui/convertibles/EasingType;->toEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v2

    .line 52
    :cond_1
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->durationMillis:I

    iget v1, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->delayMillis:I

    iget-object v2, p0, Lexpo/modules/ui/convertibles/TweenSpecParams;->easing:Lexpo/modules/ui/convertibles/EasingType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TweenSpecParams(durationMillis="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", delayMillis="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", easing="

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
