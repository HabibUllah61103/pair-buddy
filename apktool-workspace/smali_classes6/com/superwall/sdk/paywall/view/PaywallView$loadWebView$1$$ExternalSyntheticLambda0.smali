.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$loadWebView$1;->$r8$lambda$AXKfYwhp7gZZztETTuC2VyE0KWM(Lcom/superwall/sdk/paywall/view/PaywallView;ZI)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
