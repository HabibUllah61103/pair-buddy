.class final Lcom/superwall/sdk/Superwall$addListeners$1$2;
.super Ljava/lang/Object;
.source "Superwall.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/Superwall$addListeners$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$addListeners$1$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;

    iget v1, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;-><init>(Lcom/superwall/sdk/Superwall$addListeners$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 734
    iget v2, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/Superwall$addListeners$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 737
    iget-object p2, p0, Lcom/superwall/sdk/Superwall$addListeners$1$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object p2

    sget-object v2, Lcom/superwall/sdk/storage/StoredSubscriptionStatus;->INSTANCE:Lcom/superwall/sdk/storage/StoredSubscriptionStatus;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p2, v2}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    if-nez p2, :cond_4

    .line 738
    sget-object p2, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    check-cast p2, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 739
    :cond_4
    iget-object v2, p0, Lcom/superwall/sdk/Superwall$addListeners$1$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v2

    sget-object v6, Lcom/superwall/sdk/storage/StoredSubscriptionStatus;->INSTANCE:Lcom/superwall/sdk/storage/StoredSubscriptionStatus;

    check-cast v6, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v2, v6, p1}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 740
    iget-object v2, p0, Lcom/superwall/sdk/Superwall$addListeners$1$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->subscriptionStatusDidChange(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 744
    new-instance p2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStatusDidChange;

    invoke-direct {p2, p1, v4, v5, v4}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStatusDidChange;-><init>(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 745
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$addListeners$1$2;->this$0:Lcom/superwall/sdk/Superwall;

    check-cast p2, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iput-object p0, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->label:I

    invoke-static {p1, p2, v0}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, p0

    .line 746
    :goto_1
    iget-object p1, p1, Lcom/superwall/sdk/Superwall$addListeners$1$2;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p1

    iput-object v4, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/superwall/sdk/Superwall$addListeners$1$2$emit$1;->label:I

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/config/ConfigManager;->recheckPreloadIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 747
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 734
    check-cast p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/Superwall$addListeners$1$2;->emit(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
