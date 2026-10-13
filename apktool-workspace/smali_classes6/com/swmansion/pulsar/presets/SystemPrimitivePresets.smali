.class public final Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;
.super Ljava/lang/Object;
.source "SystemPrimitivePresets.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;",
        "",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V",
        "primitiveClick",
        "",
        "primitiveThud",
        "primitiveSpin",
        "primitiveQuickRise",
        "primitiveSlowRise",
        "primitiveQuickFall",
        "primitiveTick",
        "primitiveLowTick",
        "playHaptic",
        "primitive",
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

    iput-object p1, p0, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    return-void
.end method

.method private final playHaptic(I)Z
    .locals 3

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isPrimitiveSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    .line 61
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 62
    invoke-virtual {v1, p1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(I)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    const-string v1, "compose(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_1
    const-string p1, "Pulsar"

    const-string v0, "Incompatible Android version. System primitive preset unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public final primitiveClick()Z
    .locals 2

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveLowTick()Z
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    .line 50
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveQuickFall()Z
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    .line 40
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveQuickRise()Z
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    .line 30
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveSlowRise()Z
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    .line 35
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveSpin()Z
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 25
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveThud()Z
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final primitiveTick()Z
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x7

    .line 45
    invoke-direct {p0, v0}, Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;->playHaptic(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
