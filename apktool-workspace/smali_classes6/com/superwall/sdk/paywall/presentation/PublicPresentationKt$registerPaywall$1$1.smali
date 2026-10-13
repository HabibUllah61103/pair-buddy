.class final Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1;
.super Ljava/lang/Object;
.source "PublicPresentation.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,346:1\n135#2,10:347\n*S KotlinDebug\n*F\n+ 1 PublicPresentation.kt\ncom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1\n*L\n144#1:347,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

.field final synthetic $request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/presentation/RegisterRequest;Lcom/superwall/sdk/paywall/presentation/RegisterContext;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1;->$request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1;->$context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 144
    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1;->$request:Lcom/superwall/sdk/paywall/presentation/RegisterRequest;

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1;->$context:Lcom/superwall/sdk/paywall/presentation/RegisterContext;

    .line 146
    :try_start_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getHandler()Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->getOnCustomCallbackHandler$superwall_release()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->getRegisterCustomCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    move-object v3, p1

    check-cast v3, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-interface {v0, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getHandler()Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->getOnPresentHandler$superwall_release()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_c

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Presented;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 157
    :cond_1
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;

    if-eqz v1, :cond_9

    .line 158
    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;->component1()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Dismissed;->component2()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;

    move-result-object p1

    .line 160
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/RegisterContext;->getUnregisterCustomCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getHandler()Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->getOnDismissHandler$superwall_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_3
    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Restored;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 167
    :cond_4
    instance-of p1, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    if-eqz p1, :cond_7

    .line 168
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-result-object p1

    .line 169
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getFeatureGatingBehavior()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->getStateShouldComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getCompletion()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 173
    :cond_5
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$WebViewFailedToLoad;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Gated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Gated;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 175
    sget-object p1, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;

    .line 176
    const-string v0, "SWKPresentationError"

    .line 178
    const-string v1, "Webview Failed"

    .line 179
    const-string v2, "Trying to present gated paywall but the webview could not load."

    const/16 v3, 0x6a

    .line 175
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/superwall/sdk/paywall/presentation/internal/InternalPresentationLogic;->presentationError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getHandler()Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->getOnErrorHandler$superwall_release()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 162
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 164
    :cond_8
    :goto_0
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getCompletion()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 187
    :cond_9
    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;

    if-eqz v0, :cond_b

    .line 188
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$Skipped;->component1()Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallSkippedReason;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getHandler()Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->getOnSkipHandler$superwall_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_a
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getCompletion()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 193
    :cond_b
    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    if-eqz v0, :cond_d

    .line 194
    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/RegisterRequest;->getHandler()Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/PaywallPresentationHandler;->getOnErrorHandler$superwall_release()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_c

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState$PresentationError;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    :cond_c
    :goto_1
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, v2}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    goto :goto_2

    .line 145
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 350
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 351
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 352
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 355
    :cond_e
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    .line 198
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 143
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$registerPaywall$1$1;->emit(Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
