.class final Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2$1;
.super Ljava/lang/Object;
.source "PaywallView.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 242
    iget-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object p2

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetCustomerInfo;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetCustomerInfo;-><init>(Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p2, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 243
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 241
    check-cast p1, Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$startStateListener$2$1;->emit(Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
