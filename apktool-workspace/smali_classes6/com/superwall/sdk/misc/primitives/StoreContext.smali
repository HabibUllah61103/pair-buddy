.class public interface abstract Lcom/superwall/sdk/misc/primitives/StoreContext;
.super Ljava/lang/Object;
.source "StoreContext.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/primitives/StateStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/misc/primitives/StoreContext$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "Self::",
        "Lcom/superwall/sdk/misc/primitives/StoreContext<",
        "TS;TSelf;>;>",
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/misc/primitives/StateStore<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0016H\u0096@\u00a2\u0006\u0002\u0010\u0018J0\u0010\u0019\u001a\u00020\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00162\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0\u001bH\u0096@\u00a2\u0006\u0002\u0010\u001dJ+\u0010\u001e\u001a\u00020\u00112\u001c\u0010\u001f\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001bH\u0016\u00a2\u0006\u0002\u0010\"R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/primitives/StoreContext;",
        "S",
        "Self",
        "Lcom/superwall/sdk/misc/primitives/StateStore;",
        "actor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "getActor",
        "()Lcom/superwall/sdk/misc/primitives/StateActor;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "update",
        "",
        "reducer",
        "Lcom/superwall/sdk/misc/primitives/Reducer;",
        "effect",
        "action",
        "Lcom/superwall/sdk/misc/primitives/TypedAction;",
        "immediate",
        "(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "immediateUntil",
        "until",
        "Lkotlin/Function1;",
        "",
        "(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sideEffect",
        "what",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;)V"
        }
    .end annotation
.end method

.method public abstract getActor()Lcom/superwall/sdk/misc/primitives/StateActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "TSelf;TS;>;"
        }
    .end annotation
.end method

.method public abstract getScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public abstract getState()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract immediateUntil(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TSelf;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract sideEffect(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;)V"
        }
    .end annotation
.end method
