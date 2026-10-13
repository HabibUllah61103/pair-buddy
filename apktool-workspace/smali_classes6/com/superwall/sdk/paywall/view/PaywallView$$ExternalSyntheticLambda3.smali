.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->$r8$lambda$y2fVXLJvcLaKo1PEr5xT5bVQzSE(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
