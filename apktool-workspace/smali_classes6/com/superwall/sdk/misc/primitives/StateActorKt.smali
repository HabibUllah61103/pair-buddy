.class public final Lcom/superwall/sdk/misc/primitives/StateActorKt;
.super Ljava/lang/Object;
.source "StateActor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a3\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "stateActor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "Context",
        "State",
        "initial",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)Lcom/superwall/sdk/misc/primitives/StateActor;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final stateActor(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)Lcom/superwall/sdk/misc/primitives/StateActor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Context:",
            "Ljava/lang/Object;",
            "State:",
            "Ljava/lang/Object;",
            ">(TState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "TContext;TState;>;"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/superwall/sdk/misc/primitives/StateActor;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
