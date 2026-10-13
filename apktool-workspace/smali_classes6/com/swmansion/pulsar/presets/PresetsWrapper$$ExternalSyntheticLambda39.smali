.class public final synthetic Lcom/swmansion/pulsar/presets/PresetsWrapper$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/swmansion/pulsar/presets/PresetsWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/swmansion/pulsar/presets/PresetsWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/presets/PresetsWrapper$$ExternalSyntheticLambda39;->f$0:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/PresetsWrapper$$ExternalSyntheticLambda39;->f$0:Lcom/swmansion/pulsar/presets/PresetsWrapper;

    check-cast p1, Lcom/swmansion/pulsar/Pulsar;

    invoke-static {v0, p1}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->$r8$lambda$SkHLEVr6rDgsyZxu8-qa_tUQDk8(Lcom/swmansion/pulsar/presets/PresetsWrapper;Lcom/swmansion/pulsar/Pulsar;)Lcom/swmansion/pulsar/types/Preset;

    move-result-object p1

    return-object p1
.end method
