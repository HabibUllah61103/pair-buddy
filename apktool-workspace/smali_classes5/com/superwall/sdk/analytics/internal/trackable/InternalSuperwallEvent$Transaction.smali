.class public final Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;
.super Ljava/lang/Object;
.source "TrackableSuperwallEvent.kt"

# interfaces
.implements Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;,
        Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0002@ABq\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J*\u0010<\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00140=j\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0014`>H\u0096@\u00a2\u0006\u0002\u0010?R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\"R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R(\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u0010\u0015\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010)\"\u0004\u00081\u0010+R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00140\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010-R\u0014\u00104\u001a\u0002058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0014\u00108\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010)R\u0014\u0010:\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\"\u00a8\u0006B"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "state",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "model",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "source",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;",
        "isObserved",
        "",
        "demandScore",
        "",
        "demandTier",
        "",
        "userAttributes",
        "",
        "",
        "store",
        "<init>",
        "(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V",
        "getState",
        "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;",
        "getPaywallInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "getProduct",
        "()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "getModel",
        "()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
        "getSource",
        "()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;",
        "()Z",
        "getDemandScore",
        "()Ljava/lang/Integer;",
        "setDemandScore",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getDemandTier",
        "()Ljava/lang/String;",
        "setDemandTier",
        "(Ljava/lang/String;)V",
        "getUserAttributes",
        "()Ljava/util/Map;",
        "setUserAttributes",
        "(Ljava/util/Map;)V",
        "getStore",
        "setStore",
        "audienceFilterParams",
        "getAudienceFilterParams",
        "superwallPlacement",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "getSuperwallPlacement",
        "()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;",
        "rawName",
        "getRawName",
        "canImplicitlyTriggerPaywall",
        "getCanImplicitlyTriggerPaywall",
        "getSuperwallParameters",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "TransactionSource",
        "State",
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
.field private demandScore:Ljava/lang/Integer;

.field private demandTier:Ljava/lang/String;

.field private final isObserved:Z

.field private final model:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

.field private final paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field private final product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

.field private final source:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

.field private final state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

.field private store:Ljava/lang/String;

.field private userAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
            "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "store"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    .line 521
    iput-object p2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 522
    iput-object p3, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    .line 523
    iput-object p4, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->model:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    .line 524
    iput-object p5, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->source:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    .line 525
    iput-boolean p6, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->isObserved:Z

    .line 526
    iput-object p7, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandScore:Ljava/lang/Integer;

    .line 527
    iput-object p8, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandTier:Ljava/lang/String;

    .line 528
    iput-object p9, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->userAttributes:Ljava/util/Map;

    .line 529
    iput-object p10, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->store:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 529
    const-string v0, "PLAY_STORE"

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 519
    invoke-direct/range {v2 .. v12}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;ZLjava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAudienceFilterParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->audienceFilterParams()Ljava/util/Map;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v1

    instance-of v1, v1, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;

    if-eqz v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getFullIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    const-string v2, "abandoned_product_id"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getCanImplicitlyTriggerPaywall()Z
    .locals 1

    .line 668
    iget-boolean v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->isObserved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;->getCanImplicitlyTriggerPaywall()Z

    move-result v0

    return v0
.end method

.method public final getDemandScore()Ljava/lang/Integer;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandScore:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDemandTier()Ljava/lang/String;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandTier:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->model:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    return-object v0
.end method

.method public final getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    return-object v0
.end method

.method public final getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;->getRawName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSource()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->source:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    return-object v0
.end method

.method public final getState()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperwallParameters(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 671
    iget-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    .line 672
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;

    const/4 v1, 0x2

    const-string/jumbo v2, "store"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 673
    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v4, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-static {v0, v4, v3, v1, v3}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->eventParams$default(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 674
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->model:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->toDictionary()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 677
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->store:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->model:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "restore_via_purchase_attempt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 682
    :cond_2
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;

    const-string v4, "attr_demandTier"

    const-string v5, "attr_demandScore"

    if-nez v0, :cond_9

    .line 683
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;

    if-nez v0, :cond_9

    .line 684
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    if-nez v0, :cond_9

    .line 685
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Timeout;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 706
    :cond_3
    instance-of v0, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    if-eqz v0, :cond_8

    .line 707
    check-cast p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;->getError()Lcom/superwall/sdk/store/transactions/TransactionError;

    move-result-object p1

    .line 708
    instance-of v0, p1, Lcom/superwall/sdk/store/transactions/TransactionError$Failure;

    if-nez v0, :cond_5

    .line 709
    instance-of p1, p1, Lcom/superwall/sdk/store/transactions/TransactionError$Pending;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 707
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 711
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    invoke-virtual {p1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;->getError()Lcom/superwall/sdk/store/transactions/TransactionError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/store/transactions/TransactionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 713
    new-instance v0, Ljava/util/HashMap;

    .line 714
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 715
    iget-object v3, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    .line 716
    const-string v6, "message"

    invoke-static {v6, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 714
    invoke-virtual {v1, v3, p1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->eventParams(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 713
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 719
    iget-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandScore:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 720
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_6
    iget-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandTier:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 723
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_7
    move-object p1, v0

    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->store:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 671
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 687
    :cond_9
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v6, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->product:Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    invoke-static {v0, v6, v3, v1, v3}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->eventParams$default(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 688
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->model:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;->toDictionary()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 689
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 691
    :cond_a
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandScore:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 692
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_b
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandTier:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 695
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->store:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->source:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$TransactionSource;->getRaw()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    instance-of v1, v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    if-eqz v1, :cond_d

    .line 700
    const-string/jumbo v1, "user_attributes"

    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->userAttributes:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p1
.end method

.method public getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;
    .locals 4

    .line 629
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    .line 630
    instance-of v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;

    if-eqz v1, :cond_0

    .line 631
    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;

    .line 632
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Start;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 631
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionStart;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0

    .line 636
    :cond_0
    instance-of v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    if-eqz v1, :cond_1

    .line 637
    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;

    .line 638
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Fail;->getError()Lcom/superwall/sdk/store/transactions/TransactionError;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 637
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionFail;-><init>(Lcom/superwall/sdk/store/transactions/TransactionError;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0

    .line 642
    :cond_1
    instance-of v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;

    if-eqz v1, :cond_2

    .line 643
    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;

    .line 644
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Abandon;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-result-object v1

    .line 645
    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 643
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionAbandon;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0

    .line 648
    :cond_2
    instance-of v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    if-eqz v1, :cond_3

    .line 649
    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;

    .line 650
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;->getTransaction()Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast v2, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;

    invoke-virtual {v2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Complete;->getProduct()Lcom/superwall/sdk/store/abstractions/product/StoreProductType;

    move-result-object v2

    .line 652
    iget-object v3, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 649
    invoke-direct {v0, v1, v2, v3}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionComplete;-><init>(Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionType;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0

    .line 656
    :cond_3
    instance-of v1, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;

    if-eqz v1, :cond_4

    .line 657
    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;

    .line 658
    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->state:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;

    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Restore;->getRestoreType()Lcom/superwall/sdk/store/transactions/RestoreType;

    move-result-object v1

    .line 659
    iget-object v2, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 657
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionRestore;-><init>(Lcom/superwall/sdk/store/transactions/RestoreType;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0

    .line 662
    :cond_4
    instance-of v0, v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction$State$Timeout;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;

    iget-object v1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent$TransactionTimeout;-><init>(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    check-cast v0, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    return-object v0

    .line 629
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->userAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public final isObserved()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->isObserved:Z

    return v0
.end method

.method public final setDemandScore(Ljava/lang/Integer;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandScore:Ljava/lang/Integer;

    return-void
.end method

.method public final setDemandTier(Ljava/lang/String;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->demandTier:Ljava/lang/String;

    return-void
.end method

.method public final setStore(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->store:Ljava/lang/String;

    return-void
.end method

.method public final setUserAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Transaction;->userAttributes:Ljava/util/Map;

    return-void
.end method
