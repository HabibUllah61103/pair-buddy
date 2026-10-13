.class final Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallPreload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/PaywallPreload;->preloadAllPaywalls(Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallPreload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallPreload.kt\ncom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n774#2:243\n865#2:244\n1755#2,3:245\n866#2:248\n*S KotlinDebug\n*F\n+ 1 PaywallPreload.kt\ncom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2\n*L\n84#1:243\n84#1:244\n85#1:245,3\n84#1:248\n*E\n"
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
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.config.PaywallPreload$preloadAllPaywalls$2"
    f = "PaywallPreload.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x47,
        0x59,
        0x5f,
        0x63,
        0x69,
        0x70
    }
    m = "invokeSuspend"
    n = {
        "expressionEvaluator",
        "triggers",
        "confirmedAssignments",
        "prioritizedTriggers",
        "expressionEvaluator",
        "triggers",
        "confirmedAssignments",
        "prioritizedTriggers",
        "expressionEvaluator",
        "confirmedAssignments",
        "remainingTriggers"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $config:Lcom/superwall/sdk/models/config/Config;

.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/config/PaywallPreload;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/config/PaywallPreload;Landroid/content/Context;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/PaywallPreload;",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    iput-object p2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$config:Lcom/superwall/sdk/models/config/Config;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;

    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;-><init>(Lcom/superwall/sdk/config/PaywallPreload;Landroid/content/Context;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-virtual {p1}, Lcom/superwall/sdk/config/PaywallPreload;->getFactory()Lcom/superwall/sdk/config/PaywallPreload$Factory;

    move-result-object p1

    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$context:Landroid/content/Context;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    invoke-interface {p1, v1, v3}, Lcom/superwall/sdk/config/PaywallPreload$Factory;->provideRuleEvaluator(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_7

    .line 70
    :cond_0
    :goto_0
    move-object v7, p1

    check-cast v7, Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;

    .line 73
    sget-object p1, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    .line 74
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object v1

    .line 75
    iget-object v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/Config;->getPreloadingDisabled()Lcom/superwall/sdk/models/config/PreloadingDisabled;

    move-result-object v3

    .line 73
    invoke-virtual {p1, v1, v3}, Lcom/superwall/sdk/config/ConfigLogic;->filterTriggers(Ljava/util/Set;Lcom/superwall/sdk/models/config/PreloadingDisabled;)Ljava/util/Set;

    move-result-object p1

    .line 77
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/PaywallPreload;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/storage/LocalStorage;->getConfirmedAssignments()Ljava/util/Map;

    move-result-object v5

    .line 81
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->$config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/Config;->getPrioritizedCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 84
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 244
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 85
    invoke-virtual {v8}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 245
    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 85
    invoke-virtual {v9}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 244
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_4
    check-cast v4, Ljava/util/List;

    .line 243
    check-cast v4, Ljava/lang/Iterable;

    .line 86
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 87
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 89
    sget-object v3, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    .line 92
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/PaywallPreload;->getAssignments()Lcom/superwall/sdk/config/Assignments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/Assignments;->getUnconfirmedAssignments()Ljava/util/Map;

    move-result-object v6

    .line 93
    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 89
    iput-object v7, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$3:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    invoke-virtual/range {v3 .. v8}, Lcom/superwall/sdk/config/ConfigLogic;->getAllActiveTreatmentPaywallIds(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto/16 :goto_7

    :cond_5
    move-object v3, v4

    move-object v4, p1

    move-object p1, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    .line 70
    :goto_2
    check-cast p1, Ljava/util/Set;

    .line 95
    iget-object v6, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$3:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    invoke-static {v6, p1, v7}, Lcom/superwall/sdk/config/PaywallPreload;->access$preloadPaywalls(Lcom/superwall/sdk/config/PaywallPreload;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_7

    .line 96
    :cond_6
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 99
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    iput-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$3:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_7

    :cond_7
    move-object v4, v5

    :goto_4
    move-object v6, v1

    move-object v7, v3

    move-object v9, v4

    goto :goto_5

    :cond_8
    move-object v6, p1

    move-object v9, v7

    move-object v7, v5

    .line 105
    :goto_5
    sget-object v5, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    .line 108
    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-virtual {p1}, Lcom/superwall/sdk/config/PaywallPreload;->getAssignments()Lcom/superwall/sdk/config/Assignments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/Assignments;->getUnconfirmedAssignments()Ljava/util/Map;

    move-result-object v8

    .line 109
    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    .line 105
    iput-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->L$2:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    invoke-virtual/range {v5 .. v10}, Lcom/superwall/sdk/config/ConfigLogic;->getAllActiveTreatmentPaywallIds(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_7

    .line 70
    :cond_9
    :goto_6
    check-cast p1, Ljava/util/Set;

    .line 112
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x6

    iput v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->label:I

    invoke-static {v1, p1, v3}, Lcom/superwall/sdk/config/PaywallPreload;->access$preloadPaywalls(Lcom/superwall/sdk/config/PaywallPreload;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    :goto_7
    return-object v0

    .line 113
    :cond_a
    :goto_8
    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-static {p1, v2}, Lcom/superwall/sdk/config/PaywallPreload;->access$setCurrentPreloadingTask$p(Lcom/superwall/sdk/config/PaywallPreload;Lkotlinx/coroutines/Job;)V

    .line 114
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
