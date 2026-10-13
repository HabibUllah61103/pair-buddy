.class public Leightbitlab/com/blurview/RenderNodeBlurController;
.super Ljava/lang/Object;
.source "RenderNodeBlurController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# instance fields
.field private final applyNoise:Z

.field private final blurNode:Landroid/graphics/RenderNode;

.field private blurRadius:F

.field private final blurView:Leightbitlab/com/blurview/BlurView;

.field private final blurViewLocation:[I

.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private enabled:Z

.field private fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private overlayColor:I

.field private final scaleFactor:F

.field private final target:Leightbitlab/com/blurview/BlurTarget;

.field private final targetLocation:[I


# direct methods
.method public constructor <init>(Leightbitlab/com/blurview/BlurView;Leightbitlab/com/blurview/BlurTarget;IFZ)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 23
    new-array v1, v0, [I

    iput-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->targetLocation:[I

    .line 24
    new-array v0, v0, [I

    iput-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurViewLocation:[I

    .line 28
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BlurView node"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurRadius:F

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->enabled:Z

    .line 44
    new-instance v0, Leightbitlab/com/blurview/RenderNodeBlurController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Leightbitlab/com/blurview/RenderNodeBlurController$$ExternalSyntheticLambda0;-><init>(Leightbitlab/com/blurview/RenderNodeBlurController;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 51
    iput-object p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 52
    iput p3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->overlayColor:I

    .line 53
    iput-object p2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->target:Leightbitlab/com/blurview/BlurTarget;

    .line 54
    iput p4, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->scaleFactor:F

    .line 55
    iput-boolean p5, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->applyNoise:Z

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Leightbitlab/com/blurview/BlurView;->setWillNotDraw(Z)V

    .line 57
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private applyBlur()V
    .locals 2

    .line 230
    iget v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurRadius:F

    iget v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->scaleFactor:F

    mul-float/2addr v0, v1

    .line 231
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v0, v0, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    .line 232
    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v0}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    return-void
.end method

.method private drawSnapshot()V
    .locals 2

    .line 113
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 114
    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    :cond_0
    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->target:Leightbitlab/com/blurview/BlurTarget;

    iget-object v1, v1, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 119
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->applyBlur()V

    .line 120
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method private getLeft()I
    .locals 3

    .line 181
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->targetLocation:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTop()I
    .locals 3

    .line 177
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurViewLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->targetLocation:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hardwarePath(Landroid/graphics/Canvas;)V
    .locals 4

    .line 86
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->target:Leightbitlab/com/blurview/BlurTarget;

    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurTarget;->getWidth()I

    move-result v1

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->target:Leightbitlab/com/blurview/BlurTarget;

    invoke-virtual {v2}, Leightbitlab/com/blurview/BlurTarget;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 87
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->updateRenderNodeProperties()V

    .line 89
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->drawSnapshot()V

    .line 92
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 93
    iget-boolean v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->applyNoise:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v1

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Leightbitlab/com/blurview/Noise;->apply(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    .line 96
    :cond_0
    iget v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->overlayColor:I

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    return-void
.end method

.method private saveOnScreenLocation()V
    .locals 2

    .line 257
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->target:Leightbitlab/com/blurview/BlurTarget;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->targetLocation:[I

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurTarget;->getLocationOnScreen([I)V

    .line 258
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurViewLocation:[I

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->getLocationOnScreen([I)V

    return-void
.end method

.method private setupCanvasMatrix(Landroid/graphics/Canvas;Leightbitlab/com/blurview/SizeScaler$Size;Leightbitlab/com/blurview/SizeScaler$Size;)V
    .locals 2

    .line 166
    iget v0, p2, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    int-to-float v0, v0

    iget v1, p3, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 167
    iget p2, p2, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    int-to-float p2, p2

    iget p3, p3, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 169
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->getLeft()I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    .line 170
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 172
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p3, 0x3f800000    # 1.0f

    div-float p2, p3, p2

    div-float/2addr p3, v0

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method private softwarePath(Landroid/graphics/Canvas;)V
    .locals 6

    .line 124
    new-instance v0, Leightbitlab/com/blurview/SizeScaler;

    iget v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->scaleFactor:F

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/SizeScaler;-><init>(F)V

    .line 125
    new-instance v1, Leightbitlab/com/blurview/SizeScaler$Size;

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v2

    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v3}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Leightbitlab/com/blurview/SizeScaler$Size;-><init>(II)V

    .line 126
    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/SizeScaler;->scale(Leightbitlab/com/blurview/SizeScaler$Size;)Leightbitlab/com/blurview/SizeScaler$Size;

    move-result-object v0

    .line 127
    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 128
    :cond_0
    iget v2, v0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget v3, v0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 130
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 133
    invoke-direct {p0, v2, v1, v0}, Leightbitlab/com/blurview/RenderNodeBlurController;->setupCanvasMatrix(Landroid/graphics/Canvas;Leightbitlab/com/blurview/SizeScaler$Size;Leightbitlab/com/blurview/SizeScaler$Size;)V

    .line 134
    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    :cond_2
    :try_start_0
    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->target:Leightbitlab/com/blurview/BlurTarget;

    invoke-virtual {v3, v2}, Leightbitlab/com/blurview/BlurTarget;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 141
    const-string v4, "BlurView"

    const-string v5, "Error during snapshot capturing"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 145
    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

    if-nez v2, :cond_3

    .line 146
    new-instance v2, Leightbitlab/com/blurview/RenderScriptBlur;

    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v3}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

    .line 148
    :cond_3
    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->cachedBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurRadius:F

    invoke-virtual {v2, v3, v4}, Leightbitlab/com/blurview/RenderScriptBlur;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget v2, v1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    int-to-float v2, v2

    iget v3, v0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v1, v1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    int-to-float v1, v1

    iget v0, v0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 151
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/RenderScriptBlur;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    iget-boolean v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->applyNoise:Z

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v1

    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Leightbitlab/com/blurview/Noise;->apply(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    .line 156
    :cond_4
    iget v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->overlayColor:I

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_5
    return-void
.end method

.method private updateRenderNodeProperties()V
    .locals 5

    .line 102
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 103
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 106
    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v3}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    .line 107
    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    iget-object v3, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v3}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    .line 108
    iget-object v2, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v0}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    .line 109
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 191
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 192
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Leightbitlab/com/blurview/RenderScriptBlur;->destroy()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->fallbackBlur:Leightbitlab/com/blurview/RenderScriptBlur;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 2

    .line 62
    iget-boolean v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->enabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->saveOnScreenLocation()V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/RenderNodeBlurController;->hardwarePath(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/RenderNodeBlurController;->softwarePath(Landroid/graphics/Canvas;)V

    :goto_0
    return v1
.end method

.method synthetic lambda$new$0$eightbitlab-com-blurview-RenderNodeBlurController()Z
    .locals 1

    .line 45
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->saveOnScreenLocation()V

    .line 46
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->updateRenderNodeProperties()V

    const/4 v0, 0x1

    return v0
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    .line 207
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 200
    iput-boolean p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->enabled:Z

    .line 201
    iget-object p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 222
    iput p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurRadius:F

    .line 223
    invoke-direct {p0}, Leightbitlab/com/blurview/RenderNodeBlurController;->applyBlur()V

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 216
    iput-object p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 237
    iget v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 238
    iput p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->overlayColor:I

    .line 239
    iget-object p1, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public updateBlurViewSize()V
    .locals 0

    return-void
.end method

.method updateRotation(F)V
    .locals 1

    .line 245
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    return-void
.end method

.method public updateScaleX(F)V
    .locals 2

    .line 249
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    return-void
.end method

.method public updateScaleY(F)V
    .locals 2

    .line 253
    iget-object v0, p0, Leightbitlab/com/blurview/RenderNodeBlurController;->blurNode:Landroid/graphics/RenderNode;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    return-void
.end method
