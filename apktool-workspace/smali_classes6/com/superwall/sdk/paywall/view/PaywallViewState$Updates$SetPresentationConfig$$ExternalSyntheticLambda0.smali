.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetPresentationConfig;->$r8$lambda$u38u8r_wG1pNxvHf8PIfH-kLwUM(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/paywall/view/PaywallViewState;)Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p1

    return-object p1
.end method
