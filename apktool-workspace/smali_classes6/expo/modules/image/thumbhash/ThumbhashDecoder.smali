.class public final Lexpo/modules/image/thumbhash/ThumbhashDecoder;
.super Ljava/lang/Object;
.source "ThumbhashDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;,
        Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;,
        Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThumbhashDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThumbhashDecoder.kt\nexpo/modules/image/thumbhash/ThumbhashDecoder\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,223:1\n11238#2:224\n11573#2,3:225\n*S KotlinDebug\n*F\n+ 1 ThumbhashDecoder.kt\nexpo/modules/image/thumbhash/ThumbhashDecoder\n*L\n145#1:224\n145#1:225,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u000e\u000f\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder;",
        "",
        "<init>",
        "()V",
        "thumbHashToRGBA",
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;",
        "hash",
        "",
        "thumbHashToBitmap",
        "Landroid/graphics/Bitmap;",
        "thumbHashToAverageRGBA",
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;",
        "thumbHashToApproximateAspectRatio",
        "",
        "Image",
        "RGBA",
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
.field public static final INSTANCE:Lexpo/modules/image/thumbhash/ThumbhashDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/thumbhash/ThumbhashDecoder;

    invoke-direct {v0}, Lexpo/modules/image/thumbhash/ThumbhashDecoder;-><init>()V

    sput-object v0, Lexpo/modules/image/thumbhash/ThumbhashDecoder;->INSTANCE:Lexpo/modules/image/thumbhash/ThumbhashDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final thumbHashToApproximateAspectRatio([B)F
    .locals 5

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 188
    aget-byte v0, p1, v0

    const/4 v1, 0x2

    .line 189
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x4

    .line 190
    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const/4 p1, 0x5

    const/4 v3, 0x7

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    move v4, p1

    goto :goto_2

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    and-int/lit8 v4, v0, 0x7

    :goto_2
    if-eqz v2, :cond_4

    and-int/lit8 p1, v0, 0x7

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move p1, v3

    :goto_3
    int-to-float v0, v4

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final thumbHashToAverageRGBA([B)Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;
    .locals 6

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x3f

    int-to-float v1, v1

    const/high16 v2, 0x427c0000    # 63.0f

    div-float/2addr v1, v2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-float v2, v2

    const/high16 v3, 0x41fc0000    # 31.5f

    div-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v5, v4

    shr-int/lit8 v0, v0, 0x17

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 169
    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    int-to-float p1, p1

    const/high16 v0, 0x41700000    # 15.0f

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    const v0, 0x3f2aaaab

    mul-float/2addr v2, v0

    sub-float v0, v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v2, v1, v5

    .line 173
    new-instance v3, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;

    .line 174
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 175
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 176
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 173
    invoke-direct {v3, v1, v2, v0, p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;-><init>(FFFF)V

    return-object v3
.end method

.method public final thumbHashToBitmap([B)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder;->thumbHashToRGBA([B)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 145
    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getRgba()[B

    move-result-object v1

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 225
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-byte v6, v1, v5

    .line 145
    invoke-static {v6}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 226
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 227
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 146
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    invoke-static {v4, v1, v3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v1

    if-ltz v1, :cond_1

    .line 147
    :goto_1
    div-int/lit8 v3, v4, 0x4

    add-int/lit8 v5, v4, 0x3

    .line 148
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 149
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    .line 150
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/lit8 v8, v4, 0x2

    .line 151
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 147
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v0, v3

    if-eq v4, v1, :cond_1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;->getHeight()I

    move-result p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final thumbHashToRGBA([B)Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;
    .locals 35

    move-object/from16 v0, p1

    const-string v1, "hash"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 16
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x3

    .line 17
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x4

    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x3f

    int-to-float v7, v7

    const/high16 v8, 0x427c0000    # 63.0f

    div-float/2addr v7, v8

    shr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x3f

    int-to-float v9, v9

    const/high16 v10, 0x41fc0000    # 31.5f

    div-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v9, v11

    shr-int/lit8 v12, v2, 0xc

    and-int/lit8 v12, v12, 0x3f

    int-to-float v12, v12

    div-float/2addr v12, v10

    sub-float/2addr v12, v11

    shr-int/lit8 v10, v2, 0x12

    and-int/lit8 v10, v10, 0x1f

    int-to-float v10, v10

    const/high16 v13, 0x41f80000    # 31.0f

    div-float/2addr v10, v13

    shr-int/lit8 v2, v2, 0x17

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    shr-int/lit8 v13, v5, 0x3

    and-int/lit8 v13, v13, 0x3f

    int-to-float v13, v13

    div-float/2addr v13, v8

    shr-int/lit8 v14, v5, 0x9

    and-int/lit8 v14, v14, 0x3f

    int-to-float v14, v14

    div-float/2addr v14, v8

    shr-int/lit8 v8, v5, 0xf

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    const/4 v15, 0x7

    const/4 v3, 0x5

    if-eqz v8, :cond_3

    move/from16 v17, v6

    if-eqz v2, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v15

    goto :goto_2

    :cond_3
    and-int/lit8 v16, v5, 0x7

    move/from16 v17, v6

    move/from16 v6, v16

    .line 26
    :goto_2
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v8, :cond_4

    and-int/2addr v15, v5

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    move v15, v3

    .line 27
    :cond_5
    :goto_3
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v8, 0x41700000    # 15.0f

    if-eqz v2, :cond_6

    .line 28
    aget-byte v15, v0, v3

    and-int/lit8 v15, v15, 0xf

    int-to-float v15, v15

    div-float/2addr v15, v8

    goto :goto_4

    :cond_6
    move v15, v11

    .line 29
    :goto_4
    aget-byte v16, v0, v3

    shr-int/lit8 v16, v16, 0x4

    move/from16 v18, v8

    and-int/lit8 v8, v16, 0xf

    int-to-float v8, v8

    div-float v8, v8, v18

    if-eqz v2, :cond_7

    const/16 v16, 0x6

    move/from16 v34, v16

    move/from16 v16, v11

    move/from16 v11, v34

    goto :goto_5

    :cond_7
    move/from16 v16, v11

    move v11, v3

    .line 34
    :goto_5
    new-instance v3, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v3, v6, v5}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    .line 35
    new-instance v1, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v1, v4, v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    move/from16 v19, v2

    .line 36
    new-instance v2, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    invoke-direct {v2, v4, v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v3, v0, v11, v4, v10}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    move-result v10

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v13, v4

    .line 39
    invoke-virtual {v1, v0, v11, v10, v13}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    move-result v10

    mul-float/2addr v14, v4

    .line 40
    invoke-virtual {v2, v0, v11, v10, v14}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    move-result v4

    const/4 v10, 0x0

    if-eqz v19, :cond_8

    .line 42
    new-instance v13, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;

    const/4 v14, 0x5

    invoke-direct {v13, v14, v14}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;-><init>(II)V

    .line 43
    invoke-virtual {v13, v0, v11, v4, v8}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->decode([BIIF)I

    goto :goto_6

    :cond_8
    move-object v13, v10

    .line 45
    :goto_6
    invoke-virtual {v3}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v3

    .line 46
    invoke-virtual {v1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v1

    .line 47
    invoke-virtual {v2}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v2

    if-eqz v19, :cond_9

    .line 48
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Channel;->getAc()[F

    move-result-object v10

    .line 51
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lexpo/modules/image/thumbhash/ThumbhashDecoder;->thumbHashToApproximateAspectRatio([B)F

    move-result v0

    cmpl-float v4, v0, v16

    const/high16 v8, 0x42000000    # 32.0f

    if-lez v4, :cond_a

    move v11, v8

    goto :goto_7

    :cond_a
    mul-float v11, v0, v8

    .line 52
    :goto_7
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-lez v4, :cond_b

    div-float/2addr v8, v0

    .line 53
    :cond_b
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int v4, v11, v0

    mul-int/lit8 v4, v4, 0x4

    .line 54
    new-array v4, v4, [B

    if-eqz v19, :cond_c

    const/4 v14, 0x5

    goto :goto_8

    :cond_c
    const/4 v14, 0x3

    .line 55
    :goto_8
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v19, :cond_d

    const/4 v14, 0x5

    goto :goto_9

    :cond_d
    const/4 v14, 0x3

    .line 56
    :goto_9
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 57
    new-array v14, v8, [F

    move-object/from16 v17, v1

    .line 58
    new-array v1, v13, [F

    move-object/from16 p1, v1

    const/4 v1, 0x0

    const/16 v21, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    move-object/from16 v22, v2

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v11, :cond_19

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :goto_c
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    if-ge v3, v8, :cond_e

    move/from16 v27, v6

    move/from16 v26, v7

    int-to-double v6, v11

    div-double v24, v24, v6

    int-to-float v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-double v6, v6

    mul-double v24, v24, v6

    int-to-double v6, v3

    mul-double v24, v24, v6

    .line 70
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v14, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v26

    move/from16 v6, v27

    goto :goto_c

    :cond_e
    move/from16 v27, v6

    move/from16 v26, v7

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v13, :cond_f

    int-to-double v6, v0

    div-double v6, v24, v6

    move/from16 v28, v2

    int-to-float v2, v1

    const/high16 v29, 0x3f000000    # 0.5f

    add-float v2, v2, v29

    move/from16 v29, v1

    float-to-double v1, v2

    mul-double/2addr v6, v1

    int-to-double v1, v3

    mul-double/2addr v6, v1

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v28

    move/from16 v1, v29

    goto :goto_d

    :cond_f
    move/from16 v29, v1

    move/from16 v28, v2

    .line 74
    move-object/from16 v1, p0

    check-cast v1, Lexpo/modules/image/thumbhash/ThumbhashDecoder;

    move/from16 v3, v26

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    const/high16 v6, 0x40000000    # 2.0f

    if-ge v1, v5, :cond_12

    .line 78
    aget v7, p1, v1

    mul-float/2addr v7, v6

    if-lez v1, :cond_10

    const/4 v6, 0x0

    goto :goto_f

    :cond_10
    const/4 v6, 0x1

    :goto_f
    move/from16 v24, v1

    :goto_10
    mul-int v1, v6, v5

    sub-int v25, v5, v24

    move/from16 v30, v2

    mul-int v2, v27, v25

    if-ge v1, v2, :cond_11

    .line 81
    aget v1, v23, v30

    aget v2, v14, v6

    mul-float/2addr v1, v2

    mul-float/2addr v1, v7

    add-float/2addr v3, v1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v30, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v24, 0x1

    move/from16 v2, v30

    goto :goto_e

    :cond_12
    move/from16 v24, v6

    move v7, v9

    move/from16 v20, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    const/4 v6, 0x3

    if-ge v1, v6, :cond_15

    .line 93
    aget v25, p1, v1

    mul-float v25, v25, v24

    if-lez v1, :cond_13

    const/16 v30, 0x0

    goto :goto_12

    :cond_13
    const/16 v30, 0x1

    :goto_12
    move/from16 v6, v30

    :goto_13
    move/from16 v31, v1

    rsub-int/lit8 v1, v31, 0x3

    if-ge v6, v1, :cond_14

    .line 96
    aget v1, v14, v6

    mul-float v1, v1, v25

    .line 97
    aget v32, v17, v2

    mul-float v32, v32, v1

    add-float v7, v7, v32

    .line 98
    aget v32, v22, v2

    mul-float v32, v32, v1

    add-float v20, v20, v32

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v31

    goto :goto_13

    :cond_14
    add-int/lit8 v1, v31, 0x1

    goto :goto_11

    :cond_15
    move v6, v15

    if-eqz v19, :cond_18

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_14
    const/4 v2, 0x5

    if-ge v1, v2, :cond_18

    .line 110
    aget v25, p1, v1

    mul-float v25, v25, v24

    if-lez v1, :cond_16

    const/16 v31, 0x0

    goto :goto_15

    :cond_16
    const/16 v31, 0x1

    :goto_15
    move/from16 v2, v31

    :goto_16
    move/from16 v32, v1

    rsub-int/lit8 v1, v32, 0x5

    if-ge v2, v1, :cond_17

    .line 113
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v1, v10, v18

    aget v33, v14, v2

    mul-float v1, v1, v33

    mul-float v1, v1, v25

    add-float/2addr v6, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v1, v32

    goto :goto_16

    :cond_17
    add-int/lit8 v1, v32, 0x1

    goto :goto_14

    :cond_18
    const v1, 0x3f2aaaab

    mul-float/2addr v7, v1

    sub-float v1, v3, v7

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v3, v2

    sub-float/2addr v3, v1

    add-float v3, v3, v20

    div-float v3, v3, v24

    sub-float v2, v3, v20

    move/from16 v7, v16

    .line 125
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v21

    add-int/lit8 v3, v21, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 126
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v2, v21, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    add-int/lit8 v1, v21, 0x3

    .line 128
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    add-int/lit8 v2, v28, 0x1

    add-int/lit8 v21, v21, 0x4

    move/from16 v16, v3

    move-object/from16 v3, v23

    move/from16 v7, v26

    move/from16 v6, v27

    move/from16 v1, v29

    goto/16 :goto_b

    :cond_19
    move/from16 v29, v1

    move-object/from16 v23, v3

    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v3, v16

    const/4 v7, 0x0

    add-int/lit8 v1, v29, 0x1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v7, v26

    goto/16 :goto_a

    .line 134
    :cond_1a
    new-instance v1, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;

    invoke-direct {v1, v11, v0, v4}, Lexpo/modules/image/thumbhash/ThumbhashDecoder$Image;-><init>(II[B)V

    return-object v1
.end method
