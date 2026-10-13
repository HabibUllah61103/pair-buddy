.class final Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SurveyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->handleDialogDismissal(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.superwall.sdk.paywall.view.survey.SurveyManager$handleDialogDismissal$1"
    f = "SurveyManager.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x104,
        0x108
    }
    m = "invokeSuspend"
    n = {
        "event",
        "outcome"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $customResponse:Ljava/lang/String;

.field final synthetic $factory:Lcom/superwall/sdk/dependencies/TriggerFactory;

.field final synthetic $option:Lcom/superwall/sdk/config/models/SurveyOption;

.field final synthetic $paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field final synthetic $paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

.field final synthetic $survey:Lcom/superwall/sdk/config/models/Survey;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/models/Survey;",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            "Lcom/superwall/sdk/dependencies/TriggerFactory;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$survey:Lcom/superwall/sdk/config/models/Survey;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$option:Lcom/superwall/sdk/config/models/SurveyOption;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$customResponse:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$factory:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$completion:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$survey:Lcom/superwall/sdk/config/models/Survey;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$option:Lcom/superwall/sdk/config/models/SurveyOption;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$customResponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$factory:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$completion:Lkotlin/jvm/functions/Function1;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;-><init>(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 248
    iget v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 250
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyResponse;

    .line 251
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$survey:Lcom/superwall/sdk/config/models/Survey;

    .line 252
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$option:Lcom/superwall/sdk/config/models/SurveyOption;

    .line 253
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$customResponse:Ljava/lang/String;

    .line 254
    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$paywallInfo:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    .line 250
    invoke-direct {v4, p1, v1, v5, v6}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SurveyResponse;-><init>(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    .line 258
    sget-object p1, Lcom/superwall/sdk/analytics/internal/TrackingLogic;->Companion:Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;

    .line 259
    move-object v1, v4

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    .line 260
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$factory:Lcom/superwall/sdk/dependencies/TriggerFactory;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->label:I

    invoke-interface {v5, v6}, Lcom/superwall/sdk/dependencies/TriggerFactory;->makeTriggers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    .line 248
    :goto_0
    check-cast p1, Ljava/util/Set;

    .line 261
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$paywallView:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 258
    invoke-virtual {v3, v1, p1, v5}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;->canTriggerPaywall(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/util/Set;Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    move-result-object p1

    .line 264
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    check-cast v4, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->label:I

    invoke-static {v1, v4, v3}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    .line 266
    :goto_2
    sget-object p1, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 267
    iget-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;->$completion:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->SHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
