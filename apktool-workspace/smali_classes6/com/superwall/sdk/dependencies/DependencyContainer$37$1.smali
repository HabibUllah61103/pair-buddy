.class final Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DependencyContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/dependencies/DependencyContainer$37;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.dependencies.DependencyContainer$37$1"
    f = "DependencyContainer.kt"
    i = {}
    l = {
        0x2a0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paywallActivity:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

.field final synthetic $trialNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Ljava/util/List;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Lcom/superwall/sdk/dependencies/DependencyContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->$paywallActivity:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    iput-object p2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->$trialNotifications:Ljava/util/List;

    iput-object p3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

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

    new-instance p1, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;

    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->$paywallActivity:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->$trialNotifications:Ljava/util/List;

    iget-object v2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;-><init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Ljava/util/List;Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 671
    iget v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 672
    iget-object v1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->$paywallActivity:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    move p1, v2

    .line 673
    iget-object v2, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->$trialNotifications:Ljava/util/List;

    .line 674
    iget-object v3, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    check-cast v3, Lcom/superwall/sdk/dependencies/DeviceHelperFactory;

    .line 672
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$37$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->attemptToScheduleNotifications$default(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Ljava/util/List;Lcom/superwall/sdk/dependencies/DeviceHelperFactory;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 676
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
