.class public final synthetic Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->$r8$lambda$g7q8O2CpqafFMLLXCzcSjMAg3YY(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
