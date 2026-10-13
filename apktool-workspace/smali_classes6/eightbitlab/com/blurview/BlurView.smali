.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# instance fields
.field private blurAutoUpdate:Z

.field blurController:Leightbitlab/com/blurview/BlurController;

.field private overlayColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Leightbitlab/com/blurview/BlurView;->blurAutoUpdate:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Leightbitlab/com/blurview/BlurView;->blurAutoUpdate:Z

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p2, p1}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Leightbitlab/com/blurview/BlurView;->blurAutoUpdate:Z

    .line 43
    invoke-direct {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/eightbitlab/blurview/R$styleable;->BlurView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/eightbitlab/blurview/R$styleable;->BlurView_blurOverlayColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private usingRenderNode()Z
    .locals 1

    .line 196
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    instance-of v0, v0, Leightbitlab/com/blurview/RenderNodeBlurController;

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 54
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public notifyRotationChanged(F)V
    .locals 1

    .line 176
    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->usingRenderNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    check-cast v0, Leightbitlab/com/blurview/RenderNodeBlurController;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/RenderNodeBlurController;->updateRotation(F)V

    :cond_0
    return-void
.end method

.method public notifyScaleXChanged(F)V
    .locals 1

    .line 183
    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->usingRenderNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    check-cast v0, Leightbitlab/com/blurview/RenderNodeBlurController;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/RenderNodeBlurController;->updateScaleX(F)V

    :cond_0
    return-void
.end method

.method public notifyScaleYChanged(F)V
    .locals 1

    .line 190
    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->usingRenderNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    check-cast v0, Leightbitlab/com/blurview/RenderNodeBlurController;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/RenderNodeBlurController;->updateScaleY(F)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 75
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "BlurView"

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    iget-boolean v1, p0, Leightbitlab/com/blurview/BlurView;->blurAutoUpdate:Z

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 69
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 63
    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {p1}, Leightbitlab/com/blurview/BlurController;->updateBlurViewSize()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 157
    iput-boolean p1, p0, Leightbitlab/com/blurview/BlurView;->blurAutoUpdate:Z

    .line 158
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 165
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 142
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 149
    iput p1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 150
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setRotation(F)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 171
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->notifyRotationChanged(F)V

    return-void
.end method

.method public setupWith(Leightbitlab/com/blurview/BlurTarget;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x1

    .line 133
    invoke-virtual {p0, p1, v0, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Leightbitlab/com/blurview/BlurTarget;FZ)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setupWith(Leightbitlab/com/blurview/BlurTarget;FZ)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    .line 115
    sget-boolean v0, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    .line 121
    :goto_0
    invoke-virtual {p0, p1, v0, p2, p3}, Leightbitlab/com/blurview/BlurView;->setupWith(Leightbitlab/com/blurview/BlurTarget;Leightbitlab/com/blurview/BlurAlgorithm;FZ)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setupWith(Leightbitlab/com/blurview/BlurTarget;Leightbitlab/com/blurview/BlurAlgorithm;FZ)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 7

    .line 92
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    invoke-interface {v0}, Leightbitlab/com/blurview/BlurController;->destroy()V

    .line 93
    sget-boolean v0, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Leightbitlab/com/blurview/RenderNodeBlurController;

    iget v3, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Leightbitlab/com/blurview/RenderNodeBlurController;-><init>(Leightbitlab/com/blurview/BlurView;Leightbitlab/com/blurview/BlurTarget;IFZ)V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController;

    iget v3, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Leightbitlab/com/blurview/PreDrawBlurController;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;FZ)V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 100
    :goto_0
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    return-object v0
.end method
