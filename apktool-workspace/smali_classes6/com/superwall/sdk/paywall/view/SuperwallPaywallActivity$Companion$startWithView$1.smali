.class final Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuperwallPaywallActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;->startWithView(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.paywall.view.SuperwallPaywallActivity$Companion$startWithView$1"
    f = "SuperwallPaywallActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $presentationStyleOverride:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

.field final synthetic $view:Lcom/superwall/sdk/paywall/view/PaywallView;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Landroid/content/Context;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$view:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$presentationStyleOverride:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$view:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$presentationStyleOverride:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;-><init>(Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;Landroid/content/Context;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 92
    iget v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    sget-object p1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;->Companion:Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$view:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$key:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;->access$prepareViewForDisplay(Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion;Lcom/superwall/sdk/paywall/view/PaywallView;Ljava/lang/String;)V

    .line 95
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$context:Landroid/content/Context;

    const-class v1, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$presentationStyleOverride:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$view:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 96
    const-string v3, "viewKey"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 100
    sget-object v0, Lcom/superwall/sdk/network/JsonFactory;->Companion:Lcom/superwall/sdk/network/JsonFactory$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/network/JsonFactory$Companion;->getJSON_POLYMORPHIC()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->toIntentString(Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    const-string v1, "presentationStyleKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getBackgroundColor()I

    move-result v0

    .line 106
    invoke-static {v0}, Lcom/superwall/sdk/misc/Color_HelpersKt;->isLightColor(I)Z

    move-result v0

    .line 103
    const-string v1, "isLightBackgroundKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/SuperwallPaywallActivity$Companion$startWithView$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
