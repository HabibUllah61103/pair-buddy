.class public Leightbitlab/com/blurview/RenderScriptBlur;
.super Ljava/lang/Object;
.source "RenderScriptBlur.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurAlgorithm;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private lastBitmapHeight:I

.field private lastBitmapWidth:I

.field private outAllocation:Landroid/renderscript/Allocation;

.field private final paint:Landroid/graphics/Paint;

.field private final renderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapWidth:I

    .line 32
    iput v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapHeight:I

    .line 38
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 39
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method private canReuseAllocation(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapHeight:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapWidth:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 55
    :try_start_0
    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 57
    invoke-direct {p0, p1}, Leightbitlab/com/blurview/RenderScriptBlur;->canReuseAllocation(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 61
    :cond_0
    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapWidth:I

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->lastBitmapHeight:I

    .line 66
    :cond_1
    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 67
    iget-object p2, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 69
    iget-object p2, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 70
    iget-object p2, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 76
    const-string v0, "BlurView"

    const-string v1, "RenderScript blur failed. Rendering unblurred snapshot"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final destroy()V
    .locals 1

    .line 83
    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 84
    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 85
    iget-object v0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_0
    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 98
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Leightbitlab/com/blurview/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
