.class public final Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SuperwallPaywallActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->setupActivityWithView(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallPaywallActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallPaywallActivity.kt\ncom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,956:1\n1#2:957\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $view:Lcom/superwall/sdk/paywall/view/PaywallView;

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;->$view:Lcom/superwall/sdk/paywall/view/PaywallView;

    const/4 p1, 0x1

    .line 298
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 10

    .line 301
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    invoke-static {v0}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->access$paywallView(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getRerouteBackButton()Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;->ENABLED:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 302
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getOnBackPressed()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;->this$0:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    invoke-static {v2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->access$paywallView(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;)Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    .line 309
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$setupActivityWithView$1;->$view:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 310
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;-><init>()V

    move-object v5, v0

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    .line 311
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    move-object v6, v0

    check-cast v6, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 309
    invoke-static/range {v4 .. v9}, Lcom/superwall/sdk/paywall/view/PaywallView;->dismiss$superwall_release$default(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
