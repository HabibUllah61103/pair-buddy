.class public final Lcom/superwall/sdk/paywall/request/PaywallLogic;
.super Ljava/lang/Object;
.source "PaywallLogic.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/request/PaywallLogic$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallLogic.kt\ncom/superwall/sdk/paywall/request/PaywallLogic\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1755#2,3:213\n1755#2,3:216\n*S KotlinDebug\n*F\n+ 1 PaywallLogic.kt\ncom/superwall/sdk/paywall/request/PaywallLogic\n*L\n140#1:213,3\n209#1:216,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005JZ\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082;\u0008\u0002\u0010\u000e\u001a5\u0008\u0001\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0007\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0016JI\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001e0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$\u00a2\u0006\u0002\u0010%J:\u0010&\u001a\u00020 2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J=\u0010\'\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0010(\u001a\u0004\u0018\u00010)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002\u00a2\u0006\u0002\u0010-J\u001e\u0010.\u001a\u00020 2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u0006\u0010!\u001a\u00020\"H\u0002\u00a8\u00060"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/request/PaywallLogic;",
        "",
        "<init>",
        "()V",
        "requestHash",
        "",
        "identifier",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "locale",
        "joinedSubstituteProductIds",
        "handlePaywallError",
        "",
        "error",
        "trackEvent",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
        "(Ljava/lang/Throwable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function2;)Ljava/lang/Throwable;",
        "getVariablesAndFreeTrial",
        "Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;",
        "productItems",
        "",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "productsByFullId",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "isFreeTrialAvailableOverride",
        "",
        "customerInfo",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "introOfferEligibility",
        "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
        "(Ljava/util/List;Ljava/util/Map;Ljava/lang/Boolean;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;",
        "computeHasFreeTrial",
        "isWebTrialAvailable",
        "trialDays",
        "",
        "entitlements",
        "",
        "Lcom/superwall/sdk/models/entitlements/Entitlement;",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z",
        "hasEverHadEntitlement",
        "productEntitlements",
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


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/paywall/request/PaywallLogic;


# direct methods
.method public static synthetic $r8$lambda$7VZjDjsw5kg7i3PZhhjzFmTY6Ao(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->hasEverHadEntitlement$lambda$3(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cPd17x06jWsbn_eYfCPHT8p7VFY(Lcom/superwall/sdk/models/entitlements/Entitlement;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->hasEverHadEntitlement$lambda$2(Lcom/superwall/sdk/models/entitlements/Entitlement;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallLogic;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/request/PaywallLogic;-><init>()V

    sput-object v0, Lcom/superwall/sdk/paywall/request/PaywallLogic;->INSTANCE:Lcom/superwall/sdk/paywall/request/PaywallLogic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final computeHasFreeTrial(Ljava/util/List;Ljava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
            ")Z"
        }
    .end annotation

    .line 140
    check-cast p1, Ljava/lang/Iterable;

    .line 213
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem;

    .line 141
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 143
    instance-of v3, v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    if-nez v3, :cond_4

    .line 144
    instance-of v3, v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    instance-of v3, v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    if-eqz v3, :cond_2

    .line 148
    sget-object v5, Lcom/superwall/sdk/paywall/request/PaywallLogic;->INSTANCE:Lcom/superwall/sdk/paywall/request/PaywallLogic;

    .line 149
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 150
    check-cast v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;->getProduct()Lcom/superwall/sdk/models/product/StripeProduct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/StripeProduct;->getTrialDays()Ljava/lang/Integer;

    move-result-object v7

    .line 151
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getEntitlements()Ljava/util/Set;

    move-result-object v8

    move-object v9, p3

    move-object v10, p4

    .line 148
    invoke-direct/range {v5 .. v10}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->isWebTrialAvailable(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z

    move-result p3

    goto :goto_2

    :cond_2
    move-object v9, p3

    move-object v10, p4

    .line 156
    instance-of p3, v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    if-eqz p3, :cond_3

    .line 157
    sget-object v5, Lcom/superwall/sdk/paywall/request/PaywallLogic;->INSTANCE:Lcom/superwall/sdk/paywall/request/PaywallLogic;

    .line 158
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 159
    check-cast v2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;->getProduct()Lcom/superwall/sdk/models/product/PaddleProduct;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/models/product/PaddleProduct;->getTrialDays()Ljava/lang/Integer;

    move-result-object v7

    .line 160
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getEntitlements()Ljava/util/Set;

    move-result-object v8

    .line 157
    invoke-direct/range {v5 .. v10}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->isWebTrialAvailable(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z

    move-result p3

    goto :goto_2

    .line 141
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    move-object v9, p3

    move-object v10, p4

    .line 145
    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getHasFreeTrial()Z

    move-result p3

    if-ne p3, v4, :cond_5

    move p3, v4

    goto :goto_2

    :cond_5
    move p3, v1

    :goto_2
    if-eqz p3, :cond_6

    return v4

    :cond_6
    move-object p3, v9

    move-object p4, v10

    goto :goto_0

    :cond_7
    return v1
.end method

.method public static synthetic getVariablesAndFreeTrial$default(Lcom/superwall/sdk/paywall/request/PaywallLogic;Ljava/util/List;Ljava/util/Map;Ljava/lang/Boolean;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 105
    sget-object p5, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->AUTOMATIC:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->getVariablesAndFreeTrial(Ljava/util/List;Ljava/util/Map;Ljava/lang/Boolean;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic handlePaywallError$default(Lcom/superwall/sdk/paywall/request/PaywallLogic;Ljava/lang/Throwable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->handlePaywallError(Ljava/lang/Throwable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function2;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private final hasEverHadEntitlement(Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ")Z"
        }
    .end annotation

    .line 200
    invoke-virtual {p2}, Lcom/superwall/sdk/models/customer/CustomerInfo;->isPlaceholder$superwall_release()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/models/customer/CustomerInfo;->getEntitlements()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 204
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallLogic$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/request/PaywallLogic$$ExternalSyntheticLambda0;-><init>()V

    .line 205
    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance v0, Lcom/superwall/sdk/paywall/request/PaywallLogic$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/request/PaywallLogic$$ExternalSyntheticLambda1;-><init>()V

    .line 206
    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 207
    invoke-static {p2}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p2

    .line 209
    check-cast p1, Ljava/lang/Iterable;

    .line 216
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 217
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 209
    invoke-virtual {v0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private static final hasEverHadEntitlement$lambda$2(Lcom/superwall/sdk/models/entitlements/Entitlement;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getLatestProductId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getStore()Lcom/superwall/sdk/models/product/Store;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/models/product/Store;->SUPERWALL:Lcom/superwall/sdk/models/product/Store;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final hasEverHadEntitlement$lambda$3(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/superwall/sdk/models/entitlements/Entitlement;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isWebTrialAvailable(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/entitlements/Entitlement;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-gtz p2, :cond_1

    return v0

    .line 176
    :cond_1
    sget-object p2, Lcom/superwall/sdk/paywall/request/PaywallLogic$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->ordinal()I

    move-result p5

    aget p2, p2, p5

    const/4 p5, 0x1

    if-eq p2, p5, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 182
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 183
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 184
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 185
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " has trialDays > 0 but no entitlements \u2014 skipping trial eligibility check"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 183
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v0

    .line 191
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->hasEverHadEntitlement(Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;)Z

    move-result p1

    xor-int/2addr p1, p5

    return p1

    .line 176
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    return p5

    :cond_5
    return v0
.end method

.method public static synthetic requestHash$default(Lcom/superwall/sdk/paywall/request/PaywallLogic;Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    .line 38
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->requestHash(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getVariablesAndFreeTrial(Ljava/util/List;Ljava/util/Map;Ljava/lang/Boolean;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
            ")",
            "Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;"
        }
    .end annotation

    const-string v0, "productItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productsByFullId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introOfferEligibility"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/product/ProductItem;

    .line 110
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz v3, :cond_0

    .line 113
    new-instance v4, Lcom/superwall/sdk/models/product/ProductVariable;

    .line 114
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getAttributes()Ljava/util/Map;

    move-result-object v3

    .line 113
    invoke-direct {v4, v2, v3}, Lcom/superwall/sdk/models/product/ProductVariable;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 123
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    .line 125
    :cond_2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/superwall/sdk/paywall/request/PaywallLogic;->computeHasFreeTrial(Ljava/util/List;Ljava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z

    move-result p1

    .line 128
    :goto_1
    new-instance p2, Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;

    invoke-direct {p2, v0, p1}, Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;-><init>(Ljava/util/List;Z)V

    return-object p2
.end method

.method public final handlePaywallError(Ljava/lang/Throwable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function2;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/superwall/sdk/analytics/internal/TrackingResult;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string p2, "error"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 61
    new-instance p1, Lcom/superwall/sdk/paywall/request/PaywallLogic$handlePaywallError$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/superwall/sdk/paywall/request/PaywallLogic$handlePaywallError$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Not Found"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public final requestHash(Ljava/lang/String;Lcom/superwall/sdk/models/events/EventData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "locale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/superwall/sdk/models/events/EventData;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "$called_manually"

    :cond_1
    if-eqz p4, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    const-string p4, ""

    .line 51
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
