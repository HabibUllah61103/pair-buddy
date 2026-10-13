.class final Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PublicPresentation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->registerPaywall(Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,346:1\n135#2,10:347\n*S KotlinDebug\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2\n*L\n202#1:347,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.superwall.sdk.paywall.presentation.PublicPresentationKt$registerPaywall$2"
    f = "PublicPresentation.kt"
    i = {}
    l = {
        0xcb,
        0xcc
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $collectionWillStart:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

.field final synthetic $publisher:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableDeferred;Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/RegisterContext;",
            "Lcom/superwall/sdk/paywall/presentation/RegisterRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$collectionWillStart:Lkotlinx/coroutines/CompletableDeferred;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$publisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$collectionWillStart:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$publisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lcom/superwall/sdk/paywall/presentation/RegisterContext;Lcom/superwall/sdk/paywall/presentation/RegisterRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 201
    iget v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v11, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$collectionWillStart:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->$publisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 203
    :try_start_2
    iput-object v5, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 205
    :goto_0
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->getTrackAndPresentContext()Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;

    move-result-object p1

    .line 207
    new-instance v6, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;

    .line 208
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getPlacement()Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getParams()Ljava/util/Map;

    move-result-object v8

    .line 210
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getPaywallOverrides()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    move-result-object v9

    .line 211
    invoke-virtual {v4}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getCompletion()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    move v10, v3

    .line 207
    invoke-direct/range {v6 .. v11}, Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;ZLkotlinx/coroutines/flow/MutableSharedFlow;)V

    const/4 v1, 0x0

    .line 204
    iput-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$2;->label:I

    invoke-static {p1, v6, p0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->performTrackAndPresent(Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    .line 215
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 350
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 352
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 355
    :cond_6
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 216
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
