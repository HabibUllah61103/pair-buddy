.class public final Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;
.super Ljava/lang/Object;
.source "PurchaseControllerBridge.kt"

# interfaces
.implements Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cJ2\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010\u001dR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "<init>",
        "()V",
        "purchasePromise",
        "Ljava/util/concurrent/CompletableFuture;",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "getPurchasePromise",
        "()Ljava/util/concurrent/CompletableFuture;",
        "setPurchasePromise",
        "(Ljava/util/concurrent/CompletableFuture;)V",
        "restorePromise",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "getRestorePromise",
        "setRestorePromise",
        "completePurchase",
        "",
        "result",
        "completeRestore",
        "purchase",
        "activity",
        "Landroid/app/Activity;",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "basePlanId",
        "",
        "offerId",
        "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "restorePurchases",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "expo-superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$Companion;

.field private static final instance:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;


# instance fields
.field private purchasePromise:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;"
        }
    .end annotation
.end field

.field private restorePromise:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->Companion:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$Companion;

    .line 18
    new-instance v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    invoke-direct {v0}, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;-><init>()V

    sput-object v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->instance:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;
    .locals 1

    .line 12
    sget-object v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->instance:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    return-object v0
.end method


# virtual methods
.method public final completePurchase(Lcom/superwall/sdk/delegate/PurchaseResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchasePromise:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final completeRestore(Lcom/superwall/sdk/delegate/RestorationResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->restorePromise:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getPurchasePromise()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchasePromise:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public final getRestorePromise()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->restorePromise:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of p1, p5, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;

    iget v0, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p5, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    sub-int/2addr p5, v1

    iput p5, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;

    invoke-direct {p1, p0, p5}, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;-><init>(Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    new-instance p5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p5, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchasePromise:Ljava/util/concurrent/CompletableFuture;

    const/4 p5, 0x4

    .line 38
    new-array p5, p5, [Lkotlin/Pair;

    const-string v1, "platform"

    const-string v3, "android"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p5, v3

    .line 39
    const-string v1, "productId"

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p5, v2

    .line 40
    const-string p2, "basePlanId"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p5, p3

    .line 41
    const-string p2, "offerId"

    invoke-static {p2, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p5, p3

    .line 37
    invoke-static {p5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 44
    sget-object p3, Lexpo/modules/superwallexpo/SuperwallExpoModule;->Companion:Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;

    .line 45
    const-string p4, "onPurchase"

    .line 44
    invoke-virtual {p3, p4, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;->emitEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    iget-object p2, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchasePromise:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/concurrent/CompletionStage;

    iput v2, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    invoke-static {p2, p1}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    const-string p1, "await(...)"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p5
.end method

.method public restorePurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;

    iget v1, v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;-><init>(Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->restorePromise:Ljava/util/concurrent/CompletableFuture;

    .line 55
    sget-object p1, Lexpo/modules/superwallexpo/SuperwallExpoModule;->Companion:Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;

    const-string v2, "onPurchaseRestore"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;->emitEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    iget-object p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->restorePromise:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    iput v3, v0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$restorePurchases$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/future/FutureKt;->await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "await(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setPurchasePromise(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchasePromise:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final setRestorePromise(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->restorePromise:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
