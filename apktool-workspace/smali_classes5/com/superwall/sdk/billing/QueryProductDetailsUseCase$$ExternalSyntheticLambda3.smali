.class public final synthetic Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

.field public final synthetic f$2:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;->f$1:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    iput-object p3, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;->f$2:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;->f$1:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    iget-object v2, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda3;->f$2:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->$r8$lambda$6HZBiKPd7XhkXD_RUSx56-aY308(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
