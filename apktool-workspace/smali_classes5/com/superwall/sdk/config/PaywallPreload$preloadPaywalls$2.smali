.class final Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallPreload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/config/PaywallPreload;->preloadPaywalls(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.config.PaywallPreload$preloadPaywalls$2"
    f = "PaywallPreload.kt"
    i = {}
    l = {
        0xb1,
        0xb2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywallCount:I

.field final synthetic $paywallIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/config/PaywallPreload;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/superwall/sdk/config/PaywallPreload;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/config/PaywallPreload;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->$paywallIdentifiers:Ljava/util/Set;

    iput-object p2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    iput p3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->$paywallCount:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;

    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->$paywallIdentifiers:Ljava/util/Set;

    iget-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    iget v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->$paywallCount:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;-><init>(Ljava/util/Set;Lcom/superwall/sdk/config/PaywallPreload;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

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

    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 147
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->$paywallIdentifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    new-instance v6, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;

    iget-object v7, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2$task$1;-><init>(Lcom/superwall/sdk/config/PaywallPreload;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v5

    .line 174
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_3
    check-cast p1, Ljava/util/Collection;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 178
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->this$0:Lcom/superwall/sdk/config/PaywallPreload;

    invoke-static {p1}, Lcom/superwall/sdk/config/PaywallPreload;->access$getTrack$p(Lcom/superwall/sdk/config/PaywallPreload;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    .line 179
    new-instance v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload;

    .line 180
    sget-object v3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;->Complete:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;

    .line 181
    iget v4, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->$paywallCount:I

    .line 179
    invoke-direct {v1, v3, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;I)V

    .line 178
    iput v2, p0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;->label:I

    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    .line 184
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
