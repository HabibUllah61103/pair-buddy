.class public final synthetic Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

.field public final synthetic f$1:Lcom/superwall/sdk/billing/GetStoreProductsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/superwall/sdk/billing/GetStoreProductsCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/superwall/sdk/billing/GetStoreProductsCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    iget-object v1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda1;->f$1:Lcom/superwall/sdk/billing/GetStoreProductsCallback;

    check-cast p1, Lcom/superwall/sdk/billing/BillingError;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->$r8$lambda$X85b_37fJqFLvK99ou_TokTQRKI(Lcom/superwall/sdk/billing/GoogleBillingWrapper;Lcom/superwall/sdk/billing/GetStoreProductsCallback;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
