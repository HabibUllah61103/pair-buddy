.class public final Leightbitlab/com/blurview/PreDrawBlurController;
.super Ljava/lang/Object;
.source "PreDrawBlurController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# static fields
.field public static final TRANSPARENT:I


# instance fields
.field private final applyNoise:Z

.field private final blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

.field private blurEnabled:Z

.field private blurRadius:F

.field final blurView:Landroid/view/View;

.field private final blurViewLocation:[I

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private initialized:Z

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

.field private overlayColor:I

.field private final rootLocation:[I

.field private final rootView:Landroid/view/ViewGroup;

.field private final scaleFactor:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;FZ)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 32
    iput v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 v0, 0x2

    .line 44
    new-array v1, v0, [I

    iput-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    .line 45
    new-array v0, v0, [I

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    .line 47
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController$1;

    invoke-direct {v0, p0}, Leightbitlab/com/blurview/PreDrawBlurController$1;-><init>(Leightbitlab/com/blurview/PreDrawBlurController;)V

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 80
    iput-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    .line 81
    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    .line 82
    iput p3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    .line 83
    iput-object p4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 84
    iput p5, p0, Leightbitlab/com/blurview/PreDrawBlurController;->scaleFactor:F

    .line 85
    iput-boolean p6, p0, Leightbitlab/com/blurview/PreDrawBlurController;->applyNoise:Z

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 90
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method

.method private blurAndSave()V
    .locals 3

    .line 190
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-interface {v0, v1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 191
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v0}, Leightbitlab/com/blurview/BlurAlgorithm;->canModifyBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurViewCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupInternalCanvasMatrix()V
    .locals 5

    .line 144
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 145
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 148
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 151
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 152
    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 157
    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v4, v2, v0}, Leightbitlab/com/blurview/BlurViewCanvas;->translate(FF)V

    .line 158
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Leightbitlab/com/blurview/BlurViewCanvas;->scale(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 207
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->destroy()V

    .line 208
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 163
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p1, Leightbitlab/com/blurview/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 173
    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 174
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 177
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 178
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->applyNoise:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Leightbitlab/com/blurview/Noise;->apply(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    .line 183
    :cond_2
    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    :goto_0
    return v1
.end method

.method init(II)V
    .locals 4

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 96
    new-instance v1, Leightbitlab/com/blurview/SizeScaler;

    iget v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->scaleFactor:F

    invoke-direct {v1, v2}, Leightbitlab/com/blurview/SizeScaler;-><init>(F)V

    .line 97
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->isZeroSized(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 104
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->scale(II)Leightbitlab/com/blurview/SizeScaler$Size;

    move-result-object p1

    .line 105
    iget p2, p1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget p1, p1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance p1, Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Leightbitlab/com/blurview/BlurViewCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 107
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    .line 112
    invoke-virtual {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->updateBlur()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    .line 232
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 233
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 237
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 225
    iput-boolean p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 226
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 227
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 213
    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 219
    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 246
    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 247
    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    .line 248
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method updateBlur()V
    .locals 3

    .line 117
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 121
    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    :goto_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->save()I

    .line 128
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->setupInternalCanvasMatrix()V

    .line 130
    :try_start_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 133
    const-string v1, "BlurView"

    const-string v2, "Error during snapshot capturing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_1
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->restore()V

    .line 137
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->blurAndSave()V

    :cond_2
    :goto_2
    return-void
.end method

.method public updateBlurViewSize()V
    .locals 2

    .line 198
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 199
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 201
    invoke-virtual {p0, v0, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method
