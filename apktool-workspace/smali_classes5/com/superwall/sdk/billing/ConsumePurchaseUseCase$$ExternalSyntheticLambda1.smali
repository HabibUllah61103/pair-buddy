.class public final synthetic Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;

    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, p1}, Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;->$r8$lambda$hzl2wF9NuGHmZMaBNOk5LpW8ZJE(Lcom/superwall/sdk/billing/ConsumePurchaseUseCase;Lcom/android/billingclient/api/BillingClient;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
