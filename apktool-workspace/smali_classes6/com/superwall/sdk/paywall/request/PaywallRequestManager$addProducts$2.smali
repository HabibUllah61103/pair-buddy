.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->addProducts(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager$addProducts$2"
    f = "PaywallRequestManager.kt"
    i = {}
    l = {
        0x12b,
        0x12e,
        0x132
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field final synthetic $request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Lcom/superwall/sdk/paywall/request/PaywallRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

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

    new-instance p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 296
    iget v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    .line 299
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->label:I

    invoke-static {v1, p1, v5, v6}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$trackProductsLoadStart(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 296
    :cond_4
    :goto_0
    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 302
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->label:I

    invoke-static {v1, p1, v4, v5}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$getProducts(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 306
    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->$request:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/request/PaywallRequest;->getEventData()Lcom/superwall/sdk/models/events/EventData;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$addProducts$2;->label:I

    invoke-static {v1, p1, v3, v4}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->access$trackProductsLoadFinish(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    .line 296
    :cond_6
    :goto_3
    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    return-object p1
.end method
