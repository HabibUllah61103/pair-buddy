.class final Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;->onCreate(Landroid/os/Bundle;)V
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
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.ReactActivityDelegateWrapper$onCreate$2"
    f = "ReactActivityDelegateWrapper.kt"
    i = {}
    l = {
        0x91,
        0xa4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/ReactActivityDelegateWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;

    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-direct {p1, v0, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 144
    iget v1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getDelayLoadAppHandler(Lexpo/modules/ReactActivityDelegateWrapper;)Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->label:I

    invoke-static {p1, v1, v4}, Lexpo/modules/ReactActivityDelegateWrapper;->access$awaitDelayLoadAppWhenReady(Lexpo/modules/ReactActivityDelegateWrapper;Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 146
    :cond_3
    :goto_0
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getLoadAppReady$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->isWideColorGamutEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 149
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getActivity$p(Lexpo/modules/ReactActivityDelegateWrapper;)Lcom/facebook/react/ReactActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setColorMode(I)V

    .line 152
    :cond_4
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->composeLaunchOptions()Landroid/os/Bundle;

    move-result-object p1

    .line 153
    new-instance v1, Lcom/facebook/react/ReactDelegate;

    .line 154
    iget-object v4, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v4}, Lexpo/modules/ReactActivityDelegateWrapper;->getPlainActivity()Landroid/app/Activity;

    move-result-object v4

    .line 155
    iget-object v5, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v5}, Lexpo/modules/ReactActivityDelegateWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v5

    .line 156
    iget-object v6, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v6}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-direct {v1, v4, v5, v6, p1}, Lcom/facebook/react/ReactDelegate;-><init>(Landroid/app/Activity;Lcom/facebook/react/ReactHost;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 160
    const-class p1, Lcom/facebook/react/ReactActivityDelegate;

    const-string v4, "mReactDelegate"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 162
    iget-object v3, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {v3}, Lexpo/modules/ReactActivityDelegateWrapper;->getDelegate$expo_release()Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 164
    iget-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-virtual {p1}, Lexpo/modules/ReactActivityDelegateWrapper;->getMainComponentName()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$onCreate$2;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Lexpo/modules/ReactActivityDelegateWrapper;->access$loadAppImpl(Lexpo/modules/ReactActivityDelegateWrapper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    .line 166
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
