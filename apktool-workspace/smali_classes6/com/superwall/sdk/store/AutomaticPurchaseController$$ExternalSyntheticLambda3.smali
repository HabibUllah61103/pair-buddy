.class public final synthetic Lcom/superwall/sdk/store/AutomaticPurchaseController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {p1, p2}, Lcom/superwall/sdk/store/AutomaticPurchaseController;->$r8$lambda$XROV1lUbm4t-aPPf3H_gqUjiNdo(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    return-object p1
.end method
