.class public final Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "SuperwallBillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallBillingFlowParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallBillingFlowParams.kt\ncom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1557#2:150\n1628#2,3:151\n*S KotlinDebug\n*F\n+ 1 SuperwallBillingFlowParams.kt\ncom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder\n*L\n39#1:150\n39#1:151,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0010J\u0014\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;",
        "",
        "<init>",
        "()V",
        "builder",
        "Lcom/android/billingclient/api/BillingFlowParams$Builder;",
        "productDetailsParams",
        "",
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
        "getProductDetailsParams$superwall_release",
        "()Ljava/util/List;",
        "setIsOfferPersonalized",
        "isOfferPersonalized",
        "",
        "setObfuscatedAccountId",
        "obfuscatedAccountId",
        "",
        "setObfuscatedProfileId",
        "obfuscatedProfileId",
        "setProductDetailsParamsList",
        "productDetailsParamsList",
        "",
        "setSkuDetails",
        "skuDetails",
        "Lcom/android/billingclient/api/SkuDetails;",
        "setSubscriptionUpdateParams",
        "params",
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;",
        "build",
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;",
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
.field private final builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

.field private final productDetailsParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->productDetailsParams:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;
    .locals 4

    .line 53
    new-instance v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;

    iget-object v1, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->productDetailsParams:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;-><init>(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getProductDetailsParams$superwall_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->productDetailsParams:Ljava/util/List;

    return-object v0
.end method

.method public final setIsOfferPersonalized(Z)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
    .locals 1

    .line 22
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    return-object p0
.end method

.method public final setObfuscatedAccountId(Ljava/lang/String;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
    .locals 1

    const-string v0, "obfuscatedAccountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    return-object p0
.end method

.method public final setObfuscatedProfileId(Ljava/lang/String;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
    .locals 1

    const-string v0, "obfuscatedProfileId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    return-object p0
.end method

.method public final setProductDetailsParamsList(Ljava/util/List;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
            ">;)",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;"
        }
    .end annotation

    const-string v0, "productDetailsParamsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->productDetailsParams:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    check-cast p1, Ljava/lang/Iterable;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 151
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 152
    check-cast v2, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;

    .line 39
    invoke-virtual {v2}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->toOriginal()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v2

    .line 152
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    return-object p0
.end method

.method public final setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use setProductDetailsParamsList instead"
    .end annotation

    const-string/jumbo v0, "skuDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    return-object p0
.end method

.method public final setSubscriptionUpdateParams(Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;)Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;->builder:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {p1}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;->toOriginal()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    return-object p0
.end method
