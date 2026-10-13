.class final Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaywallView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.superwall.sdk.paywall.view.PaywallView$showAlert$1"
    f = "PaywallView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $actionTitle:Ljava/lang/String;

.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $closeActionTitle:Ljava/lang/String;

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $onClose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method public static synthetic $r8$lambda$4V6CMXJqULtJjnlXt6RKf9efAgY(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->invokeSuspend$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RD6ek-A8erOHCvZWoymVKDEKivY(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$actionTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$closeActionTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$action:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$onClose:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    .line 790
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 791
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    .line 793
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 794
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$actionTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$closeActionTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$action:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$onClose:Lkotlin/jvm/functions/Function0;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 781
    iget v0, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 783
    sget-object v1, Lcom/superwall/sdk/misc/AlertControllerFactory;->INSTANCE:Lcom/superwall/sdk/misc/AlertControllerFactory;

    .line 784
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$activity:Landroid/app/Activity;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    .line 785
    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$title:Ljava/lang/String;

    .line 786
    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$message:Ljava/lang/String;

    .line 787
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$actionTitle:Ljava/lang/String;

    .line 788
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$closeActionTitle:Ljava/lang/String;

    .line 783
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$action:Lkotlin/jvm/functions/Function0;

    new-instance v7, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->$onClose:Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {v1 .. v8}, Lcom/superwall/sdk/misc/AlertControllerFactory;->make(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 796
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 798
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$showAlert$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/view/PaywallView;->getController()Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;

    move-result-object p1

    new-instance v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;

    sget-object v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;->INSTANCE:Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    check-cast v1, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates$SetLoadingState;-><init>(Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/paywall/view/PaywallView$PaywallController;->updateState(Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)V

    .line 799
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 781
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
