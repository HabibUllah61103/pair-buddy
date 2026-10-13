.class public final synthetic Lcom/superwall/sdk/billing/BillingClientUseCase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/billing/BillingClientUseCase;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/billing/BillingClientUseCase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/billing/BillingClientUseCase$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/billing/BillingClientUseCase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/billing/BillingClientUseCase$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/billing/BillingClientUseCase;

    check-cast p1, Lcom/superwall/sdk/billing/BillingError;

    invoke-static {v0, p1}, Lcom/superwall/sdk/billing/BillingClientUseCase;->$r8$lambda$5l_vzoBlLfH4IAJkFOd9S0L45gk(Lcom/superwall/sdk/billing/BillingClientUseCase;Lcom/superwall/sdk/billing/BillingError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
