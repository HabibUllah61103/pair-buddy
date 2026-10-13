.class public final Lexpo/modules/image/thumbhash/ThumbhashEncoder;
.super Ljava/lang/Object;
.source "ThumbhashEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashEncoder;",
        "",
        "<init>",
        "()V",
        "encode",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "resizeKeepingAspectRatio",
        "maxSize",
        "",
        "Channel",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/image/thumbhash/ThumbhashEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder;

    invoke-direct {v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder;-><init>()V

    sput-object v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder;->INSTANCE:Lexpo/modules/image/thumbhash/ThumbhashEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final resizeKeepingAspectRatio(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    move v2, v0

    move v0, p2

    move p2, v2

    :goto_0
    const/4 v1, 0x1

    .line 129
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createScaledBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final encode(Landroid/graphics/Bitmap;)[B
    .locals 26

    move-object/from16 v0, p1

    const-string v1, "bitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    move-object/from16 v2, p0

    .line 15
    invoke-direct {v2, v0, v1}, Lexpo/modules/image/thumbhash/ThumbhashEncoder;->resizeKeepingAspectRatio(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v0, v6, v10

    .line 19
    new-array v4, v0, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    .line 20
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    move v7, v1

    move v8, v7

    move v9, v8

    move v11, v9

    const/4 v5, 0x0

    :goto_0
    const/high16 v12, 0x437f0000    # 255.0f

    if-ge v5, v0, :cond_0

    .line 28
    aget v13, v4, v5

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    div-float v12, v13, v12

    .line 29
    aget v14, v4, v5

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v12

    add-float/2addr v8, v14

    .line 30
    aget v14, v4, v5

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v12

    add-float/2addr v9, v14

    .line 31
    aget v14, v4, v5

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    add-float/2addr v7, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v1, v7, v1

    if-lez v1, :cond_1

    div-float/2addr v8, v7

    div-float/2addr v9, v7

    div-float/2addr v11, v7

    :cond_1
    int-to-float v1, v0

    cmpg-float v1, v7, v1

    const/4 v5, 0x1

    if-gez v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 v13, 0x5

    goto :goto_2

    :cond_3
    const/4 v13, 0x7

    :goto_2
    mul-int v14, v13, v6

    int-to-float v14, v14

    .line 43
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-int/2addr v13, v10

    int-to-float v13, v13

    .line 44
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 45
    new-array v15, v0, [F

    move/from16 p1, v5

    .line 46
    new-array v5, v0, [F

    move/from16 v16, v12

    .line 47
    new-array v12, v0, [F

    const/16 v17, 0x0

    .line 48
    new-array v3, v0, [F

    move/from16 v7, v17

    :goto_3
    if-ge v7, v0, :cond_4

    .line 53
    aget v19, v4, v7

    move/from16 v20, v0

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v0, v0, v16

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v0

    mul-float v21, v8, v19

    div-float v22, v0, v16

    .line 54
    aget v23, v4, v7

    move/from16 v24, v0

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v22

    add-float v21, v21, v0

    mul-float v0, v9, v19

    .line 55
    aget v23, v4, v7

    move/from16 v25, v0

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v22

    add-float v0, v25, v0

    mul-float v19, v19, v11

    .line 56
    aget v23, v4, v7

    move/from16 v25, v0

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v22, v22, v0

    add-float v19, v19, v22

    add-float v0, v21, v25

    add-float v22, v0, v19

    const/high16 v23, 0x40400000    # 3.0f

    div-float v22, v22, v23

    .line 57
    aput v22, v15, v7

    const/high16 v22, 0x40000000    # 2.0f

    div-float v0, v0, v22

    sub-float v0, v0, v19

    .line 58
    aput v0, v5, v7

    sub-float v21, v21, v25

    .line 59
    aput v21, v12, v7

    .line 60
    aput v24, v3, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v20

    goto :goto_3

    .line 65
    :cond_4
    new-instance v0, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    const/4 v4, 0x3

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {v0, v7, v8}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;-><init>(II)V

    invoke-virtual {v0, v6, v10, v15}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    move-result-object v0

    .line 66
    new-instance v7, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    invoke-direct {v7, v4, v4}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;-><init>(II)V

    invoke-virtual {v7, v6, v10, v5}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    move-result-object v5

    .line 67
    new-instance v7, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    invoke-direct {v7, v4, v4}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;-><init>(II)V

    invoke-virtual {v7, v6, v10, v12}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    move-result-object v7

    if-eqz v1, :cond_5

    .line 68
    new-instance v8, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    const/4 v9, 0x5

    invoke-direct {v8, v9, v9}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;-><init>(II)V

    invoke-virtual {v8, v6, v10, v3}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->encode(II[F)Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;

    move-result-object v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-le v6, v10, :cond_6

    move/from16 v6, p1

    goto :goto_5

    :cond_6
    move/from16 v6, v17

    .line 73
    :goto_5
    invoke-virtual {v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getDc()F

    move-result v8

    const/high16 v9, 0x427c0000    # 63.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 74
    invoke-virtual {v5}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getDc()F

    move-result v10

    const/high16 v11, 0x41fc0000    # 31.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v12, 0x6

    shl-int/2addr v10, v12

    or-int/2addr v8, v10

    .line 75
    invoke-virtual {v7}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getDc()F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v8, v10

    const/high16 v10, 0x41f80000    # 31.0f

    .line 76
    invoke-virtual {v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getScale()F

    move-result v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    shl-int/lit8 v10, v10, 0x12

    or-int/2addr v8, v10

    if-eqz v1, :cond_7

    const/high16 v10, 0x800000

    goto :goto_6

    :cond_7
    move/from16 v10, v17

    :goto_6
    or-int/2addr v8, v10

    if-eqz v6, :cond_8

    move v14, v13

    .line 81
    :cond_8
    invoke-virtual {v5}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getScale()F

    move-result v10

    mul-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    shl-int/2addr v10, v4

    or-int/2addr v10, v14

    .line 82
    invoke-virtual {v7}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getScale()F

    move-result v11

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    shl-int/lit8 v9, v9, 0x9

    or-int/2addr v9, v10

    if-eqz v6, :cond_9

    const v6, 0x8000

    goto :goto_7

    :cond_9
    move/from16 v6, v17

    :goto_7
    or-int/2addr v6, v9

    if-eqz v1, :cond_a

    move v9, v12

    goto :goto_8

    :cond_a
    const/4 v9, 0x5

    .line 87
    :goto_8
    invoke-virtual {v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getAc()[F

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v5}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getAc()[F

    move-result-object v11

    array-length v11, v11

    add-int/2addr v10, v11

    invoke-virtual {v7}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getAc()[F

    move-result-object v11

    array-length v11, v11

    add-int/2addr v10, v11

    if-eqz v1, :cond_b

    .line 88
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getAc()[F

    move-result-object v11

    array-length v11, v11

    goto :goto_9

    :cond_b
    move/from16 v11, v17

    :goto_9
    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x2

    .line 90
    div-int/2addr v10, v11

    add-int/2addr v10, v9

    new-array v10, v10, [B

    int-to-byte v12, v8

    .line 91
    aput-byte v12, v10, v17

    shr-int/lit8 v12, v8, 0x8

    int-to-byte v12, v12

    .line 92
    aput-byte v12, v10, p1

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    .line 93
    aput-byte v8, v10, v11

    int-to-byte v8, v6

    .line 94
    aput-byte v8, v10, v4

    shr-int/lit8 v4, v6, 0x8

    int-to-byte v4, v4

    const/4 v6, 0x4

    .line 95
    aput-byte v4, v10, v6

    if-eqz v1, :cond_c

    .line 98
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getDc()F

    move-result v4

    const/high16 v8, 0x41700000    # 15.0f

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 99
    invoke-virtual {v3}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->getScale()F

    move-result v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    shl-int/lit8 v6, v8, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    const/16 v18, 0x5

    .line 100
    aput-byte v4, v10, v18

    :cond_c
    move/from16 v4, v17

    .line 105
    invoke-virtual {v0, v10, v9, v4}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->writeTo([BII)I

    move-result v0

    .line 106
    invoke-virtual {v5, v10, v9, v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->writeTo([BII)I

    move-result v0

    .line 107
    invoke-virtual {v7, v10, v9, v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->writeTo([BII)I

    move-result v0

    if-eqz v1, :cond_d

    .line 108
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v10, v9, v0}, Lexpo/modules/image/thumbhash/ThumbhashEncoder$Channel;->writeTo([BII)I

    :cond_d
    return-object v10
.end method
