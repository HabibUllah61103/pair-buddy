.class public final Lcom/superwall/sdk/billing/observer/LaunchBillingFlowWithSuperwallKt;
.super Ljava/lang/Object;
.source "LaunchBillingFlowWithSuperwall.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchBillingFlowWithSuperwall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchBillingFlowWithSuperwall.kt\ncom/superwall/sdk/billing/observer/LaunchBillingFlowWithSuperwallKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1557#2:73\n1628#2,3:74\n1863#2,2:77\n*S KotlinDebug\n*F\n+ 1 LaunchBillingFlowWithSuperwall.kt\ncom/superwall/sdk/billing/observer/LaunchBillingFlowWithSuperwallKt\n*L\n57#1:73\n57#1:74,3\n64#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "launchBillingFlowWithSuperwall",
        "Lcom/android/billingclient/api/BillingResult;",
        "Lcom/android/billingclient/api/BillingClient;",
        "activity",
        "Landroid/app/Activity;",
        "params",
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final launchBillingFlowWithSuperwall(Lcom/android/billingclient/api/BillingClient;Landroid/app/Activity;Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "params"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getShouldObservePurchases()Z

    move-result v2

    .line 47
    const-string v4, "launchBillingFlow(...)"

    if-nez v2, :cond_1

    .line 49
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 50
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 51
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/4 v2, 0x2

    .line 54
    new-array v2, v2, [Lkotlin/Pair;

    const-string v8, "method"

    const-string v9, "launchBillingFlowWithSuperwall"

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v2, v9

    .line 56
    invoke-virtual {v3}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->getProductDetailsParams$superwall_release()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 74
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 75
    check-cast v10, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;

    .line 57
    invoke-virtual {v10}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->getDetails$superwall_release()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v10

    .line 75
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    check-cast v9, Ljava/util/List;

    .line 73
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    .line 58
    const-string v8, ", "

    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 55
    const-string v9, "products"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 53
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    const/16 v11, 0x10

    .line 49
    const-string v8, "Observer mode is not enabled. In order to observe purchases, please enable it in the SuperwallOptions by setting `shouldObservePurchases` to true."

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 61
    invoke-virtual {v3}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->toOriginal()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v3}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->getProductDetailsParams$superwall_release()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 77
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;

    .line 65
    sget-object v6, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->getDetails$superwall_release()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;->from(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object v5

    .line 66
    sget-object v6, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v6}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v6

    .line 67
    new-instance v7, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;

    invoke-virtual {v5}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->getUnderlyingProductDetails()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;-><init>(Lcom/android/billingclient/api/ProductDetails;)V

    check-cast v7, Lcom/superwall/sdk/store/PurchasingObserverState;

    .line 66
    invoke-virtual {v6, v7}, Lcom/superwall/sdk/Superwall;->observe(Lcom/superwall/sdk/store/PurchasingObserverState;)V

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v3}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->toOriginal()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Superwall SDK is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
