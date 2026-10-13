.class public final synthetic Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    iput-object p2, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;

    iget-object v1, p0, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;->$r8$lambda$eDaWWowm9RjWcieutl9olVb0JXo(Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;Ljava/util/Set;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
