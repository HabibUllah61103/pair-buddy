.class public final synthetic Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/superwall/sdk/billing/BillingError;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/billing/BillingError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;->f$1:Lcom/superwall/sdk/billing/BillingError;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/superwall/sdk/billing/GoogleBillingWrapper$$ExternalSyntheticLambda3;->f$1:Lcom/superwall/sdk/billing/BillingError;

    invoke-static {v0, v1}, Lcom/superwall/sdk/billing/GoogleBillingWrapper;->$r8$lambda$WpGnCOdxnu4TZU79GAzka_hv8hQ(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
