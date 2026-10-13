.class public final synthetic Lcom/swmansion/pulsar/presets/PresetsWrapper$$ExternalSyntheticLambda0;
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

    invoke-static {p1}, Lcom/swmansion/pulsar/presets/PresetsWrapper;->$r8$lambda$osmgwnfXNBxkWm1RYUeqJBifFVs(Lcom/swmansion/pulsar/Pulsar;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/pulsar/types/Preset;

    return-object p1
.end method
