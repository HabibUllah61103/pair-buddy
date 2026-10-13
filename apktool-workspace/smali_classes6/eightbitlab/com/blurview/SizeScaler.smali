.class public Leightbitlab/com/blurview/SizeScaler;
.super Ljava/lang/Object;
.source "SizeScaler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leightbitlab/com/blurview/SizeScaler$Size;
    }
.end annotation


# static fields
.field private static final ROUNDING_VALUE:I = 0x40


# instance fields
.field private final noStrideAlignment:Z

.field private final scaleFactor:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Leightbitlab/com/blurview/SizeScaler;-><init>(FZ)V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Leightbitlab/com/blurview/SizeScaler;->scaleFactor:F

    .line 24
    iput-boolean p2, p0, Leightbitlab/com/blurview/SizeScaler;->noStrideAlignment:Z

    return-void
.end method

.method private downscaleSize(F)I
    .locals 2

    .line 60
    iget v0, p0, Leightbitlab/com/blurview/SizeScaler;->scaleFactor:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private roundSize(I)I
    .locals 1

    .line 50
    iget-boolean v0, p0, Leightbitlab/com/blurview/SizeScaler;->noStrideAlignment:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    :goto_0
    return p1

    :cond_1
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    return p1
.end method


# virtual methods
.method isZeroSized(II)Z
    .locals 0

    int-to-float p2, p2

    .line 43
    invoke-direct {p0, p2}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method scale(II)Leightbitlab/com/blurview/SizeScaler$Size;
    .locals 2

    int-to-float p1, p1

    .line 28
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/SizeScaler;->downscaleSize(F)I

    move-result v0

    .line 29
    invoke-direct {p0, v0}, Leightbitlab/com/blurview/SizeScaler;->roundSize(I)I

    move-result v0

    int-to-float v1, v0

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 35
    new-instance p2, Leightbitlab/com/blurview/SizeScaler$Size;

    invoke-direct {p2, v0, p1}, Leightbitlab/com/blurview/SizeScaler$Size;-><init>(II)V

    return-object p2
.end method

.method scale(Leightbitlab/com/blurview/SizeScaler$Size;)Leightbitlab/com/blurview/SizeScaler$Size;
    .locals 1

    .line 39
    iget v0, p1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget p1, p1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    invoke-virtual {p0, v0, p1}, Leightbitlab/com/blurview/SizeScaler;->scale(II)Leightbitlab/com/blurview/SizeScaler$Size;

    move-result-object p1

    return-object p1
.end method
