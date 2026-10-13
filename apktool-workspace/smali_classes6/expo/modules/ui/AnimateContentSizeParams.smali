.class public final Lexpo/modules/ui/AnimateContentSizeParams;
.super Ljava/lang/Object;
.source "ModifierRegistry.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/ui/AnimateContentSizeParams;",
        "Lexpo/modules/kotlin/records/Record;",
        "dampingRatio",
        "",
        "stiffness",
        "<init>",
        "(FF)V",
        "getDampingRatio$annotations",
        "()V",
        "getDampingRatio",
        "()F",
        "getStiffness$annotations",
        "getStiffness",
        "component1",
        "component2",
        "copy",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lexpo/modules/ui/AnimateContentSizeParams;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    .line 148
    iput p2, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x44bb8000    # 1500.0f

    .line 146
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/ui/AnimateContentSizeParams;-><init>(FF)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/AnimateContentSizeParams;FFILjava/lang/Object;)Lexpo/modules/ui/AnimateContentSizeParams;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/AnimateContentSizeParams;->copy(FF)Lexpo/modules/ui/AnimateContentSizeParams;

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


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    return v0
.end method

.method public final copy(FF)Lexpo/modules/ui/AnimateContentSizeParams;
    .locals 1

    new-instance v0, Lexpo/modules/ui/AnimateContentSizeParams;

    invoke-direct {v0, p1, p2}, Lexpo/modules/ui/AnimateContentSizeParams;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/AnimateContentSizeParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/AnimateContentSizeParams;

    iget v1, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    iget v3, p1, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    iget p1, p1, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDampingRatio()F
    .locals 1

    .line 147
    iget v0, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    return v0
.end method

.method public final getStiffness()F
    .locals 1

    .line 148
    iget v0, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lexpo/modules/ui/AnimateContentSizeParams;->dampingRatio:F

    iget v1, p0, Lexpo/modules/ui/AnimateContentSizeParams;->stiffness:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AnimateContentSizeParams(dampingRatio="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", stiffness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
