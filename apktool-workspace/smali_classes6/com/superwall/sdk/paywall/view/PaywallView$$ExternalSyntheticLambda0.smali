.class public final synthetic Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->$r8$lambda$C8fUAQALc_a_Fm6o1gDhEJbnmQU(Lcom/superwall/sdk/paywall/view/PaywallView;I)V

    return-void
.end method
