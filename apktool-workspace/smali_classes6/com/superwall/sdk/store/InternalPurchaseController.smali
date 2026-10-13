.class public final Lcom/superwall/sdk/store/InternalPurchaseController;
.super Ljava/lang/Object;
.source "InternalPurchaseController.kt"

# interfaces
.implements Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J2\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0096@\u00a2\u0006\u0002\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\u001dR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/superwall/sdk/store/InternalPurchaseController;",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "kotlinPurchaseController",
        "javaPurchaseController",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "hasExternalPurchaseController",
        "",
        "getHasExternalPurchaseController",
        "()Z",
        "hasInternalPurchaseController",
        "getHasInternalPurchaseController",
        "purchase",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "activity",
        "Landroid/app/Activity;",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "basePlanId",
        "",
        "offerId",
        "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "restorePurchases",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final context:Landroid/content/Context;

.field private final javaPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;

.field private final kotlinPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->kotlinPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    .line 15
    iput-object p2, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->javaPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;

    .line 16
    iput-object p3, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getHasExternalPurchaseController()Z
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/superwall/sdk/store/InternalPurchaseController;->getHasInternalPurchaseController()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getHasInternalPurchaseController()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->kotlinPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    instance-of v0, v0, Lcom/superwall/sdk/store/AutomaticPurchaseController;

    return v0
.end method

.method public purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/billingclient/api/ProductDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->kotlinPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 33
    invoke-interface/range {v0 .. v5}, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;->purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 34
    iget-object p1, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->javaPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;

    if-eqz p1, :cond_2

    .line 35
    new-instance p1, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object p2, p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 36
    iget-object p3, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->javaPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;

    new-instance p4, Lcom/superwall/sdk/store/InternalPurchaseController$purchase$2$1;

    invoke-direct {p4, p2}, Lcom/superwall/sdk/store/InternalPurchaseController$purchase$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, v2, v3, v4, p4}, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;->purchase(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 35
    invoke-virtual {p1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p1

    .line 42
    :cond_2
    new-instance p1, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    invoke-direct {p1}, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;-><init>()V

    return-object p1
.end method

.method public restorePurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->kotlinPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;->restorePurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->javaPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 69
    iget-object v2, p0, Lcom/superwall/sdk/store/InternalPurchaseController;->javaPurchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;

    new-instance v3, Lcom/superwall/sdk/store/InternalPurchaseController$restorePurchases$2$1;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/store/InternalPurchaseController$restorePurchases$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3}, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;->restorePurchases(Lkotlin/jvm/functions/Function2;)V

    .line 68
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0

    .line 79
    :cond_2
    new-instance p1, Lcom/superwall/sdk/delegate/RestorationResult$Failed;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/superwall/sdk/delegate/RestorationResult$Failed;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
