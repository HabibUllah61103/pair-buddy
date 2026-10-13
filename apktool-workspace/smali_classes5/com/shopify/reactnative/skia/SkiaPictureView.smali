.class public Lcom/shopify/reactnative/skia/SkiaPictureView;
.super Lcom/shopify/reactnative/skia/SkiaBaseView;
.source "SkiaPictureView.java"


# instance fields
.field private androidWarmup:Z

.field private mHybridData:Lcom/facebook/jni/HybridData;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->androidWarmup:Z

    .line 24
    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    const-class v0, Lcom/shopify/reactnative/skia/RNSkiaModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/shopify/reactnative/skia/RNSkiaModule;

    .line 25
    invoke-virtual {p1}, Lcom/shopify/reactnative/skia/RNSkiaModule;->getSkiaManager()Lcom/shopify/reactnative/skia/SkiaManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/SkiaPictureView;->initHybrid(Lcom/shopify/reactnative/skia/SkiaManager;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private native initHybrid(Lcom/shopify/reactnative/skia/SkiaManager;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method protected native getBitmap(II)[I
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 41
    invoke-super {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget-boolean v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->androidWarmup:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaPictureView;->getWidth()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaPictureView;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/shopify/reactnative/skia/SkiaPictureView;->getBitmap(II)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    array-length v3, v2

    mul-int v4, v0, v1

    if-ne v3, v4, :cond_1

    .line 58
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 62
    iget-object v1, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;II)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/SkiaBaseView;->onSurfaceChanged(Landroid/view/Surface;II)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;II)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/SkiaBaseView;->onSurfaceCreated(Landroid/view/Surface;II)V

    return-void
.end method

.method public onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/SkiaBaseView;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/SkiaBaseView;->onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method protected native registerView(I)V
.end method

.method public setAndroidWarmup(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->androidWarmup:Z

    xor-int/lit8 p1, p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaPictureView;->setWillNotDraw(Z)V

    return-void
.end method

.method protected native setBgColor(I)V
.end method

.method protected native setDebugMode(Z)V
.end method

.method protected native surfaceAvailable(Ljava/lang/Object;IIZ)V
.end method

.method protected native surfaceDestroyed()V
.end method

.method protected native surfaceSizeChanged(Ljava/lang/Object;IIZ)V
.end method

.method protected native unregisterView()V
.end method
