.class public final Lcom/swmansion/pulsar/types/OscillatorConfig;
.super Ljava/lang/Object;
.source "Audio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/swmansion/pulsar/types/OscillatorConfig;",
        "",
        "frequency",
        "Lcom/swmansion/pulsar/types/FrequencyConfig;",
        "envelope",
        "Lcom/swmansion/pulsar/types/EnvelopeConfig;",
        "waveform",
        "Lcom/swmansion/pulsar/types/WaveformType;",
        "<init>",
        "(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V",
        "getFrequency",
        "()Lcom/swmansion/pulsar/types/FrequencyConfig;",
        "getEnvelope",
        "()Lcom/swmansion/pulsar/types/EnvelopeConfig;",
        "getWaveform",
        "()Lcom/swmansion/pulsar/types/WaveformType;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

.field private final frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

.field private final waveform:Lcom/swmansion/pulsar/types/WaveformType;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V
    .locals 1

    const-string v0, "frequency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "envelope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waveform"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    .line 12
    iput-object p2, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    .line 13
    iput-object p3, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/swmansion/pulsar/types/OscillatorConfig;Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;ILjava/lang/Object;)Lcom/swmansion/pulsar/types/OscillatorConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/swmansion/pulsar/types/OscillatorConfig;->copy(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)Lcom/swmansion/pulsar/types/OscillatorConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/swmansion/pulsar/types/FrequencyConfig;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    return-object v0
.end method

.method public final component2()Lcom/swmansion/pulsar/types/EnvelopeConfig;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    return-object v0
.end method

.method public final component3()Lcom/swmansion/pulsar/types/WaveformType;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    return-object v0
.end method

.method public final copy(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)Lcom/swmansion/pulsar/types/OscillatorConfig;
    .locals 1

    const-string v0, "frequency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "envelope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waveform"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/swmansion/pulsar/types/OscillatorConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/swmansion/pulsar/types/OscillatorConfig;-><init>(Lcom/swmansion/pulsar/types/FrequencyConfig;Lcom/swmansion/pulsar/types/EnvelopeConfig;Lcom/swmansion/pulsar/types/WaveformType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/swmansion/pulsar/types/OscillatorConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/swmansion/pulsar/types/OscillatorConfig;

    iget-object v1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    iget-object v3, p1, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    iget-object v3, p1, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    iget-object p1, p1, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnvelope()Lcom/swmansion/pulsar/types/EnvelopeConfig;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    return-object v0
.end method

.method public final getFrequency()Lcom/swmansion/pulsar/types/FrequencyConfig;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    return-object v0
.end method

.method public final getWaveform()Lcom/swmansion/pulsar/types/WaveformType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/types/FrequencyConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/EnvelopeConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    invoke-virtual {v1}, Lcom/swmansion/pulsar/types/WaveformType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->frequency:Lcom/swmansion/pulsar/types/FrequencyConfig;

    iget-object v1, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->envelope:Lcom/swmansion/pulsar/types/EnvelopeConfig;

    iget-object v2, p0, Lcom/swmansion/pulsar/types/OscillatorConfig;->waveform:Lcom/swmansion/pulsar/types/WaveformType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OscillatorConfig(frequency="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", envelope="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waveform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
