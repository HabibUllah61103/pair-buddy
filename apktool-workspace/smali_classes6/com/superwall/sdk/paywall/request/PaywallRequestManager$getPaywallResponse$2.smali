.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywallResponse(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/misc/Either<",
        "+",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "*>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000c\u0012\u0004\u0012\u00020\u0002\u0012\u0002\u0008\u00030\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2"
    f = "PaywallRequestManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0xee,
        0xf2,
        0xff
    }
    m = "invokeSuspend"
    n = {
        "responseLoadStartTime",
        "paywallId",
        "event",
        "responseLoadStartTime",
        "paywallId",
        "event",
        "event"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $isPreloading:Z

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method public static synthetic $r8$lambda$e5EG5J5mvIG2uhLUww94hg8i2iY(ZLcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/util/Date;Lcom/superwall/sdk/models/paywall/Paywall;)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->invokeSuspend$lambda$1(ZLcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/util/Date;Lcom/superwall/sdk/models/paywall/Paywall;)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$isPreloading:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(ZLcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/util/Date;Lcom/superwall/sdk/models/paywall/Paywall;)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 0

    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p4}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->activePaywallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p4

    .line 250
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getResponseIdentifiers()Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/superwall/sdk/models/paywall/Paywall;->setExperiment(Lcom/superwall/sdk/models/triggers/Experiment;)V

    .line 251
    invoke-virtual {p4}, Lcom/superwall/sdk/models/paywall/Paywall;->getResponseLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->setStartAt(Ljava/util/Date;)V

    .line 252
    invoke-virtual {p4}, Lcom/superwall/sdk/models/paywall/Paywall;->getResponseLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->setEndAt(Ljava/util/Date;)V

    return-object p4
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

    new-instance p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$isPreloading:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;-><init>(Lcom/superwall/sdk/paywall/request/PaywallRequest;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 226
    iget v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/events/EventData;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/events/EventData;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Date;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/models/events/EventData;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Date;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 228
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getResponseIdentifiers()Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;->getPaywallId()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v1

    .line 232
    iget-object v7, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v7}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getFactory$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;

    move-result-object v7

    .line 235
    iget-object v8, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v8}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->isDebuggerLaunched()Z

    move-result v8

    .line 233
    invoke-interface {v7, p1, v8}, Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;->makeStaticPaywall(Ljava/lang/String;Z)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 237
    new-instance v4, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v4, v7}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    .line 232
    check-cast v4, Lcom/superwall/sdk/misc/Either;

    move-object v10, v6

    move-object v6, v4

    :goto_0
    move-object v4, v10

    goto :goto_2

    .line 238
    :cond_4
    iget-object v7, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v7}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getNetwork$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lcom/superwall/sdk/network/Network;

    move-result-object v7

    .line 240
    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 238
    iput-object v6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$2:Ljava/lang/Object;

    iput v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->label:I

    invoke-virtual {v7, p1, v1, v8}, Lcom/superwall/sdk/network/Network;->getPaywall(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v10, v4

    move-object v4, p1

    move-object p1, v10

    .line 226
    :goto_1
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    move-object v10, v6

    move-object v6, p1

    move-object p1, v4

    goto :goto_0

    .line 242
    :goto_2
    new-instance v7, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$2;

    invoke-direct {v7, p1, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->label:I

    invoke-static {v6, v7, v8}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v10, v3

    move-object v3, p1

    move-object p1, v10

    .line 226
    :goto_3
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 248
    iget-boolean v6, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$isPreloading:Z

    iget-object v7, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v8, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    new-instance v9, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;

    invoke-direct {v9, v6, v7, v8, v4}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;-><init>(ZLcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/util/Date;)V

    invoke-static {p1, v9}, Lcom/superwall/sdk/misc/EitherKt;->map(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    .line 255
    new-instance v4, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$4;

    invoke-direct {v4, v3, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$4;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->label:I

    invoke-static {p1, v4, v3}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_4
    return-object v0

    :cond_7
    move-object v0, v1

    .line 226
    :goto_5
    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 261
    new-instance v1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$5;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$5;-><init>(Lcom/superwall/sdk/models/events/EventData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/superwall/sdk/misc/EitherKt;->mapError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    move-result-object p1

    return-object p1
.end method
