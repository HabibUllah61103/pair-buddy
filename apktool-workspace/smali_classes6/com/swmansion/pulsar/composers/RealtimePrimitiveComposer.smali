.class public Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;
.super Ljava/lang/Object;
.source "RealtimePrimitiveComposer.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/RealtimeComposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002J\u0018\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0005J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u000eH\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;",
        "Lcom/swmansion/pulsar/types/RealtimeComposable;",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "compatibilityMode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V",
        "minIntervalMs",
        "",
        "maxIntervalMs",
        "isPlaying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "currentAmplitude",
        "",
        "currentFrequency",
        "currentIntervalMs",
        "handler",
        "Landroid/os/Handler;",
        "loopRunnable",
        "Ljava/lang/Runnable;",
        "start",
        "",
        "set",
        "amplitude",
        "frequency",
        "startIfNeeded",
        "",
        "playDiscrete",
        "stop",
        "isActive",
        "loop",
        "createCompositionEffect",
        "Landroid/os/VibrationEffect;",
        "selectPrimitive",
        "",
        "value",
        "Pulsar_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile currentAmplitude:F

.field private volatile currentFrequency:F

.field private volatile currentIntervalMs:J

.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

.field private final handler:Landroid/os/Handler;

.field private final isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final loopRunnable:Ljava/lang/Runnable;

.field private maxIntervalMs:J

.field private minIntervalMs:J


# direct methods
.method public static synthetic $r8$lambda$Uf7M5vZhxr6W_IEoqEMG1-LD2J4(Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->loopRunnable$lambda$0(Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;)V

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 2

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    const-wide/16 v0, 0xa

    .line 17
    iput-wide v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->minIntervalMs:J

    const-wide/16 v0, 0x64

    .line 18
    iput-wide v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->maxIntervalMs:J

    .line 21
    sget-object p1, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    if-ne p2, p1, :cond_0

    const-wide/16 p1, 0x3c

    .line 22
    iput-wide p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->minIntervalMs:J

    const-wide/16 p1, 0xc8

    .line 23
    iput-wide p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->maxIntervalMs:J

    .line 27
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 p1, 0x32

    .line 30
    iput-wide p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentIntervalMs:J

    .line 32
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->handler:Landroid/os/Handler;

    .line 33
    new-instance p1, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;)V

    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->loopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final loop()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentAmplitude:F

    iget v1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentFrequency:F

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->createCompositionEffect(FF)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v1, v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 75
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->loopRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentIntervalMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final loopRunnable$lambda$0(Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->loop()V

    return-void
.end method


# virtual methods
.method protected final createCompositionEffect(FF)Landroid/os/VibrationEffect;
    .locals 3

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 81
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 83
    invoke-virtual {p0, p2}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->selectPrimitive(F)I

    move-result p2

    .line 82
    invoke-virtual {v0, p2, p1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/16 p2, 0xff

    int-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 88
    invoke-static {p1, v2, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    const-wide/16 v0, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public isActive()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public playDiscrete(FF)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->createCompositionEffect(FF)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {p2, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method protected selectPrimitive(F)I
    .locals 0

    const/4 p1, 0x7

    return p1
.end method

.method public set(FF)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/swmansion/pulsar/types/RealtimeComposable$DefaultImpls;->set(Lcom/swmansion/pulsar/types/RealtimeComposable;FF)V

    return-void
.end method

.method public set(FFZ)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->start()V

    .line 44
    iget-object p3, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    invoke-static {p1, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentAmplitude:F

    .line 47
    invoke-static {p2, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentFrequency:F

    .line 48
    iget-wide v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->minIntervalMs:J

    long-to-float p1, v0

    const/4 p3, 0x1

    int-to-float p3, p3

    sub-float/2addr p3, p2

    iget-wide v2, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->maxIntervalMs:J

    sub-long/2addr v2, v0

    long-to-float p2, v2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->currentIntervalMs:J

    return-void
.end method

.method public start()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->loop()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->loopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->stop()V

    return-void
.end method
