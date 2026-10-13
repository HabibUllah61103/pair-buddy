.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-boolean p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$3:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$1:Z

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda2;->f$3:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    invoke-static {v0, v1, v2, v3}, Lcom/superwall/sdk/paywall/view/PaywallView;->$r8$lambda$GuKKMoWgLA06Pr7bXqv1czAmdRc(Lcom/superwall/sdk/paywall/view/PaywallView;ZZLcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method
