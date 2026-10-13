.class public final Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;
.super Ljava/lang/Object;
.source "AutomaticPurchaseController.kt"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/AutomaticPurchaseController;->startConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/superwall/sdk/store/AutomaticPurchaseController$startConnection$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingSetupFinished",
        "",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "onBillingServiceDisconnected",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 10

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->access$isConnected$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 109
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 110
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 111
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->nativePurchaseController:Lcom/superwall/sdk/logger/LogScope;

    .line 113
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->access$getReconnectMilliseconds$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)J

    move-result-wide v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ExternalNativePurchaseController billing client disconnected, retrying in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 109
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 116
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1$onBillingServiceDisconnected$1;

    iget-object v2, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1$onBillingServiceDisconnected$1;-><init>(Lcom/superwall/sdk/store/AutomaticPurchaseController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 121
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    .line 123
    invoke-static {v0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->access$getReconnectMilliseconds$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)J

    move-result-wide v1

    const/4 v3, 0x2

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e80

    .line 124
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 121
    invoke-static {v0, v1, v2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->access$setReconnectMilliseconds$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;J)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {v0}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->access$isConnected$p(Lcom/superwall/sdk/store/AutomaticPurchaseController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 101
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lcom/superwall/sdk/store/AutomaticPurchaseController$startConnection$1;->this$0:Lcom/superwall/sdk/store/AutomaticPurchaseController;

    invoke-static {p1}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->access$syncSubscriptionStatus(Lcom/superwall/sdk/store/AutomaticPurchaseController;)V

    return-void
.end method
