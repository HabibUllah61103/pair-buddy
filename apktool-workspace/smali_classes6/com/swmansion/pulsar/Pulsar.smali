.class public Lcom/swmansion/pulsar/Pulsar;
.super Ljava/lang/Object;
.source "Pulsar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u001d\u001a\u00020\u0010H\u0014J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010!\u001a\u00020\u001c2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0016J\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020$J\u0014\u0010(\u001a\u00020&2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*J\u000e\u0010,\u001a\u00020&2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020&2\u0006\u0010-\u001a\u00020.J\u000e\u00100\u001a\u00020&2\u0006\u0010-\u001a\u00020.J\u0006\u00101\u001a\u00020&J\u0006\u00102\u001a\u00020&J\u000e\u00103\u001a\u00020&2\u0006\u0010-\u001a\u00020.R\u001a\u0010\u0002\u001a\u00020\u0003X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u0014\u0010\t\u001a\u00020\nX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/swmansion/pulsar/Pulsar;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "getEngine",
        "()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "audioSimulator",
        "Lcom/swmansion/pulsar/audio/AudioSimulator;",
        "_presets",
        "Lcom/swmansion/pulsar/presets/PresetsWrapper;",
        "get_presets",
        "()Lcom/swmansion/pulsar/presets/PresetsWrapper;",
        "set_presets",
        "(Lcom/swmansion/pulsar/presets/PresetsWrapper;)V",
        "realtimeComposerStrategy",
        "Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;",
        "getRealtimeComposerStrategy",
        "()Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;",
        "setRealtimeComposerStrategy",
        "(Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)V",
        "realtimeComposer",
        "Lcom/swmansion/pulsar/composers/RealtimeComposer;",
        "createPresets",
        "getPresets",
        "getPatternComposer",
        "Lcom/swmansion/pulsar/composers/PatternComposer;",
        "getRealtimeComposer",
        "strategy",
        "hapticSupport",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "forceHapticsSupportLevel",
        "",
        "mode",
        "preloadPresets",
        "presetNames",
        "",
        "",
        "enableHaptics",
        "state",
        "",
        "enableSound",
        "enableCache",
        "clearCache",
        "stopHaptics",
        "enableImpulseCompositionMode",
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
.field private _presets:Lcom/swmansion/pulsar/presets/PresetsWrapper;

.field private final audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

.field private context:Landroid/content/Context;

.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

.field private realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

.field private realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->context:Landroid/content/Context;

    .line 14
    new-instance p1, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    .line 15
    new-instance p1, Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/swmansion/pulsar/audio/AudioSimulator;-><init>(Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    .line 18
    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object p1

    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->STANDARD_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Lcom/swmansion/pulsar/types/CompatibilityMode;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 19
    sget-object p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ENVELOPE_WITH_DISCRETE_PRIMITIVES:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object p1

    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Lcom/swmansion/pulsar/types/CompatibilityMode;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 21
    sget-object p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->PRIMITIVE_COMPLEX:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    goto :goto_0

    .line 23
    :cond_1
    sget-object p1, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->PRIMITIVE_TICK:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    return-void
.end method

.method public static synthetic getRealtimeComposer$default(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;ILjava/lang/Object;)Lcom/swmansion/pulsar/composers/RealtimeComposer;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/pulsar/Pulsar;->getRealtimeComposer(Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)Lcom/swmansion/pulsar/composers/RealtimeComposer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getRealtimeComposer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearCache()V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->getPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->resetCache()V

    return-void
.end method

.method protected createPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;
    .locals 4

    .line 28
    new-instance v0, Lcom/swmansion/pulsar/presets/PresetsWrapper;

    new-instance v1, Lcom/swmansion/pulsar/ActivityProvider;

    iget-object v2, p0, Lcom/swmansion/pulsar/Pulsar;->context:Landroid/content/Context;

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/swmansion/pulsar/ActivityProvider;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-direct {v0, p0, v1, v2}, Lcom/swmansion/pulsar/presets/PresetsWrapper;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/ActivityProvider;Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    return-object v0
.end method

.method public final enableCache(Z)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->getPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->enableCache(Z)V

    return-void
.end method

.method public final enableHaptics(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->enableHaptics(Z)V

    return-void
.end method

.method public final enableImpulseCompositionMode(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->enableImpulseCompositionMode(Z)V

    return-void
.end method

.method public final enableSound(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->enableSound(Z)V

    return-void
.end method

.method public final forceHapticsSupportLevel(Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->simulateCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    .line 60
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/audio/AudioSimulator;->setCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getEngine()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    return-object v0
.end method

.method public final getPatternComposer()Lcom/swmansion/pulsar/composers/PatternComposer;
    .locals 3

    .line 38
    new-instance v0, Lcom/swmansion/pulsar/composers/PatternComposer;

    iget-object v1, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    iget-object v2, p0, Lcom/swmansion/pulsar/Pulsar;->audioSimulator:Lcom/swmansion/pulsar/audio/AudioSimulator;

    invoke-direct {v0, v1, v2}, Lcom/swmansion/pulsar/composers/PatternComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/audio/AudioSimulator;)V

    return-object v0
.end method

.method public final getPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->_presets:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->createPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->_presets:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->_presets:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getRealtimeComposer(Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)Lcom/swmansion/pulsar/composers/RealtimeComposer;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 44
    :goto_0
    new-instance v1, Lcom/swmansion/pulsar/composers/RealtimeComposer;

    iget-object v2, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/swmansion/pulsar/composers/RealtimeComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    iput-object v1, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    .line 45
    iput-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    :cond_1
    if-eqz p1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    if-eq p1, v0, :cond_2

    .line 48
    new-instance v0, Lcom/swmansion/pulsar/composers/RealtimeComposer;

    iget-object v1, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/swmansion/pulsar/composers/RealtimeComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    iput-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    .line 49
    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposer:Lcom/swmansion/pulsar/composers/RealtimeComposer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getRealtimeComposerStrategy()Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    return-object v0
.end method

.method protected final get_presets()Lcom/swmansion/pulsar/presets/PresetsWrapper;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->_presets:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    return-object v0
.end method

.method public final hapticSupport()Lcom/swmansion/pulsar/types/CompatibilityMode;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->getRealCompatibilityMode()Lcom/swmansion/pulsar/types/CompatibilityMode;

    move-result-object v0

    return-object v0
.end method

.method public final preloadPresets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "presetNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/swmansion/pulsar/Pulsar;->getPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->preloadPresetByNames(Ljava/util/List;)V

    return-void
.end method

.method protected final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->context:Landroid/content/Context;

    return-void
.end method

.method public final setRealtimeComposerStrategy(Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->realtimeComposerStrategy:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    return-void
.end method

.method protected final set_presets(Lcom/swmansion/pulsar/presets/PresetsWrapper;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/swmansion/pulsar/Pulsar;->_presets:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    return-void
.end method

.method public final stopHaptics()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/swmansion/pulsar/Pulsar;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->stop()V

    return-void
.end method
