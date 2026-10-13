.class public interface abstract Lcom/superwall/sdk/store/StoreKitManagerInterface;
.super Ljava/lang/Object;
.source "StoreKitManagerInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/StoreKitManagerInterface$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u00a6@\u00a2\u0006\u0002\u0010\rJD\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00a6@\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u00a6@\u00a2\u0006\u0002\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH\u00a6@\u00a2\u0006\u0002\u0010\u001fJ\u000e\u0010 \u001a\u00020\u0018H\u00a6@\u00a2\u0006\u0002\u0010!J(\u0010\"\u001a\u00020\u00182\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0\u0003H\u00a6@\u00a2\u0006\u0002\u0010&J\u0016\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0002\u0010*J.\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00050$2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040$2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u00a6@\u00a2\u0006\u0002\u0010-R\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006."
    }
    d2 = {
        "Lcom/superwall/sdk/store/StoreKitManagerInterface;",
        "",
        "productsById",
        "",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "getProductsById",
        "()Ljava/util/Map;",
        "getProductVariables",
        "",
        "Lcom/superwall/sdk/models/product/ProductVariable;",
        "paywall",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProducts",
        "Lcom/superwall/sdk/store/GetProductsResponse;",
        "responseProductIds",
        "paywallName",
        "responseProducts",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "substituteProducts",
        "Lcom/superwall/sdk/models/paywall/PaywallProducts;",
        "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallProducts;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryToRestore",
        "",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processRestoration",
        "restorationResult",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "(Lcom/superwall/sdk/delegate/RestorationResult;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshReceipt",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadPurchasedProducts",
        "serverEntitlementsByProductId",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isFreeTrialAvailable",
        "",
        "product",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "products",
        "identifiers",
        "(Ljava/util/Set;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract getProductVariables(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/paywall/Paywall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getProducts(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallProducts;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/PaywallProducts;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/GetProductsResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getProductsById()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFreeTrialAvailable(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract loadPurchasedProducts(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract processRestoration(Lcom/superwall/sdk/delegate/RestorationResult;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract products(Ljava/util/Set;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract refreshReceipt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract tryToRestore(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
