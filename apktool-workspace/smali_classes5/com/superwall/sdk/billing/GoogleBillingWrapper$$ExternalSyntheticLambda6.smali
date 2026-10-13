.class public final synthetic Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    check-cast p1, Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {v0, p1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->$r8$lambda$_yO3Znx_Y2hiaiIWTIytmKmvZR0(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    return-object p1
.end method
