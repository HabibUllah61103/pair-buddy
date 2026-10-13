.class public final synthetic Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

.field public final synthetic f$1:Lcom/superwall/sdk/Superwall;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Lkotlinx/coroutines/flow/MutableSharedFlow;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/Superwall;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$3:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/Superwall;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2$$ExternalSyntheticLambda0;->f$3:Lkotlinx/coroutines/flow/MutableSharedFlow;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/superwall/sdk/paywall/presentation/internal/operators/PresentPaywallKt$presentPaywallView$2;->$r8$lambda$m5e9zybV6cunxhtwaMrnHJTrBSE(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableSharedFlow;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
