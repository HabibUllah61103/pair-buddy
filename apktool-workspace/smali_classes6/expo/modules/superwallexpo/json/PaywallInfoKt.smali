.class public final Lexpo/modules/superwallexpo/json/PaywallInfoKt;
.super Ljava/lang/Object;
.source "PaywallInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallInfo.kt\nexpo/modules/superwallexpo/json/PaywallInfoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1563#2:100\n1634#2,3:101\n1563#2:105\n1634#2,3:106\n1563#2:109\n1634#2,2:110\n1563#2:112\n1634#2,3:113\n1636#2:116\n1563#2:117\n1634#2,3:118\n1#3:104\n*S KotlinDebug\n*F\n+ 1 PaywallInfo.kt\nexpo/modules/superwallexpo/json/PaywallInfoKt\n*L\n16#1:100\n16#1:101,3\n52#1:105\n52#1:106,3\n60#1:109\n60#1:110,2\n61#1:112\n61#1:113,3\n60#1:116\n82#1:117\n82#1:118,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toJson",
        "",
        "",
        "",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "expo-superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 9
    const-string v2, "identifier"

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v2, "name"

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getUrl-24UBhI0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/superwall/sdk/models/paywall/PaywallURL;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v3, Lexpo/modules/superwallexpo/json/Experiment;->Companion:Lexpo/modules/superwallexpo/json/Experiment$Companion;

    invoke-virtual {v3, v2}, Lexpo/modules/superwallexpo/json/Experiment$Companion;->toJson(Lcom/superwall/sdk/models/triggers/Experiment;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "experiment"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getProducts()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 101
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "type"

    const-string v7, "id"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 102
    check-cast v5, Lcom/superwall/sdk/models/product/ProductItem;

    .line 18
    new-array v10, v10, [Lkotlin/Pair;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/product/ProductItem;->getType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v10, v9

    .line 19
    invoke-virtual {v5}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v10, v8

    .line 17
    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 102
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 22
    const-string v2, "products"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getProductIds()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    const-string v3, "productIds"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentedByEventWithName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "presentedByEventWithName"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_2
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentedByEventWithId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "presentedByEventWithId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_3
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentedByEventAt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "presentedByEventAt"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_4
    const-string v2, "presentedBy"

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentedBy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentationSourceType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "presentationSourceType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_5
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getResponseLoadStartTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "responseLoadStartTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_6
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getResponseLoadCompleteTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "responseLoadCompleteTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_7
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getResponseLoadFailTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "responseLoadFailTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_8
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getResponseLoadDuration()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-string v5, "responseLoadDuration"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_9
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isFreeTrialAvailable"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getFeatureGatingBehavior()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/superwallexpo/json/FeatureGatingBehaviorKt;->rawValue(Lcom/superwall/sdk/models/config/FeatureGatingBehavior;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "featureGatingBehavior"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-result-object v2

    invoke-static {v2}, Lexpo/modules/superwallexpo/json/PaywallCloseReasonKt;->rawValue(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "closeReason"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getWebViewLoadStartTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "webViewLoadStartTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_a
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getWebViewLoadCompleteTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v3, "webViewLoadCompleteTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_b
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getWebViewLoadFailTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "webViewLoadFailTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_c
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getWebViewLoadDuration()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_d

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-string v5, "webViewLoadDuration"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_d
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getProductsLoadStartTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v3, "productsLoadStartTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_e
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getProductsLoadCompleteTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v3, "productsLoadCompleteTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_f
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getProductsLoadFailTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v3, "productsLoadFailTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_10
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getProductsLoadDuration()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_11

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-string v5, "productsLoadDuration"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_11
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPaywalljsVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v3, "paywalljsVersion"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_12
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getComputedPropertyRequests()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 106
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 107
    check-cast v5, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;

    .line 54
    new-array v11, v10, [Lkotlin/Pair;

    const-string v12, "placementName"

    invoke-virtual {v5}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getEventName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v11, v9

    .line 55
    invoke-virtual {v5}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getType()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v11, v8

    .line 53
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 107
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_13
    check-cast v3, Ljava/util/List;

    .line 58
    const-string v2, "computedPropertyRequests"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getSurveys()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 110
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v12, 0x3

    const/4 v13, 0x5

    const-string v14, "title"

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 111
    check-cast v5, Lcom/superwall/sdk/config/models/Survey;

    .line 61
    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getOptions()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    move/from16 v16, v8

    .line 112
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v17, v9

    invoke-static {v15, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 113
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 114
    check-cast v15, Lcom/superwall/sdk/config/models/SurveyOption;

    const/16 v18, 0x4

    .line 63
    new-array v11, v10, [Lkotlin/Pair;

    move/from16 v19, v10

    invoke-virtual {v15}, Lcom/superwall/sdk/config/models/SurveyOption;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v11, v17

    .line 64
    invoke-virtual {v15}, Lcom/superwall/sdk/config/models/SurveyOption;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v11, v16

    .line 62
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    .line 114
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v10, v19

    goto :goto_3

    :cond_14
    move/from16 v19, v10

    const/16 v18, 0x4

    .line 115
    check-cast v8, Ljava/util/List;

    const/16 v9, 0x9

    .line 69
    new-array v9, v9, [Lkotlin/Pair;

    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v17

    .line 70
    const-string v10, "message"

    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v16

    .line 71
    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v19

    .line 72
    const-string v10, "assignmentKey"

    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getAssignmentKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v12

    .line 73
    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getIncludeCloseOption()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "includeCloseOption"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v18

    .line 74
    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getIncludeOtherOption()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "includeOtherOption"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v13

    .line 75
    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getPresentationProbability()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v11, "presentationProbability"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v9, v11

    .line 76
    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/Survey;->getPresentationCondition()Lcom/superwall/sdk/config/models/SurveyShowCondition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/config/models/SurveyShowCondition;->getRawValue()Ljava/lang/String;

    move-result-object v5

    const-string v10, "presentationCondition"

    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v10, 0x7

    aput-object v5, v9, v10

    .line 77
    const-string v5, "options"

    invoke-static {v5, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v8, 0x8

    aput-object v5, v9, v8

    .line 68
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 111
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v19

    goto/16 :goto_2

    :cond_15
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v19, v10

    const/16 v18, 0x4

    .line 116
    check-cast v3, Ljava/util/List;

    .line 80
    const-string v2, "surveys"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getLocalNotifications()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 119
    check-cast v4, Lcom/superwall/sdk/models/paywall/LocalNotification;

    .line 84
    new-array v5, v13, [Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v5, v17

    .line 85
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v5, v16

    .line 86
    const-string v8, "body"

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v5, v19

    .line 87
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getType()Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    move-result-object v8

    invoke-static {v8}, Lexpo/modules/superwallexpo/json/LocalNotificationTypeKt;->toJson(Lcom/superwall/sdk/models/paywall/LocalNotificationType;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v5, v12

    .line 88
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/LocalNotification;->getDelay()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v8, "delay"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v5, v18

    .line 83
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 119
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 120
    :cond_16
    check-cast v3, Ljava/util/List;

    .line 91
    const-string v2, "localNotifications"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, "state"

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getState()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v1

    invoke-static {v1}, Lexpo/modules/superwallexpo/json/CustomerInfoKt;->toJson(Lcom/superwall/sdk/models/customer/CustomerInfo;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "customerInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
