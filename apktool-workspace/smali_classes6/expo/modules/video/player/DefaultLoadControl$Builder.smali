.class public final Lexpo/modules/video/player/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field private backBufferDurationMs:I

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private buildCalled:Z

.field private maxBufferMs:I

.field private minBufferMs:I

.field private prioritizeTimeOverSizeThresholds:Z

.field private retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc350

    .line 159
    iput v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->minBufferMs:I

    .line 160
    iput v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->maxBufferMs:I

    const/16 v0, 0x3e8

    .line 161
    iput v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    const/16 v0, 0x7d0

    .line 162
    iput v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    .line 165
    iput v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->backBufferDurationMs:I

    .line 166
    iput-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-void
.end method


# virtual methods
.method public build()Lexpo/modules/video/player/DefaultLoadControl;
    .locals 13

    .line 271
    iget-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 272
    iput-boolean v1, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    .line 273
    iget-object v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 276
    :cond_0
    new-instance v3, Lexpo/modules/video/player/DefaultLoadControl;

    iget-object v4, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget v5, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->minBufferMs:I

    iget v6, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->maxBufferMs:I

    iget v7, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    iget v8, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    iget v9, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->targetBufferBytes:I

    iget-boolean v10, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    iget v11, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->backBufferDurationMs:I

    iget-boolean v12, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    invoke-direct/range {v3 .. v12}, Lexpo/modules/video/player/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V

    return-object v3
.end method

.method public setAllocator(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)Lexpo/modules/video/player/DefaultLoadControl$Builder;
    .locals 1

    .line 177
    iget-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 178
    iput-object p1, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    return-object p0
.end method

.method public setBackBuffer(IZ)Lexpo/modules/video/player/DefaultLoadControl$Builder;
    .locals 3

    .line 262
    iget-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 263
    const-string v0, "backBufferDurationMs"

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lexpo/modules/video/player/DefaultLoadControl;->-$$Nest$smassertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 264
    iput p1, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->backBufferDurationMs:I

    .line 265
    iput-boolean p2, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->retainBackBufferFromKeyframe:Z

    return-object p0
.end method

.method public setBufferDurationsMs(IIII)Lexpo/modules/video/player/DefaultLoadControl$Builder;
    .locals 4

    .line 202
    iget-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    .line 203
    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p3, v0, v1, v2}, Lexpo/modules/video/player/DefaultLoadControl;->-$$Nest$smassertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p4, v0, v3, v2}, Lexpo/modules/video/player/DefaultLoadControl;->-$$Nest$smassertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "minBufferMs"

    invoke-static {p1, p3, v0, v1}, Lexpo/modules/video/player/DefaultLoadControl;->-$$Nest$smassertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p1, p4, v0, v3}, Lexpo/modules/video/player/DefaultLoadControl;->-$$Nest$smassertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "maxBufferMs"

    invoke-static {p2, p1, v1, v0}, Lexpo/modules/video/player/DefaultLoadControl;->-$$Nest$smassertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 213
    iput p1, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->minBufferMs:I

    .line 214
    iput p2, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->maxBufferMs:I

    .line 215
    iput p3, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    .line 216
    iput p4, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    return-object p0
.end method

.method public setPrioritizeTimeOverSizeThresholds(Z)Lexpo/modules/video/player/DefaultLoadControl$Builder;
    .locals 1

    .line 246
    iget-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 247
    iput-boolean p1, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    return-object p0
.end method

.method public setTargetBufferBytes(I)Lexpo/modules/video/player/DefaultLoadControl$Builder;
    .locals 1

    .line 231
    iget-boolean v0, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 232
    iput p1, p0, Lexpo/modules/video/player/DefaultLoadControl$Builder;->targetBufferBytes:I

    return-object p0
.end method
