.class public final synthetic Lcom/swmansion/pulsar/presets/PresetsWrapper$$ExternalSyntheticLambda85;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/swmansion/pulsar/Pulsar;

    invoke-static {p1}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->$r8$lambda$31n36AAVveR7dJpDR_2EthCoPI8(Lcom/swmansion/pulsar/Pulsar;)Lcom/swmansion/pulsar/types/Preset;

    move-result-object p1

    return-object p1
.end method
