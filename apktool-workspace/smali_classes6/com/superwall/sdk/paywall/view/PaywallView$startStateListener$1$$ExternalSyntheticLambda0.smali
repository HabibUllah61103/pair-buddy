.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$1$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    check-cast p2, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-static {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$1;->$r8$lambda$g8eR_OAHfi0HEif0KwALLtVUj8A(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
