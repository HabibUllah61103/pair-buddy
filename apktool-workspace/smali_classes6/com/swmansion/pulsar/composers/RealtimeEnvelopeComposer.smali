.class public Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;
.super Ljava/lang/Object;
.source "RealtimeEnvelopeComposer.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/RealtimeComposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealtimeEnvelopeComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealtimeEnvelopeComposer.kt\ncom/swmansion/pulsar/composers/RealtimeEnvelopeComposer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000fH\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;",
        "Lcom/swmansion/pulsar/types/RealtimeComposable;",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V",
        "vibrationEffectsGenerator",
        "Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;",
        "getVibrationEffectsGenerator",
        "()Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;",
        "setVibrationEffectsGenerator",
        "(Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;)V",
        "isPlaying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "currentAmplitude",
        "",
        "currentFrequency",
        "schedulerJob",
        "Lkotlinx/coroutines/Job;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "scheduleSequentialHaptics",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$Companion;

.field private static final SEGMENT_DURATION_MS:J = 0x64L


# instance fields
.field private volatile currentAmplitude:F

.field private volatile currentFrequency:F

.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

.field private final isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private schedulerJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->Companion:Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    .line 20
    new-instance v0, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    invoke-direct {v0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    iput-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getCurrentAmplitude$p(Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->currentAmplitude:F

    return p0
.end method

.method public static final synthetic access$getCurrentFrequency$p(Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->currentFrequency:F

    return p0
.end method

.method public static final synthetic access$getEngine$p(Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;)Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    return-object p0
.end method

.method public static final synthetic access$isPlaying$p(Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private final scheduleSequentialHaptics()V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->schedulerJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$scheduleSequentialHaptics$1;

    invoke-direct {v0, p0, v1}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer$scheduleSequentialHaptics$1;-><init>(Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->schedulerJob:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getVibrationEffectsGenerator()Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public playDiscrete(FF)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    .line 52
    new-instance v1, Lcom/swmansion/pulsar/types/ControlPoint;

    const-wide/16 v2, 0x64

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/swmansion/pulsar/types/ControlPoint;-><init>(FFJ)V

    .line 51
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;->convertToVibrationEffect(Ljava/util/List;)Landroid/os/VibrationEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p2, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {p2, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public set(FF)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lcom/swmansion/pulsar/types/RealtimeComposable$DefaultImpls;->set(Lcom/swmansion/pulsar/types/RealtimeComposable;FF)V

    return-void
.end method

.method public set(FFZ)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->start()V

    .line 41
    iget-object p3, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-static {p1, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->currentAmplitude:F

    .line 44
    invoke-static {p2, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->currentFrequency:F

    return-void
.end method

.method public final setVibrationEffectsGenerator(Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->vibrationEffectsGenerator:Lcom/swmansion/pulsar/haptics/VibrationEffectsGenerator;

    return-void
.end method

.method public start()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->scheduleSequentialHaptics()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->schedulerJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->stop()V

    return-void
.end method
