.class public final Lexpo/modules/video/records/PiPParams;
.super Ljava/lang/Object;
.source "PiPParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003JG\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/video/records/PiPParams;",
        "",
        "autoEnter",
        "",
        "canEnter",
        "willEnter",
        "blocksAppFromEntering",
        "aspectRatio",
        "Landroid/util/Rational;",
        "rectHint",
        "Landroid/graphics/Rect;",
        "<init>",
        "(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)V",
        "getAutoEnter",
        "()Z",
        "getCanEnter",
        "getWillEnter",
        "getBlocksAppFromEntering",
        "getAspectRatio",
        "()Landroid/util/Rational;",
        "getRectHint",
        "()Landroid/graphics/Rect;",
        "equals",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "toString",
        "",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final aspectRatio:Landroid/util/Rational;

.field private final autoEnter:Z

.field private final blocksAppFromEntering:Z

.field private final canEnter:Z

.field private final rectHint:Landroid/graphics/Rect;

.field private final willEnter:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lexpo/modules/video/records/PiPParams;-><init>(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rectHint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    .line 8
    iput-boolean p2, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    .line 9
    iput-boolean p3, p0, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    .line 10
    iput-boolean p4, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    .line 11
    iput-object p5, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    .line 12
    iput-object p6, p0, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 11
    new-instance p5, Landroid/util/Rational;

    const/16 p8, 0x9

    const/16 v1, 0x10

    invoke-direct {p5, v1, p8}, Landroid/util/Rational;-><init>(II)V

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 12
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 6
    invoke-direct/range {p1 .. p7}, Lexpo/modules/video/records/PiPParams;-><init>(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/records/PiPParams;ZZZZLandroid/util/Rational;Landroid/graphics/Rect;ILjava/lang/Object;)Lexpo/modules/video/records/PiPParams;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-boolean p3, p0, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lexpo/modules/video/records/PiPParams;->copy(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)Lexpo/modules/video/records/PiPParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    return v0
.end method

.method public final component5()Landroid/util/Rational;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public final component6()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final copy(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)Lexpo/modules/video/records/PiPParams;
    .locals 8

    const-string v0, "rectHint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lexpo/modules/video/records/PiPParams;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lexpo/modules/video/records/PiPParams;-><init>(ZZZZLandroid/util/Rational;Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lexpo/modules/video/records/PiPParams;

    if-nez v1, :cond_1

    return v0

    .line 22
    :cond_1
    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    check-cast p1, Lexpo/modules/video/records/PiPParams;

    iget-boolean v2, p1, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    if-ne v1, v2, :cond_2

    .line 23
    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    iget-boolean v2, p1, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    if-ne v1, v2, :cond_2

    .line 24
    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    iget-boolean v2, p1, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    if-ne v1, v2, :cond_2

    .line 25
    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    iget-boolean v2, p1, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    if-ne v1, v2, :cond_2

    .line 26
    iget-object v1, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    iget-object v2, p1, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    iget-object v1, p0, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    iget-object p1, p1, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final getAspectRatio()Landroid/util/Rational;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public final getAutoEnter()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    return v0
.end method

.method public final getBlocksAppFromEntering()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    return v0
.end method

.method public final getCanEnter()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    return v0
.end method

.method public final getRectHint()Landroid/graphics/Rect;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getWillEnter()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object v1, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lexpo/modules/video/records/PiPParams;->autoEnter:Z

    iget-boolean v1, p0, Lexpo/modules/video/records/PiPParams;->canEnter:Z

    iget-boolean v2, p0, Lexpo/modules/video/records/PiPParams;->willEnter:Z

    iget-boolean v3, p0, Lexpo/modules/video/records/PiPParams;->blocksAppFromEntering:Z

    iget-object v4, p0, Lexpo/modules/video/records/PiPParams;->aspectRatio:Landroid/util/Rational;

    iget-object v5, p0, Lexpo/modules/video/records/PiPParams;->rectHint:Landroid/graphics/Rect;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PiPParams(autoEnter="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", canEnter="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", willEnter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blocksAppFromEntering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rectHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
