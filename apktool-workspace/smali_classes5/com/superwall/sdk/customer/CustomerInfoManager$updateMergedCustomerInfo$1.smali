.class final Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomerInfoManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/customer/CustomerInfoManager;->updateMergedCustomerInfo()V
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
    c = "com.superwall.sdk.customer.CustomerInfoManager$updateMergedCustomerInfo$1"
    f = "CustomerInfoManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/customer/CustomerInfoManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/customer/CustomerInfoManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;

    iget-object v0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;-><init>(Lcom/superwall/sdk/customer/CustomerInfoManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 57
    iget v0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {p1}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getHasExternalPurchaseController$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, " entitlements"

    const-string v1, " subs, "

    if-eqz p1, :cond_0

    .line 62
    sget-object p1, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    .line 63
    iget-object v2, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {v2}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getStorage$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lcom/superwall/sdk/storage/Storage;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {v3}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getGetSubscriptionStatus$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 62
    invoke-virtual {p1, v2, v3}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->forExternalPurchaseController(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    .line 67
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 68
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 69
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 72
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 73
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Built CustomerInfo for external controller - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {p1}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getStorage$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lcom/superwall/sdk/storage/Storage;

    move-result-object p1

    sget-object v2, Lcom/superwall/sdk/storage/LatestDeviceCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestDeviceCustomerInfo;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1, v2}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-nez p1, :cond_1

    sget-object p1, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {v2}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getStorage$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lcom/superwall/sdk/storage/Storage;

    move-result-object v2

    sget-object v3, Lcom/superwall/sdk/storage/LatestWebCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestWebCustomerInfo;

    check-cast v3, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v2, v3}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-nez v2, :cond_2

    sget-object v2, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v2

    .line 79
    :cond_2
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 80
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 81
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 83
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 84
    invoke-virtual {v2}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Merging CustomerInfo - Device: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " subs, Web: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 79
    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 90
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->isPlaceholder$superwall_release()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/superwall/sdk/models/customer/CustomerInfo;->isPlaceholder$superwall_release()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->isPlaceholder$superwall_release()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object p1, v2

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v2}, Lcom/superwall/sdk/models/customer/CustomerInfo;->isPlaceholder$superwall_release()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 93
    :cond_5
    invoke-static {p1, v2}, Lcom/superwall/sdk/models/customer/CustomerInfoMergingKt;->merge(Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    .line 96
    :goto_0
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 97
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 98
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 100
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 101
    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Merged CustomerInfo - Total: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 96
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {v0}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getStorage$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lcom/superwall/sdk/storage/Storage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/LatestCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestCustomerInfo;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {v0, v1, p1}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;->this$0:Lcom/superwall/sdk/customer/CustomerInfoManager;

    invoke-static {v0}, Lcom/superwall/sdk/customer/CustomerInfoManager;->access$getUpdateCustomerInfo$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
