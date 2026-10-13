.class final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuperscriptEvaluator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->evaluateExpression(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperscriptEvaluator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperscriptEvaluator.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,233:1\n1187#2,2:234\n1261#2,4:236\n1187#2,2:240\n1261#2,4:242\n113#3:246\n147#4:247\n*S KotlinDebug\n*F\n+ 1 SuperscriptEvaluator.kt\ncom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2\n*L\n75#1:234,2\n75#1:236,4\n79#1:240,2\n79#1:242,4\n84#1:246\n87#1:247\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
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
    c = "com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator$evaluateExpression$2"
    f = "SuperscriptEvaluator.kt"
    i = {}
    l = {
        0x42,
        0x68
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $eventData:Lcom/superwall/sdk/models/events/EventData;

.field final synthetic $rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/TriggerRule;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/models/triggers/TriggerRule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

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

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/triggers/TriggerRule;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->access$getFactory$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lcom/superwall/sdk/dependencies/RuleAttributesFactory;

    move-result-object p1

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getComputedPropertyRequests()Ljava/util/List;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->label:I

    invoke-interface {p1, v1, v4, v5}, Lcom/superwall/sdk/dependencies/RuleAttributesFactory;->makeRuleAttributes(Lcom/superwall/sdk/models/events/EventData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto/16 :goto_3

    .line 65
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Map;

    .line 67
    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluatorKt;->toPassableValue(Ljava/util/Map;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExpressionCEL()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->getValue()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;-><init>(Ljava/util/Map;)V

    .line 75
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->ComputedProperties:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;->getAvailableDeviceProperties()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 v5, 0xa

    .line 234
    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 235
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .line 236
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, "event_name"

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 237
    check-cast v6, Ljava/lang/String;

    .line 76
    new-instance v10, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-direct {v10, v9}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 237
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    :cond_4
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;->ComputedProperties:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext$ComputedProperties;->getAvailableComputedProperties()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 240
    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    invoke-static {v5, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 241
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    .line 242
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 243
    check-cast v5, Ljava/lang/String;

    .line 80
    new-instance v7, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-direct {v7, v9}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 243
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 71
    :cond_5
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext;

    invoke-direct {p1, v4, v1, v6, v8}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext;-><init>(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableMap;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 84
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->access$getJson$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 246
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ExecutionContext$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v4, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->access$getHostContext$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;

    move-result-object v1

    check-cast v1, Lcom/superwall/supercel/HostContext;

    invoke-static {p1, v1}, Lcom/superwall/supercel/CELKt;->evaluateWithContext(Ljava/lang/String;Lcom/superwall/supercel/HostContext;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->access$getJson$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v4, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult;

    .line 89
    instance-of v4, v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Err;

    if-eqz v4, :cond_6

    .line 90
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 91
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 92
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->jsEvaluator:Lcom/superwall/sdk/logger/LogScope;

    .line 93
    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Err;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Err;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Superscript evaluation failed for expression "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 90
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 95
    sget-object p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    .line 96
    sget-object v0, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->EXPRESSION:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    .line 97
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p1

    return-object p1

    .line 101
    :cond_6
    instance-of p1, v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Ok;

    if-eqz p1, :cond_9

    .line 102
    check-cast v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Ok;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Ok;->getValue()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object p1

    instance-of p1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult$Ok;->getValue()Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;->getValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 104
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->this$0:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;->access$getStorage$p(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;)Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->label:I

    invoke-static {p1, v1, v3, v4}, Lcom/superwall/sdk/paywall/presentation/rule_logic/UtilsKt;->tryToMatchOccurrence(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/storage/core_data/CoreDataManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_3
    return-object v0

    :cond_7
    :goto_4
    check-cast p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    return-object p1

    .line 106
    :cond_8
    sget-object p1, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;->Companion:Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;

    .line 107
    sget-object v0, Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;->EXPRESSION:Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;

    .line 108
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$evaluateExpression$2;->$rule:Lcom/superwall/sdk/models/triggers/TriggerRule;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getExperiment()Lcom/superwall/sdk/models/triggers/RawExperiment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/RawExperiment;->getId()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p1, v0, v1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome$Companion;->noMatch(Lcom/superwall/sdk/models/triggers/UnmatchedRule$Source;Ljava/lang/String;)Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;

    move-result-object p1

    return-object p1

    .line 88
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
