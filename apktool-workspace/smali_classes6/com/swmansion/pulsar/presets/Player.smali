.class public Lcom/swmansion/pulsar/presets/Player;
.super Ljava/lang/Object;
.source "Player.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0010H\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/swmansion/pulsar/presets/Player;",
        "",
        "haptics",
        "Lcom/swmansion/pulsar/Pulsar;",
        "pattern",
        "Lcom/swmansion/pulsar/types/PatternData;",
        "audioOnly",
        "",
        "<init>",
        "(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V",
        "composer",
        "Lcom/swmansion/pulsar/composers/PatternComposer;",
        "play",
        "",
        "playSystemOrFallback",
        "systemPlay",
        "Lkotlin/Function0;",
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
.field private audioOnly:Z

.field private composer:Lcom/swmansion/pulsar/composers/PatternComposer;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V
    .locals 1

    const-string v0, "haptics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p3, p0, Lcom/swmansion/pulsar/presets/Player;->audioOnly:Z

    .line 12
    invoke-virtual {p1}, Lcom/swmansion/pulsar/Pulsar;->getPatternComposer()Lcom/swmansion/pulsar/composers/PatternComposer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/pulsar/presets/Player;->composer:Lcom/swmansion/pulsar/composers/PatternComposer;

    .line 15
    invoke-virtual {p1, p2}, Lcom/swmansion/pulsar/composers/PatternComposer;->parsePattern(Lcom/swmansion/pulsar/types/PatternData;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/pulsar/presets/Player;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V

    return-void
.end method


# virtual methods
.method public play()V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/swmansion/pulsar/presets/Player;->audioOnly:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/Player;->composer:Lcom/swmansion/pulsar/composers/PatternComposer;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/composers/PatternComposer;->playAudioOnly()V

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/Player;->composer:Lcom/swmansion/pulsar/composers/PatternComposer;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/composers/PatternComposer;->play()V

    return-void
.end method

.method protected final playSystemOrFallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "systemPlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/Player;->composer:Lcom/swmansion/pulsar/composers/PatternComposer;

    invoke-virtual {v0}, Lcom/swmansion/pulsar/composers/PatternComposer;->playAudioOnly()V

    .line 29
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/swmansion/pulsar/presets/Player;->composer:Lcom/swmansion/pulsar/composers/PatternComposer;

    invoke-virtual {p1}, Lcom/swmansion/pulsar/composers/PatternComposer;->play()V

    :cond_0
    return-void
.end method
