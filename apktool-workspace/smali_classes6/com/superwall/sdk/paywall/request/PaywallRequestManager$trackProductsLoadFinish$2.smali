.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->trackProductsLoadFinish(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$trackProductsLoadFinish$2"
    f = "PaywallRequestManager.kt"
    i = {
        0x0
    }
    l = {
        0x186
    }
    m = "invokeSuspend"
    n = {
        "paywall"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $event:Lcom/superwall/sdk/models/events/EventData;

.field final synthetic $paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$event:Lcom/superwall/sdk/models/events/EventData;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

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

    new-instance p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$event:Lcom/superwall/sdk/models/events/EventData;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 380
    iget v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    .line 382
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->setEndAt(Ljava/util/Date;)V

    .line 383
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$event:Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {p1, v1}, Lcom/superwall/sdk/models/paywall/Paywall;->getInfo(Lcom/superwall/sdk/models/events/EventData;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    .line 385
    new-instance v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;

    .line 386
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Complete;

    invoke-direct {v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Complete;-><init>()V

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;

    .line 388
    iget-object v5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->$event:Lcom/superwall/sdk/models/events/EventData;

    .line 385
    invoke-direct {v3, v4, v1, v5}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;)V

    .line 390
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-static {v1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getTrack$p(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$trackProductsLoadFinish$2;->label:I

    invoke-interface {v1, v3, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
