.class final Lcom/fourplex/lovio/CombinedAvatarPairRenderer;
.super Ljava/lang/Object;
.source "CombinedWidget.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fJB\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J \u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J0\u0010 \u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/fourplex/lovio/CombinedAvatarPairRenderer;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "density",
        "",
        "backgroundColor",
        "",
        "primary",
        "secondary",
        "accent",
        "white",
        "render",
        "Landroid/graphics/Bitmap;",
        "userAvatar",
        "partnerAvatar",
        "drawAvatar",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "bitmap",
        "accentColor",
        "centerX",
        "centerY",
        "size",
        "drawCenterCropBitmap",
        "destination",
        "Landroid/graphics/RectF;",
        "drawPersonIcon",
        "dp",
        "value",
        "app_release"
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
.field private final accent:I

.field private final backgroundColor:I

.field private final density:F

.field private final primary:I

.field private final secondary:I

.field private final white:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->density:F

    .line 122
    const-string p1, "#222222"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->backgroundColor:I

    .line 123
    const-string p1, "#FF3B5C"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->primary:I

    .line 124
    const-string p1, "#FF9F43"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->secondary:I

    .line 125
    const-string p1, "#8B5CF6"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->accent:I

    const/4 p1, -0x1

    .line 126
    iput p1, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->white:I

    return-void
.end method

.method private final dp(F)F
    .locals 1

    .line 261
    iget v0, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method private final drawAvatar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IFFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    const/high16 v6, 0x40400000    # 3.0f

    .line 154
    invoke-direct {v0, v6}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->dp(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p7, v7

    sub-float v6, v7, v6

    .line 158
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    const/4 v8, 0x1

    .line 159
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget v8, v0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->backgroundColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {v1, v4, v5, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    new-instance v7, Landroid/graphics/RectF;

    sub-float v8, v4, v6

    sub-float v9, v5, v6

    add-float v10, v4, v6

    add-float v11, v5, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v3, :cond_0

    .line 172
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 173
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 176
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 177
    invoke-direct {v0, v1, v3, v7}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->drawCenterCropBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 180
    :cond_0
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 181
    iget v10, v7, Landroid/graphics/RectF;->left:F

    .line 182
    iget v11, v7, Landroid/graphics/RectF;->top:F

    .line 183
    iget v12, v7, Landroid/graphics/RectF;->right:F

    .line 184
    iget v13, v7, Landroid/graphics/RectF;->bottom:F

    .line 186
    iget v15, v0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->accent:I

    .line 187
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v14, p4

    .line 180
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    check-cast v9, Landroid/graphics/Shader;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 190
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v3, 0x3f866666    # 1.05f

    mul-float/2addr v6, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->drawPersonIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    return-void
.end method

.method private final drawCenterCropBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 6

    .line 196
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 197
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    div-float v2, v0, v1

    .line 203
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v2, :cond_1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    .line 206
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 207
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, v0

    add-float/2addr v3, v1

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v2, v0, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    div-float/2addr v1, v5

    .line 210
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 211
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v5, v1

    add-float/2addr v5, v0

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-direct {v2, v4, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 214
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final drawPersonIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 10

    move v5, p3

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, p5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, p5

    sub-float v1, p4, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, p5

    add-float v4, p4, v2

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v2, p5

    add-float v9, p4, v2

    const v2, 0x3ed70a3d    # 0.42f

    mul-float v7, p5, v2

    .line 230
    invoke-virtual {p2}, Landroid/graphics/Paint;->reset()V

    const/4 v2, 0x1

    .line 231
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget v2, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->white:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 237
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    sub-float v1, v5, v7

    .line 238
    invoke-virtual {v3, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, p4, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v8, p5, v0

    move-object v0, v3

    sub-float v3, v5, v8

    move v6, v4

    .line 239
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, p3, v8

    add-float v6, p3, v7

    move v8, v6

    move-object v3, v0

    move v7, v2

    move v5, v4

    move v4, v1

    .line 247
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 257
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v0, 0x42c80000    # 100.0f

    .line 129
    invoke-direct {p0, v0}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->dp(F)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    .line 130
    invoke-direct {p0, v1}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->dp(F)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 131
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v3, "createBitmap(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    new-instance v6, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 134
    invoke-direct {p0, v1}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->dp(F)F

    move-result v11

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v1, v2

    div-float v9, v11, v2

    const/high16 v1, 0x42240000    # 41.0f

    .line 137
    invoke-direct {p0, v1}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->dp(F)F

    move-result v1

    add-float/2addr v1, v9

    .line 139
    iget v8, p0, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->primary:I

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->drawAvatar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IFFF)V

    .line 140
    iget v8, v4, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->secondary:I

    move-object v7, p2

    move v9, v1

    invoke-direct/range {v4 .. v11}, Lcom/fourplex/lovio/CombinedAvatarPairRenderer;->drawAvatar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IFFF)V

    return-object v0
.end method
