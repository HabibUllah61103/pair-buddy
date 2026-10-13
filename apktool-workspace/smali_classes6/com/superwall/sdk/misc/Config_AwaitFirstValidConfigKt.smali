.class public final Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt;
.super Ljava/lang/Object;
.source "Config+AwaitFirstValidConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfig+AwaitFirstValidConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Config+AwaitFirstValidConfig.kt\ncom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,17:1\n32#2:18\n17#2:19\n19#2:23\n46#3:20\n51#3:22\n105#4:21\n*S KotlinDebug\n*F\n+ 1 Config+AwaitFirstValidConfig.kt\ncom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt\n*L\n11#1:18\n11#1:19\n11#1:23\n11#1:20\n11#1:22\n11#1:21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0080@\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "awaitFirstValidConfig",
        "Lcom/superwall/sdk/models/config/Config;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/superwall/sdk/config/models/ConfigState;",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final awaitFirstValidConfig(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/models/config/Config;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;

    iget v1, v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget v2, v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    new-instance p1, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$$inlined$filterIsInstance$1;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 12
    iput v3, v0, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt$awaitFirstValidConfig$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_1
    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Retrieved;

    .line 13
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/ConfigState$Retrieved;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object p0

    return-object p0
.end method
