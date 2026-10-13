.class final Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestModeModal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.store.testmode.ui.TestModeModal$show$2$3$1"
    f = "TestModeModal.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $deviceAttributes:Ljava/lang/String;

.field final synthetic $view:Landroid/view/View;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$_qjJbW0DV7TAA5tsWbMD9SwKEZc(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->invokeSuspend$lambda$0(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$deviceAttributes:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 101
    sget-object p2, Lcom/superwall/sdk/store/testmode/ui/TestModeAttributesViewer;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/TestModeAttributesViewer;

    check-cast p0, Landroid/content/Context;

    const-string v0, "Device Attributes"

    invoke-virtual {p2, p0, v0, p1}, Lcom/superwall/sdk/store/testmode/ui/TestModeAttributesViewer;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$view:Landroid/view/View;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$deviceAttributes:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;-><init>(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 99
    iget v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$view:Landroid/view/View;

    sget v0, Lcom/superwall/sdk/R$id;->device_attributes_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1;->$deviceAttributes:Ljava/lang/String;

    new-instance v2, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
