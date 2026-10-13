.class public abstract Lcom/shopify/reactnative/skia/SkiaBaseView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SkiaBaseView.java"

# interfaces
.implements Lcom/shopify/reactnative/skia/SkiaViewAPI;


# instance fields
.field private final debug:Z

.field private mView:Landroid/view/View;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->debug:Z

    .line 17
    const-string v1, "SkiaView"

    iput-object v1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->tag:Ljava/lang/String;

    .line 21
    new-instance v1, Lcom/shopify/reactnative/skia/SkiaTextureView;

    invoke-direct {v1, p1, p0, v0}, Lcom/shopify/reactnative/skia/SkiaTextureView;-><init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V

    iput-object v1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    .line 22
    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->canBeTouchTarget(Lcom/facebook/react/uimanager/PointerEvents;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method dropInstance()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/shopify/reactnative/skia/RNSkiaModule;->isModuleValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->unregisterView()V

    return-void
.end method

.method protected abstract getBitmap(II)[I
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 56
    invoke-super/range {p0 .. p5}, Lcom/facebook/react/views/view/ReactViewGroup;->onLayout(ZIIII)V

    move-object p1, p0

    .line 57
    iget-object v0, p1, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;II)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkiaView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceSizeChanged(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;II)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceDestroyed()V

    return-void
.end method

.method public onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkiaView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceSizeChanged(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method protected abstract registerView(I)V
.end method

.method protected abstract setDebugMode(Z)V
.end method

.method public setOpaque(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/shopify/reactnative/skia/SkiaTextureView;

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->removeView(Landroid/view/View;)V

    .line 38
    new-instance p1, Lcom/shopify/reactnative/skia/SkiaSurfaceView;

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p0, v0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;-><init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    .line 39
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    instance-of v1, p1, Lcom/shopify/reactnative/skia/SkiaSurfaceView;

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->removeView(Landroid/view/View;)V

    .line 42
    new-instance p1, Lcom/shopify/reactnative/skia/SkiaTextureView;

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p0, v0}, Lcom/shopify/reactnative/skia/SkiaTextureView;-><init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    .line 43
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected abstract surfaceAvailable(Ljava/lang/Object;IIZ)V
.end method

.method protected abstract surfaceDestroyed()V
.end method

.method protected abstract surfaceSizeChanged(Ljava/lang/Object;IIZ)V
.end method

.method protected abstract unregisterView()V
.end method
