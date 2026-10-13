.class public final Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;
.super Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;
.source "RealtimeEnvelopeWithDiscretePrimitivesComposer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0003J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;",
        "Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V",
        "playDiscrete",
        "",
        "amplitude",
        "",
        "frequency",
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
.field private final engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    .line 9
    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    return-void
.end method

.method private final createCompositionEffect(FF)Landroid/os/VibrationEffect;
    .locals 3

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 23
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 25
    invoke-direct {p0, p2}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;->selectPrimitive(F)I

    move-result p2

    .line 24
    invoke-virtual {v0, p2, p1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/16 p2, 0xff

    int-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 30
    invoke-static {p1, v2, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    const-wide/16 v0, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final selectPrimitive(F)I
    .locals 1

    const v0, 0x3f28f5c3    # 0.66f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const v0, 0x3ea8f5c3    # 0.33f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x7

    return p1

    :cond_1
    const/16 p1, 0x8

    return p1
.end method


# virtual methods
.method public playDiscrete(FF)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;->createCompositionEffect(FF)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;->engine:Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    invoke-virtual {p2, p1}, Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
