.class final Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppSessionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/analytics/session/AppSessionManager;->detectNewSession()V
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
    c = "com.superwall.sdk.analytics.session.AppSessionManager$detectNewSession$1$1"
    f = "AppSessionManager.kt"
    i = {
        0x1,
        0x1,
        0x2
    }
    l = {
        0x71,
        0x74,
        0x7a,
        0x80
    }
    m = "invokeSuspend"
    n = {
        "deviceAttributes",
        "userAttributes",
        "userAttributes"
    }
    s = {
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/analytics/session/AppSessionManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/session/AppSessionManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->this$0:Lcom/superwall/sdk/analytics/session/AppSessionManager;

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

    new-instance p1, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;

    iget-object v0, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->this$0:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    invoke-direct {p1, v0, p2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;-><init>(Lcom/superwall/sdk/analytics/session/AppSessionManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    iget-object v5, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->this$0:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    invoke-static {p1}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->access$getDelegate$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->label:I

    invoke-interface {p1, v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;->makeSessionDeviceAttributes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    .line 112
    :cond_5
    :goto_0
    check-cast p1, Ljava/util/HashMap;

    .line 114
    iget-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->this$0:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    invoke-static {v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->access$getDelegate$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;->makeUserAttributesEvent()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$Attributes;

    move-result-object v1

    .line 116
    sget-object v7, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v7}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v7

    new-instance v8, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SessionStart;

    invoke-direct {v8, v6, v5, v6}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SessionStart;-><init>(Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->label:I

    invoke-static {v7, v8, v5}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, p1

    .line 121
    :goto_1
    iget-object p1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->this$0:Lcom/superwall/sdk/analytics/session/AppSessionManager;

    invoke-static {p1}, Lcom/superwall/sdk/analytics/session/AppSessionManager;->access$getDidTrackAppLaunch$p(Lcom/superwall/sdk/analytics/session/AppSessionManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 122
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    .line 123
    new-instance v7, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeviceAttributes;

    invoke-direct {v7, v5, v6, v4, v6}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$DeviceAttributes;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 122
    iput-object v1, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->label:I

    invoke-static {p1, v7, v4}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    .line 128
    :cond_7
    :goto_2
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/analytics/session/AppSessionManager$detectNewSession$1$1;->label:I

    invoke-static {p1, v1, v3}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_3
    return-object v0

    .line 129
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
