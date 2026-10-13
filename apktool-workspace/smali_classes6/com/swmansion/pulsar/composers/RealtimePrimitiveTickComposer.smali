.class public final Lcom/swmansion/pulsar/composers/RealtimePrimitiveTickComposer;
.super Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;
.source "RealtimePrimitiveTickComposer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0015\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/pulsar/composers/RealtimePrimitiveTickComposer;",
        "Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;",
        "engine",
        "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;",
        "compatibilityMode",
        "Lcom/swmansion/pulsar/types/CompatibilityMode;",
        "<init>",
        "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V",
        "selectPrimitive",
        "",
        "value",
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


# direct methods
.method public constructor <init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compatibilityMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;-><init>(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V

    return-void
.end method


# virtual methods
.method protected selectPrimitive(F)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
