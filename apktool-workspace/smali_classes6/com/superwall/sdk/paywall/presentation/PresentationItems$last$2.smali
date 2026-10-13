.class final Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PresentationItems.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/PresentationItems;->setLast(Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;)V
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
    c = "com.superwall.sdk.paywall.presentation.PresentationItems$last$2"
    f = "PresentationItems.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $newValue:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/paywall/presentation/PresentationItems;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/PresentationItems;",
            "Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->this$0:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->$newValue:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->this$0:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->$newValue:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    invoke-direct {p1, v0, v1, p2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;-><init>(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 19
    iget v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->this$0:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PresentationItems$last$2;->$newValue:Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    invoke-static {p1, v0}, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->access$set_last$p(Lcom/superwall/sdk/paywall/presentation/PresentationItems;Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;)V

    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
