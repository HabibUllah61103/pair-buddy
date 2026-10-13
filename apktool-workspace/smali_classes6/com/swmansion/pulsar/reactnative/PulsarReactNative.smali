.class public final Lcom/swmansion/pulsar/reactnative/PulsarReactNative;
.super Lcom/swmansion/pulsar/Pulsar;
.source "PulsarReactNative.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/pulsar/reactnative/PulsarReactNative;",
        "Lcom/swmansion/pulsar/Pulsar;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "createPresets",
        "Lcom/swmansion/pulsar/presets/PresetsWrapper;",
        "react-native-pulsar_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/swmansion/pulsar/Pulsar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createPresets()Lcom/swmansion/pulsar/presets/PresetsWrapper;
    .locals 5

    .line 10
    new-instance v0, Lcom/swmansion/pulsar/presets/PresetsWrapper;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/pulsar/Pulsar;

    new-instance v2, Lcom/swmansion/pulsar/reactnative/ReactNativeActivityProvider;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.facebook.react.bridge.ReactApplicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v2, v3}, Lcom/swmansion/pulsar/reactnative/ReactNativeActivityProvider;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    check-cast v2, Lcom/swmansion/pulsar/ActivityProvider;

    invoke-virtual {p0}, Lcom/swmansion/pulsar/reactnative/PulsarReactNative;->getEngine()Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/swmansion/pulsar/presets/PresetsWrapper;-><init>(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/ActivityProvider;Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V

    return-object v0
.end method
