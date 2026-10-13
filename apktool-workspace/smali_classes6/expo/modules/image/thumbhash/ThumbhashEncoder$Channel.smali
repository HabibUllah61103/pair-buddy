.class final Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;
.super Ljava/lang/Object;
.source "ThumbhashEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/thumbhash/ThumbhashEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Channel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\r\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0014J\u001e\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;",
        "",
        "nx",
        "",
        "ny",
        "<init>",
        "(II)V",
        "getNx",
        "()I",
        "setNx",
        "(I)V",
        "getNy",
        "setNy",
        "dc",
        "",
        "getDc",
        "()F",
        "setDc",
        "(F)V",
        "ac",
        "",
        "getAc",
        "()[F",
        "setAc",
        "([F)V",
        "scale",
        "getScale",
        "setScale",
        "encode",
        "w",
        "h",
        "channel",
        "writeTo",
        "hash",
        "",
        "start",
        "index",
        "expo-image_release"
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
.field private ac:[F

.field private dc:F

.field private nx:I

.field private ny:I

.field private scale:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->nx:I

    iput p2, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ny:I

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    if-lez v0, :cond_0

    move v2, p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 141
    :goto_1
    iget v3, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ny:I

    mul-int v4, v2, v3

    iget v5, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->nx:I

    sub-int/2addr v3, v0

    mul-int/2addr v5, v3

    if-ge v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    new-array p1, v1, [F

    iput-object p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    return-void
.end method


# virtual methods
.method public final encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "channel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-array v4, v1, [F

    .line 152
    iget v5, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ny:I

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_6

    move v11, v6

    .line 154
    :goto_1
    iget v12, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ny:I

    mul-int v13, v11, v12

    iget v14, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->nx:I

    sub-int/2addr v12, v7

    mul-int/2addr v14, v12

    if-ge v13, v14, :cond_5

    move v12, v6

    :goto_2
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    if-ge v12, v1, :cond_0

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-double v9, v1

    div-double/2addr v13, v9

    int-to-double v9, v11

    mul-double/2addr v13, v9

    int-to-float v9, v12

    add-float v9, v9, v16

    float-to-double v9, v9

    mul-double/2addr v13, v9

    .line 156
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    move v9, v6

    move v10, v15

    :goto_3
    if-ge v9, v2, :cond_2

    move-wide/from16 v17, v13

    int-to-double v13, v2

    div-double v13, v17, v13

    int-to-double v2, v7

    mul-double/2addr v13, v2

    int-to-float v2, v9

    add-float v2, v2, v16

    float-to-double v2, v2

    mul-double/2addr v13, v2

    .line 158
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v3, v6

    :goto_4
    if-ge v3, v1, :cond_1

    mul-int v12, v9, v1

    add-int/2addr v12, v3

    .line 159
    aget v12, p3, v12

    aget v13, v4, v3

    mul-float/2addr v12, v13

    mul-float/2addr v12, v2

    add-float/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v13, v17

    goto :goto_3

    :cond_2
    mul-int v2, v1, p2

    int-to-float v2, v2

    div-float/2addr v10, v2

    if-gtz v11, :cond_4

    if-lez v7, :cond_3

    goto :goto_5

    .line 166
    :cond_3
    iput v10, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->dc:F

    goto :goto_6

    .line 163
    :cond_4
    :goto_5
    iget-object v2, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    add-int/lit8 v3, v8, 0x1

    aput v10, v2, v8

    .line 164
    iget v2, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->scale:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->scale:F

    move v8, v3

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    .line 171
    iget v1, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->scale:F

    cmpl-float v1, v1, v15

    if-lez v1, :cond_7

    iget-object v1, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    array-length v1, v1

    :goto_7
    if-ge v6, v1, :cond_7

    iget-object v2, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    iget v3, v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->scale:F

    div-float v10, v16, v3

    aget v3, v2, v6

    mul-float/2addr v10, v3

    add-float v10, v10, v16

    aput v10, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    return-object v0
.end method

.method public final getAc()[F
    .locals 1

    .line 134
    iget-object v0, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    return-object v0
.end method

.method public final getDc()F
    .locals 1

    .line 133
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->dc:F

    return v0
.end method

.method public final getNx()I
    .locals 1

    .line 132
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->nx:I

    return v0
.end method

.method public final getNy()I
    .locals 1

    .line 132
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ny:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 135
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->scale:F

    return v0
.end method

.method public final setAc([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    return-void
.end method

.method public final setDc(F)V
    .locals 0

    .line 133
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->dc:F

    return-void
.end method

.method public final setNx(I)V
    .locals 0

    .line 132
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->nx:I

    return-void
.end method

.method public final setNy(I)V
    .locals 0

    .line 132
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ny:I

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    .line 135
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->scale:F

    return-void
.end method

.method public final writeTo([BII)I
    .locals 7

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->ac:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    shr-int/lit8 v4, p3, 0x1

    add-int/2addr v4, p2

    .line 178
    aget-byte v5, p1, v4

    const/high16 v6, 0x41700000    # 15.0f

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit8 v6, p3, 0x1

    shl-int/lit8 v6, v6, 0x2

    shl-int/2addr v3, v6

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method
