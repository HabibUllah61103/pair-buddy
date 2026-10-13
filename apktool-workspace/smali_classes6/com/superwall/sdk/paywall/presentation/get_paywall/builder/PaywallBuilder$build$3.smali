.class final Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->buildWithCallback(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$build$3"
    f = "PaywallBuilder.kt"
    i = {}
    l = {
        0x6d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->$onError:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->$onError:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;-><init>(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 106
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v3

    .line 109
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->getPlacement()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getParams$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Ljava/util/Map;

    move-result-object v5

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getPaywallOverrides$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    move-result-object v6

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    invoke-static {p1}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;->access$getDelegate$p(Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;)Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->label:I

    invoke-static/range {v3 .. v8}, Lcom/superwall/sdk/paywall/presentation/get_paywall/PublicGetPaywallKt;->getPaywall(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v2, p1

    .line 110
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->this$0:Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3;->$onError:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder$build$3$1;-><init>(Ljava/lang/Object;Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 125
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
