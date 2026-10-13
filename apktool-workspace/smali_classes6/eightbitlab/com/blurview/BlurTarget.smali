.class public Leightbitlab/com/blurview/BlurTarget;
.super Landroid/widget/FrameLayout;
.source "BlurTarget.java"


# static fields
.field static final canUseHardwareRendering:Z


# instance fields
.field renderNode:Landroid/graphics/RenderNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    sget-boolean p1, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Landroid/graphics/RenderNode;

    const-string v0, "BlurViewHost node"

    invoke-direct {p1, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-boolean p1, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Landroid/graphics/RenderNode;

    const-string p2, "BlurViewHost node"

    invoke-direct {p1, p2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-boolean p1, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Landroid/graphics/RenderNode;

    const-string p2, "BlurViewHost node"

    invoke-direct {p1, p2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    sget-boolean p1, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Landroid/graphics/RenderNode;

    const-string p2, "BlurViewHost node"

    invoke-direct {p1, p2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 50
    sget-boolean v0, Leightbitlab/com/blurview/BlurTarget;->canUseHardwareRendering:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurTarget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurTarget;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 52
    iget-object v0, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 53
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 55
    iget-object v0, p0, Leightbitlab/com/blurview/BlurTarget;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
