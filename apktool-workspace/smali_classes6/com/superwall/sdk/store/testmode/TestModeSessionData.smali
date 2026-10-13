.class public final Lcom/superwall/sdk/store/testmode/TestModeSessionData;
.super Ljava/lang/Object;
.source "TestModeState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008\"\u0004\u0008\u001c\u0010\nR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/TestModeSessionData;",
        "",
        "<init>",
        "()V",
        "products",
        "",
        "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
        "getProducts",
        "()Ljava/util/List;",
        "setProducts",
        "(Ljava/util/List;)V",
        "testProductsByFullId",
        "",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "getTestProductsByFullId",
        "()Ljava/util/Map;",
        "setTestProductsByFullId",
        "(Ljava/util/Map;)V",
        "entitlementIds",
        "",
        "getEntitlementIds",
        "()Ljava/util/Set;",
        "setEntitlementIds",
        "(Ljava/util/Set;)V",
        "entitlementSelections",
        "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
        "getEntitlementSelections",
        "setEntitlementSelections",
        "freeTrialOverride",
        "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "getFreeTrialOverride",
        "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "setFreeTrialOverride",
        "(Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V",
        "overriddenSubscriptionStatus",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "getOverriddenSubscriptionStatus",
        "()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "setOverriddenSubscriptionStatus",
        "(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V",
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
.field private entitlementIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entitlementSelections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation
.end field

.field private freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

.field private overriddenSubscriptionStatus:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
            ">;"
        }
    .end annotation
.end field

.field private testProductsByFullId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->products:Ljava/util/List;

    .line 19
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->testProductsByFullId:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->entitlementIds:Ljava/util/Set;

    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->entitlementSelections:Ljava/util/List;

    .line 22
    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    iput-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-void
.end method


# virtual methods
.method public final getEntitlementIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->entitlementIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getEntitlementSelections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->entitlementSelections:Ljava/util/List;

    return-object v0
.end method

.method public final getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method

.method public final getOverriddenSubscriptionStatus()Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->overriddenSubscriptionStatus:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-object v0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->products:Ljava/util/List;

    return-object v0
.end method

.method public final getTestProductsByFullId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->testProductsByFullId:Ljava/util/Map;

    return-object v0
.end method

.method public final setEntitlementIds(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->entitlementIds:Ljava/util/Set;

    return-void
.end method

.method public final setEntitlementSelections(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->entitlementSelections:Ljava/util/List;

    return-void
.end method

.method public final setFreeTrialOverride(Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-void
.end method

.method public final setOverriddenSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->overriddenSubscriptionStatus:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    return-void
.end method

.method public final setProducts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->products:Ljava/util/List;

    return-void
.end method

.method public final setTestProductsByFullId(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->testProductsByFullId:Ljava/util/Map;

    return-void
.end method
