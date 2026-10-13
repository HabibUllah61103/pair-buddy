.class public final synthetic Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic f$1:Lcom/superwall/sdk/billing/GoogleBillingWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingResult;Lcom/superwall/sdk/billing/GoogleBillingWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/billingclient/api/BillingResult;

    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;->f$1:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/billingclient/api/BillingResult;

    iget-object v1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda2;->f$1:Lcom/superwall/sdk/billing/GoogleBillingWrapper;

    invoke-static {v0, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->$r8$lambda$_N4wMOGuHkj3WOthVRdEdZXHuM8(Lcom/android/billingclient/api/BillingResult;Lcom/superwall/sdk/billing/GoogleBillingWrapper;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
