.class public final Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;
.super Ljava/lang/Object;
.source "HapticEngineWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u000bJ\u0006\u0010\u001b\u001a\u00020\u0016J\u0006\u0010\u001c\u001a\u00020\u0014J\u0006\u0010\u001d\u001a\u00020\u000bJ\u000e\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u000bJ\u0006\u0010$\u001a\u00020\u000bJ\u0006\u0010%\u001a\u00020&J\u0008\u0010\'\u001a\u0004\u0018\u00010(J\u000e\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u000bJ\u0006\u0010.\u001a\u00020+R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "vibrationService",
        "Landroid/os/Vibrator;",
        "kotlin.jvm.PlatformType",
        "Landroid/os/Vibrator;",
        "hasVibrationPermission",
        "",
        "getHasVibrationPermission",
        "()Z",
        "hasVibrationPermission$delegate",
        "Lkotlin/Lazy;",
        "vibrator",
        "initialized",
        "isHapticsEnabled",
        "hapticBuilder",
        "Lcom/swmansion/pulsar/haptics/HapticBuilder;",
        "vibrate",
        "",
        "vibrationEffect",
        "Landroid/os/VibrationEffect;",
        "enableHaptics",
        "state",
        "stop",
        "getHapticBuilder",
        "isAmplitudeSupported",
        "isEffectSupported",
        "effect",
        "",
        "isPrimitiveSupported",
        "primitive",
        "isEnvelopeSupported",
        "isFrequencyProfileSupported",
        "getMinControlPointDurationMillis",
        "",
        "getFrequencyProfile",
        "Landroid/os/vibrator/VibratorFrequencyProfile;",
        "simulateCompatibilityMode",
        "mode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "enableImpulseCompositionMode",
        "enabled",
        "getRealCompatibilityMode",
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
.field private static final Companion:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$Companion;

.field public static final TAG:Ljava/lang/String; = "Pulsar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final hapticBuilder:Lcom/swmansion/pulsar/haptics/HapticBuilder;

.field private final hasVibrationPermission$delegate:Lkotlin/Lazy;

.field private initialized:Z

.field private isHapticsEnabled:Z

.field private final vibrationService:Landroid/os/Vibrator;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$VW5oqvUzNzb8irE8dNVnlev2anA(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)Z
    .locals 0

    invoke-static {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hasVibrationPermission_delegate$lambda$0(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->Companion:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->context:Landroid/content/Context;

    .line 16
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    .line 17
    new-instance v0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hasVibrationPermission$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isHapticsEnabled:Z

    .line 24
    new-instance v1, Lcom/swmansion/pulsar/haptics/HapticBuilder;

    invoke-direct {v1, p0}, Lcom/swmansion/pulsar/haptics/HapticBuilder;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    iput-object v1, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hapticBuilder:Lcom/swmansion/pulsar/haptics/HapticBuilder;

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    .line 29
    const-class v1, Landroid/os/Vibrator;

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-ne p1, v0, :cond_0

    .line 31
    iput-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->initialized:Z

    :cond_0
    return-void

    .line 36
    :cond_1
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/os/Vibrator;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-ne p1, v0, :cond_3

    .line 38
    iput-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->initialized:Z

    :cond_3
    return-void
.end method

.method private final getHasVibrationPermission()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hasVibrationPermission$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final hasVibrationPermission_delegate$lambda$0(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)Z
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->context:Landroid/content/Context;

    const-string v0, "android.permission.VIBRATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final enableHaptics(Z)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isHapticsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 64
    iput-boolean p1, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isHapticsEnabled:Z

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->stop()V

    :cond_0
    return-void
.end method

.method public final enableImpulseCompositionMode(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hapticBuilder:Lcom/swmansion/pulsar/haptics/HapticBuilder;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticBuilder;->enableImpulseCompositionMode(Z)V

    return-void
.end method

.method public final getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;
    .locals 3

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public final getHapticBuilder()Lcom/swmansion/pulsar/haptics/HapticBuilder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hapticBuilder:Lcom/swmansion/pulsar/haptics/HapticBuilder;

    return-object v0
.end method

.method public final getMinControlPointDurationMillis()J
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isEnvelopeSupported()Z

    move-result v0

    const-wide/16 v1, 0xf

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->getEnvelopeEffectInfo()Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->getMinControlPointDurationMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public final getRealCompatibilityMode()Lcom/swmansion/pulsar/types/CompatibilityMode;
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isFrequencyProfileSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->ADVANCED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isAmplitudeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->STANDARD_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-object v0

    .line 143
    :cond_1
    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-object v0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isAmplitudeSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->STANDARD_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-object v0

    .line 149
    :cond_3
    sget-object v0, Lcom/swmansion/pulsar/types/CompatibilityMode;->LIMITED_SUPPORT:Lcom/swmansion/pulsar/types/CompatibilityMode;

    return-object v0
.end method

.method public final isAmplitudeSupported()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEffectSupported(I)Z
    .locals 3

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->areAllEffectsSupported([I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isEnvelopeSupported()Z
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->areEnvelopeEffectsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isFrequencyProfileSupported()Z
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPrimitiveSupported(I)Z
    .locals 2

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result p1

    return p1
.end method

.method public final simulateCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->hapticBuilder:Lcom/swmansion/pulsar/haptics/HapticBuilder;

    invoke-virtual {v0, p1}, Lcom/swmansion/pulsar/haptics/HapticBuilder;->simulateCompatibilityMode(Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final vibrate(Landroid/os/VibrationEffect;)V
    .locals 2

    const-string v0, "vibrationEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->isHapticsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->getHasVibrationPermission()Z

    move-result v0

    const-string v1, "Pulsar"

    if-nez v0, :cond_1

    .line 48
    const-string p1, "Skipping vibration because android.permission.VIBRATE is not granted"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrationService:Landroid/os/Vibrator;

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    const-string v0, "Skipping vibration because the app cannot use the vibrator"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    return-void
.end method
