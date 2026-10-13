.class final Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IdentityPendingInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/identity/IdentityPendingInterceptor;->install(Lcom/superwall/sdk/misc/primitives/StateActor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;+",
        "Ljava/lang/Object;",
        ">;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0004\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "action",
        "",
        "next",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;"
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
    c = "com.superwall.sdk.identity.IdentityPendingInterceptor$install$2"
    f = "IdentityPendingInterceptor.kt"
    i = {
        0x0
    }
    l = {
        0x12
    }
    m = "invokeSuspend"
    n = {
        "action"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $actor:Lcom/superwall/sdk/misc/primitives/StateActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/superwall/sdk/misc/primitives/StateActor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->invoke(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    invoke-direct {v0, v1, p3}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 16
    iget v1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->L$0:Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->L$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 18
    :try_start_1
    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->label:I

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 21
    :goto_0
    nop

    instance-of p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    new-instance v1, Lcom/superwall/sdk/identity/IdentityState$Updates$EndIdentify;

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$EndIdentify;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {p1, v1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_1

    .line 22
    :cond_3
    instance-of p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Updates$EndAttributes;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$EndAttributes;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_1

    .line 23
    :cond_4
    instance-of p1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 26
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 21
    :goto_2
    instance-of v1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    if-nez v1, :cond_7

    .line 22
    instance-of v1, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;

    if-nez v1, :cond_6

    .line 23
    instance-of v0, v0, Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    sget-object v1, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    sget-object v1, Lcom/superwall/sdk/identity/IdentityState$Updates$EndAttributes;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$EndAttributes;

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_3

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;->$actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    new-instance v2, Lcom/superwall/sdk/identity/IdentityState$Updates$EndIdentify;

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$EndIdentify;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 23
    :cond_8
    :goto_3
    throw p1
.end method
