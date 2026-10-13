.class final Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PublicPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismissPaywall(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,346:1\n135#2,10:347\n*S KotlinDebug\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2\n*L\n47#1:347,10\n*E\n"
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
    c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$dismissPaywall$2"
    f = "PublicPresentation.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x31,
        0x3b
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "completionSignal"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $params:Lcom/superwall/sdk/paywall/presentation/DismissParams;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$UnqBw7WC0HeoYR1R6zwrsEZ4hFs(Lkotlinx/coroutines/CompletableDeferred;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->invokeSuspend$lambda$3$lambda$1$lambda$0(Lkotlinx/coroutines/CompletableDeferred;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$agxGyKTuopa5leadKg9bCzqOt3M(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->invokeSuspend$lambda$4(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/DismissParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->$params:Lcom/superwall/sdk/paywall/presentation/DismissParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$1$lambda$0(Lkotlinx/coroutines/CompletableDeferred;)Lkotlin/Unit;
    .locals 1

    .line 50
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$4(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->$params:Lcom/superwall/sdk/paywall/presentation/DismissParams;

    invoke-direct {v0, v1, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;-><init>(Lcom/superwall/sdk/paywall/presentation/DismissParams;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v11, p0

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 45
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->$params:Lcom/superwall/sdk/paywall/presentation/DismissParams;

    .line 48
    :try_start_1
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/DismissParams;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 49
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/DismissParams;->getDismissAction()Lkotlin/jvm/functions/Function5;

    move-result-object v6

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/DismissParams;->getResult()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    move-result-object v8

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/DismissParams;->getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-result-object v9

    new-instance v10, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0;

    invoke-direct {v10, v5}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v11, p0

    :try_start_2
    invoke-interface/range {v6 .. v11}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v1, :cond_3

    goto :goto_5

    :cond_3
    move-object v3, v5

    .line 48
    :goto_0
    :try_start_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_4
    move-object v11, p0

    .line 53
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v5, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v5

    .line 348
    :goto_1
    :try_start_5
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v11, p0

    :goto_2
    move-object p1, v0

    move-object v3, v5

    .line 350
    :goto_3
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 352
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 355
    :cond_5
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 356
    :goto_4
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2$$ExternalSyntheticLambda1;-><init>()V

    .line 55
    invoke-static {v0, p1}, Lcom/superwall/sdk/misc/EitherKt;->onError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    .line 59
    move-object p1, v11

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v4, v11, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$0:Ljava/lang/Object;

    iput-object v4, v11, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->L$1:Ljava/lang/Object;

    iput v2, v11, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$dismissPaywall$2;->label:I

    invoke-interface {v3, p1}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_5
    return-object v1

    .line 60
    :cond_6
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
