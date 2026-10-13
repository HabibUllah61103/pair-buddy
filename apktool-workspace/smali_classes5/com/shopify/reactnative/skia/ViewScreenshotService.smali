.class public Lcom/shopify/reactnative/skia/ViewScreenshotService;
.super Ljava/lang/Object;
.source "ViewScreenshotService.java"


# static fields
.field private static final SURFACE_VIEW_READ_PIXELS_TIMEOUT:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "SkiaScreenshot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    .line 198
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 201
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static createPaint()Landroid/graphics/Paint;
    .locals 2

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-object v0
.end method

.method private static drawBackgroundIfPresent(Landroid/graphics/Canvas;Landroid/view/View;F)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    .line 110
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private static drawChildren(Landroid/graphics/Canvas;Landroid/view/ViewGroup;Landroid/graphics/Paint;F)V
    .locals 5

    .line 118
    instance-of v0, p1, Lcom/facebook/react/views/view/ReactViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 120
    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    .line 121
    const-class v3, Landroid/graphics/Canvas;

    aput-object v3, v2, v1

    .line 122
    const-class v3, Lcom/facebook/react/views/view/ReactViewGroup;

    const-string v4, "dispatchOverflowDraw"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    const-string v2, "SkiaScreenshot"

    const-string v3, "couldn\'t invoke dispatchOverflowDraw() on ReactViewGroup"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 130
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_2

    .line 134
    check-cast v0, Landroid/view/TextureView;

    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawTextureView(Landroid/graphics/Canvas;Landroid/view/TextureView;Landroid/graphics/Paint;F)V

    goto :goto_1

    .line 135
    :cond_2
    instance-of v2, v0, Landroid/view/SurfaceView;

    if-eqz v2, :cond_3

    .line 136
    check-cast v0, Landroid/view/SurfaceView;

    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawSurfaceView(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V

    goto :goto_1

    .line 138
    :cond_3
    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->renderViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static drawSurfaceView(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V
    .locals 7

    .line 160
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 162
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 164
    :try_start_0
    new-instance v0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;FLandroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    new-instance p0, Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    invoke-static {v2, v5, v0, p0}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 172
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x5

    invoke-virtual {v6, p1, p2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    :goto_0
    move-object p0, v0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot PixelCopy for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SkiaScreenshot"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-static {v1, v2, v3, v4}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawSurfaceViewFromCache(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V

    return-void
.end method

.method private static drawSurfaceViewFromCache(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 186
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    .line 187
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    .line 188
    invoke-virtual {p0, v0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private static drawTextureView(Landroid/graphics/Canvas;Landroid/view/TextureView;Landroid/graphics/Paint;F)V
    .locals 3

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 151
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 153
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    .line 154
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, v0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V
    .locals 0

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p3, p2

    .line 144
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 145
    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static isSvgView(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    const-string v1, "com.horcrux.svg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    .line 75
    const-string v1, "ViewScreenshotService"

    const-string v2, "Error checking if view is SVG"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic lambda$drawSurfaceView$0(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;FLandroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 166
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    .line 167
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    .line 168
    invoke-virtual {p0, p4, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 170
    invoke-virtual {p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static makeViewScreenshotFromTag(Lcom/facebook/react/bridge/ReactContext;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 33
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez p1, :cond_2

    if-gtz v0, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-static {}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    invoke-static {v0, p0, v1, v2}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->renderViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static renderViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V
    .locals 4

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr p3, v0

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 83
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 86
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    .line 88
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    .line 89
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 90
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 91
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 93
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 96
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->isSvgView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    invoke-static {p0, p1, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawBackgroundIfPresent(Landroid/graphics/Canvas;Landroid/view/View;F)V

    .line 99
    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawChildren(Landroid/graphics/Canvas;Landroid/view/ViewGroup;Landroid/graphics/Paint;F)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V

    .line 104
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
