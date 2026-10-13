.class public final synthetic Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Lcom/superwall/sdk/billing/GetStoreProductsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$0:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$3:Ljava/util/Set;

    iput-object p5, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$5:Lcom/superwall/sdk/billing/GetStoreProductsCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$0:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    iget-object v1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$3:Ljava/util/Set;

    iget-object v4, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$4:Ljava/util/Map;

    iget-object v5, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda11;->f$5:Lcom/superwall/sdk/billing/GetStoreProductsCallback;

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->$r8$lambda$d-fkb_XkLWg5AuMcXSOsng5LvAc(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
