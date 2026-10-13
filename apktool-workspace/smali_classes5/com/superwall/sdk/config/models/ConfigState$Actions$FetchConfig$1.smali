.class final Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/superwall/sdk/config/ConfigContext;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigState.kt\ncom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1\n+ 2 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,412:1\n129#2,5:413\n*S KotlinDebug\n*F\n+ 1 ConfigState.kt\ncom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1\n*L\n205#1:413,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/superwall/sdk/config/ConfigContext;"
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
    c = "com.superwall.sdk.config.models.ConfigState$Actions$FetchConfig$1"
    f = "ConfigState.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7
    }
    l = {
        0x9a,
        0x9b,
        0xa8,
        0xb1,
        0xb2,
        0xb6,
        0xc7,
        0xc9,
        0xd6
    }
    m = "invokeSuspend"
    n = {
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "configRetryCount",
        "configDuration",
        "attributesDeferred",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "configRetryCount",
        "configDuration",
        "configResultAny",
        "enrichmentResultAny",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "enrichmentResult",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "enrichmentResult",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "enrichmentResult",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "enrichmentResult",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "isEnrichmentFromCache",
        "enrichmentResult",
        "priorRetries",
        "$this$exec",
        "isConfigFromCache",
        "priorRetries"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;

    invoke-direct {v0, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/superwall/sdk/config/ConfigContext;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->invoke(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v3

    move-object/from16 v3, p1

    goto/16 :goto_b

    :pswitch_2
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_a

    :pswitch_3
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_9

    :pswitch_4
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_8

    :pswitch_5
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_6

    :pswitch_6
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_5

    :pswitch_7
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/misc/Either;

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/misc/Either;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v7

    move-object v15, v9

    move-object v7, v3

    move-object/from16 v3, p1

    :cond_0
    move-object v14, v8

    move-object v13, v11

    goto/16 :goto_4

    :pswitch_8
    iget v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iget-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/Deferred;

    iget-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/superwall/sdk/config/ConfigContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v24, v4

    move-object v15, v9

    move-object v9, v7

    move-object/from16 v7, p1

    goto/16 :goto_3

    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/superwall/sdk/config/ConfigContext;

    .line 71
    invoke-interface {v8}, Lcom/superwall/sdk/config/ConfigContext;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/config/models/ConfigState;

    .line 72
    instance-of v7, v2, Lcom/superwall/sdk/config/models/ConfigState$Retrieving;

    if-nez v7, :cond_10

    instance-of v7, v2, Lcom/superwall/sdk/config/models/ConfigState$Retrying;

    if-eqz v7, :cond_1

    goto/16 :goto_e

    .line 75
    :cond_1
    instance-of v7, v2, Lcom/superwall/sdk/config/models/ConfigState$Failed;

    if-eqz v7, :cond_2

    check-cast v2, Lcom/superwall/sdk/config/models/ConfigState$Failed;

    goto :goto_0

    :cond_2
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/superwall/sdk/config/models/ConfigState$Failed;->getRetryCount()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v4

    .line 77
    :goto_1
    sget-object v7, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieving;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieving;

    check-cast v7, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-interface {v8, v7}, Lcom/superwall/sdk/config/ConfigContext;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 79
    invoke-interface {v8}, Lcom/superwall/sdk/config/ConfigContext;->getStorage()Lcom/superwall/sdk/storage/Storage;

    move-result-object v7

    sget-object v9, Lcom/superwall/sdk/storage/LatestConfig;->INSTANCE:Lcom/superwall/sdk/storage/LatestConfig;

    check-cast v9, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v7, v9}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/superwall/sdk/models/config/Config;

    .line 80
    invoke-interface {v8}, Lcom/superwall/sdk/config/ConfigContext;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/store/Entitlements;->getStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 82
    instance-of v7, v7, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    if-eqz v7, :cond_4

    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v7, 0x1f4

    sget-object v10, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v7, v10}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v10

    goto :goto_2

    :cond_4
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v10

    .line 84
    :goto_2
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 85
    new-instance v16, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 86
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 87
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 90
    invoke-interface {v8}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v17

    new-instance v7, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;

    const/4 v15, 0x0

    move-wide/from16 v25, v10

    move-object v11, v8

    move-object v8, v9

    move-wide/from16 v9, v25

    invoke-direct/range {v7 .. v15}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$configDeferred$1;-><init>(Lcom/superwall/sdk/models/config/Config;JLcom/superwall/sdk/config/ConfigContext;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    move-object v9, v8

    move-object v8, v11

    move-wide/from16 v10, v25

    move-object v15, v12

    move-object v12, v7

    move-object v7, v14

    move-object v14, v13

    move-object/from16 v20, v12

    check-cast v20, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v17

    .line 130
    invoke-interface {v8}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    move-object v12, v7

    new-instance v7, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;

    const/4 v13, 0x0

    move/from16 v24, v4

    move-object v4, v12

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v13}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$enrichmentDeferred$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/models/config/Config;JLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v7

    check-cast v21, Lkotlin/jvm/functions/Function2;

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v7

    .line 151
    invoke-interface {v8}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    new-instance v9, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$attributesDeferred$1;

    invoke-direct {v9, v8, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$attributesDeferred$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v9

    check-cast v21, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v9

    .line 154
    new-array v10, v3, [Lkotlinx/coroutines/Deferred;

    aput-object v17, v10, v24

    aput-object v7, v10, v5

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v15, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$5:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iput v5, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v7, v10}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    goto/16 :goto_c

    :cond_5
    move-object v10, v12

    move-object v11, v14

    move-object v12, v8

    move-object v8, v4

    .line 70
    :goto_3
    check-cast v7, Ljava/util/List;

    move/from16 v4, v24

    .line 153
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v4, v13

    check-cast v4, Lcom/superwall/sdk/misc/Either;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/superwall/sdk/misc/Either;

    .line 155
    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v15, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$6:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    iput v3, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-interface {v9, v13}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    goto/16 :goto_c

    .line 70
    :goto_4
    check-cast v3, Ljava/util/HashMap;

    .line 156
    invoke-interface {v12}, Lcom/superwall/sdk/config/ConfigContext;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v16

    new-instance v8, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$1;

    invoke-direct {v8, v12, v3, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$1;-><init>(Lcom/superwall/sdk/config/ConfigContext;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v8

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 162
    const-string v3, "null cannot be cast to non-null type com.superwall.sdk.misc.Either<com.superwall.sdk.models.config.Config, kotlin.Throwable>"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const-string v3, "null cannot be cast to non-null type com.superwall.sdk.misc.Either<com.superwall.sdk.models.enrichment.Enrichment, kotlin.Throwable>"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v11, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$2;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$2;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$4:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$5:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$6:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    const/4 v8, 0x3

    iput v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v4, v11, v3}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_6

    goto/16 :goto_c

    :cond_6
    move-object v9, v12

    move-object v8, v13

    .line 70
    :goto_5
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 177
    new-instance v4, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$3;

    invoke-direct {v4, v9, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$3;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    const/4 v12, 0x4

    iput v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v3, v4, v11}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    goto/16 :goto_c

    .line 70
    :cond_7
    :goto_6
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 178
    invoke-interface {v9}, Lcom/superwall/sdk/config/ConfigContext;->getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v5

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    xor-int/2addr v4, v5

    new-instance v11, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$4;

    invoke-direct {v11, v9, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$4;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    const/4 v13, 0x5

    iput v13, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v3, v4, v11, v12}, Lcom/superwall/sdk/misc/EitherKt;->thenIf(Lcom/superwall/sdk/misc/Either;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    goto/16 :goto_c

    .line 70
    :cond_9
    :goto_8
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 182
    new-instance v4, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$5;

    invoke-direct {v4, v9, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$5;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    const/4 v12, 0x6

    iput v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v3, v4, v11}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_a

    goto/16 :goto_c

    .line 70
    :cond_a
    :goto_9
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 199
    new-instance v4, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$6;

    invoke-direct {v4, v9, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$6;-><init>(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    const/4 v12, 0x7

    iput v12, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v3, v4, v11}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    goto :goto_c

    .line 70
    :cond_b
    :goto_a
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 201
    new-instance v4, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$7;

    invoke-direct {v4, v10, v7, v9, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1$7;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/superwall/sdk/misc/Either;Lcom/superwall/sdk/config/ConfigContext;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->I$0:I

    const/16 v10, 0x8

    iput v10, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-static {v3, v4, v7}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    goto :goto_c

    :cond_c
    move-object v7, v9

    .line 70
    :goto_b
    check-cast v3, Lcom/superwall/sdk/misc/Either;

    .line 414
    instance-of v4, v3, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v4, :cond_d

    check-cast v3, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v3}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    check-cast v1, Lcom/superwall/sdk/models/config/Config;

    .line 208
    sget-object v1, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;

    check-cast v1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {v7, v1}, Lcom/superwall/sdk/config/ConfigContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 209
    iget-boolean v1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_e

    .line 210
    new-instance v1, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-interface {v7, v1}, Lcom/superwall/sdk/config/ConfigContext;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    goto :goto_d

    .line 415
    :cond_d
    instance-of v4, v3, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v4, :cond_f

    check-cast v3, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v3}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 214
    new-instance v4, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;

    iget-boolean v5, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-direct {v4, v3, v2, v5}, Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;-><init>(Ljava/lang/Throwable;IZ)V

    check-cast v4, Lcom/superwall/sdk/misc/primitives/TypedAction;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->L$1:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;->label:I

    invoke-interface {v7, v4, v0}, Lcom/superwall/sdk/config/ConfigContext;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    :goto_c
    return-object v1

    .line 217
    :cond_e
    :goto_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 413
    :cond_f
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 72
    :cond_10
    :goto_e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
