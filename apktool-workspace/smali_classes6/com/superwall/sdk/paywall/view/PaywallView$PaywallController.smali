.class public final Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;
.super Ljava/lang/Object;
.source "PaywallView.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallStateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaywallController"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView$PaywallController\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,1175:1\n230#2,5:1176\n*S KotlinDebug\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView$PaywallController\n*L\n131#1:1176,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallStateDelegate;",
        "initialState",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/view/PaywallViewState;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "currentState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "state",
        "getState",
        "()Lcom/superwall/sdk/paywall/view/PaywallViewState;",
        "updateState",
        "",
        "update",
        "Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;",
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
.field private _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final currentState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallViewState;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 126
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->currentState:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final getCurrentState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/paywall/view/PaywallViewState;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->currentState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    return-object v0
.end method

.method public updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V
    .locals 4

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 1177
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1178
    move-object v2, v1

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    .line 133
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;->getTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/view/PaywallViewState;

    .line 1179
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method
