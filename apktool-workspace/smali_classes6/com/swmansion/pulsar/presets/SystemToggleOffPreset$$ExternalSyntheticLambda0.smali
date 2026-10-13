.class public final synthetic Lcom/swmansion/pulsar/presets/SystemToggleOffPreset$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/swmansion/pulsar/presets/SystemToggleOffPreset;


# direct methods
.method public synthetic constructor <init>(Lcom/swmansion/pulsar/presets/SystemToggleOffPreset;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/pulsar/presets/SystemToggleOffPreset$$ExternalSyntheticLambda0;->f$0:Lcom/swmansion/pulsar/presets/SystemToggleOffPreset;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/swmansion/pulsar/presets/SystemToggleOffPreset$$ExternalSyntheticLambda0;->f$0:Lcom/swmansion/pulsar/presets/SystemToggleOffPreset;

    invoke-static {v0}, Lcom/swmansion/pulsar/presets/SystemToggleOffPreset;->$r8$lambda$J9Cta8Y4qCwucyNjMxAbaz0_JH0(Lcom/swmansion/pulsar/presets/SystemToggleOffPreset;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
