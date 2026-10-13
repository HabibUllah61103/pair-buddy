.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

.field public final synthetic f$1:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field public final synthetic f$2:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    invoke-static {v0, v1, v2, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetRequest;->$r8$lambda$ZOVpjIypUj76_p1vAORy9clnDR8(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    return-object p1
.end method
