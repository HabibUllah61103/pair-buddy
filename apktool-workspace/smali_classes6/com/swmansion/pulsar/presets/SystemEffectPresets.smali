.class public final Lcom/swmansion/pulsar/presets/SystemEffectPresets;
.super Ljava/lang/Object;
.source "SystemEffectPresets.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemEffectPresets;",
        "",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V",
        "effectClick",
        "",
        "effectDoubleClick",
        "effectTick",
        "effectHeavyClick",
        "playHaptic",
        "preset",
        "",
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
.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    return-void
.end method

.method private final playHaptic(I)Z
    .locals 3

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isEffectSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-static {p1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p1

    const-string v1, "createPredefined(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    const/4 p1, 0x1

    return p1

    .line 43
    :cond_1
    const-string p1, "Pulsar"

    const-string v0, "Incompatible Android version. System primitive preset unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public final effectClick()Z
    .locals 3

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 15
    invoke-direct {p0, v2}, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public final effectDoubleClick()Z
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final effectHeavyClick()Z
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    .line 30
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final effectTick()Z
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 25
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemEffectPresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
