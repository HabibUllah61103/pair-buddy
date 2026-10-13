.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuperwallExpoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$22$1"
    f = "SuperwallExpoModule.kt"
    i = {}
    l = {
        0x1d7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placement:Ljava/lang/String;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field label:I

.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lexpo/modules/superwallexpo/SuperwallExpoModule;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/superwallexpo/SuperwallExpoModule;",
            "Lexpo/modules/kotlin/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$placement:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$params:Ljava/util/Map;

    iput-object p3, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    iput-object p4, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$placement:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$params:Ljava/util/Map;

    iget-object v3, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    iget-object v4, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$promise:Lexpo/modules/kotlin/Promise;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;-><init>(Ljava/lang/String;Ljava/util/Map;Lexpo/modules/superwallexpo/SuperwallExpoModule;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 470
    iget v2, v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 471
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    iget-object v4, v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$placement:Ljava/lang/String;

    iget-object v5, v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$params:Ljava/util/Map;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->label:I

    invoke-static {v2, v4, v5, v6}, Lcom/superwall/sdk/paywall/presentation/get_presentation_result/PublicGetPresentationResultKt;->getPresentationResult(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v2

    .line 472
    :goto_0
    iget-object v2, v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    iget-object v3, v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;

    .line 473
    invoke-virtual {v2}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    new-instance v2, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1$1$1;

    invoke-direct {v2, v3, v1, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1$1$1;-><init>(Lexpo/modules/kotlin/Promise;Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;Lkotlin/coroutines/Continuation;)V

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 477
    :cond_3
    invoke-virtual {v2}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v12

    new-instance v1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1$2$1;

    invoke-direct {v1, v3, v4, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$22$1$2$1;-><init>(Lexpo/modules/kotlin/Promise;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 481
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
