.class final Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DebugView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/debug/DebugView;->pressedPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.superwall.sdk.debug.DebugView$pressedPreview$options$1$alert$1"
    f = "DebugView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywall:Lcom/superwall/sdk/models/paywall/Paywall;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/debug/DebugView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/debug/DebugView;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/debug/DebugView;",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    iput-object p2, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    iget-object v2, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-direct {v0, v1, v2, p1}, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 678
    iget v0, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 679
    iget-object p1, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getDatabaseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/debug/DebugView;->setPaywallDatabaseId$superwall_release(Ljava/lang/String;)V

    .line 680
    iget-object p1, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->$paywall:Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/superwall/sdk/debug/DebugView;->access$setPaywallIdentifier$p(Lcom/superwall/sdk/debug/DebugView;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1$1;

    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/superwall/sdk/debug/DebugView$pressedPreview$options$1$alert$1$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 684
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
