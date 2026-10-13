.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

.field public final synthetic f$1:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    invoke-static {v0, v1, v2, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$InitiateDismiss;->$r8$lambda$QSc_pqKzO_nqW4CNBftq03FtYK0(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    return-object p1
.end method
