.class public final Lcom/swmansion/pulsar/composers/RealtimeComposer;
.super Ljava/lang/Object;
.source "RealtimeComposer.kt"

# interfaces
.implements Lcom/swmansion/pulsar/types/RealtimeComposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/pulsar/composers/RealtimeComposer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016R\u001a\u0010\n\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/swmansion/pulsar/composers/RealtimeComposer;",
        "Lcom/swmansion/pulsar/types/RealtimeComposable;",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "strategy",
        "Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;",
        "compatibilityMode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;)V",
        "delegate",
        "getDelegate",
        "()Lcom/swmansion/pulsar/types/RealtimeComposable;",
        "setDelegate",
        "(Lcom/swmansion/pulsar/types/RealtimeComposable;)V",
        "start",
        "",
        "set",
        "amplitude",
        "",
        "frequency",
        "startIfNeeded",
        "",
        "playDiscrete",
        "stop",
        "isActive",
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
.field private delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/swmansion/pulsar/composers/RealtimeComposer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 18
    new-instance p2, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComplexComposer;

    invoke-direct {p2, p1, p3}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComplexComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    check-cast p2, Lcom/swmansion/pulsar/types/RealtimeComposable;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 17
    :cond_1
    new-instance p2, Lcom/swmansion/pulsar/composers/RealtimePrimitiveTickComposer;

    invoke-direct {p2, p1, p3}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveTickComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    check-cast p2, Lcom/swmansion/pulsar/types/RealtimeComposable;

    goto :goto_0

    .line 16
    :cond_2
    new-instance p2, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;

    invoke-direct {p2, p1}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeWithDiscretePrimitivesComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    check-cast p2, Lcom/swmansion/pulsar/types/RealtimeComposable;

    goto :goto_0

    .line 15
    :cond_3
    new-instance p2, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;

    invoke-direct {p2, p1}, Lcom/swmansion/pulsar/composers/RealtimeEnvelopeComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    check-cast p2, Lcom/swmansion/pulsar/types/RealtimeComposable;

    .line 14
    :goto_0
    iput-object p2, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 10
    sget-object p2, Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;->ENVELOPE_WITH_DISCRETE_PRIMITIVES:Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/pulsar/composers/RealtimeComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    return-void
.end method


# virtual methods
.method public final getDelegate()Lcom/swmansion/pulsar/types/RealtimeComposable;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    invoke-interface {v0}, Lcom/swmansion/pulsar/types/RealtimeComposable;->isActive()Z

    move-result v0

    return v0
.end method

.method public playDiscrete(FF)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    invoke-interface {v0, p1, p2}, Lcom/swmansion/pulsar/types/RealtimeComposable;->playDiscrete(FF)V

    return-void
.end method

.method public set(FF)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lcom/swmansion/pulsar/types/RealtimeComposable$DefaultImpls;->set(Lcom/swmansion/pulsar/types/RealtimeComposable;FF)V

    return-void
.end method

.method public set(FFZ)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    invoke-interface {v0, p1, p2, p3}, Lcom/swmansion/pulsar/types/RealtimeComposable;->set(FFZ)V

    return-void
.end method

.method public final setDelegate(Lcom/swmansion/pulsar/types/RealtimeComposable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    return-void
.end method

.method public start()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    invoke-interface {v0}, Lcom/swmansion/pulsar/types/RealtimeComposable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/swmansion/pulsar/composers/RealtimeComposer;->delegate:Lcom/swmansion/pulsar/types/RealtimeComposable;

    invoke-interface {v0}, Lcom/swmansion/pulsar/types/RealtimeComposable;->stop()V

    return-void
.end method
