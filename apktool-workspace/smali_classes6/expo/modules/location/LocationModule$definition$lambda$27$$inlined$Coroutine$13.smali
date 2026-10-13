.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/location/LocationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$1\n+ 2 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n1#1,21:1\n219#2,20:22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0004H\n\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "it",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$1"
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
    c = "expo.modules.location.LocationModule$definition$lambda$27$$inlined$Coroutine$13"
    f = "LocationModule.kt"
    i = {
        0x0
    }
    l = {
        0x1c
    }
    m = "invokeSuspend"
    n = {
        "locationRequest"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/location/LocationModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->this$0:Lexpo/modules/location/LocationModule;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;

    iget-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {p1, p3, p2}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/location/LocationModule;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 217
    iget v1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->L$1:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;

    iget-object v0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 22
    sget-object v1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    iget-object v3, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->this$0:Lexpo/modules/location/LocationModule;

    invoke-static {v3}, Lexpo/modules/location/LocationModule;->access$getMContext$p(Lexpo/modules/location/LocationModule;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Lexpo/modules/location/LocationHelpers$Companion;->hasNetworkProviderEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v4

    .line 26
    :cond_3
    sget-object v1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    new-instance v3, Lexpo/modules/location/records/LocationOptions;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lexpo/modules/location/records/LocationOptions;-><init>(ILjava/lang/Integer;ZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Lexpo/modules/location/LocationHelpers$Companion;->prepareLocationRequest$expo_location_release(Lexpo/modules/location/records/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 28
    iput-object v1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->L$0:Ljava/lang/Object;

    iput-object p0, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->L$1:Ljava/lang/Object;

    iput v2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->label:I

    new-instance v2, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 29
    iget-object v4, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$13;->this$0:Lexpo/modules/location/LocationModule;

    .line 31
    new-instance v5, Lexpo/modules/location/LocationModule$definition$1$16$1$1;

    invoke-direct {v5, v3}, Lexpo/modules/location/LocationModule$definition$1$16$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lexpo/modules/location/LocationActivityResultListener;

    .line 29
    invoke-static {v4, v1, v5}, Lexpo/modules/location/LocationModule;->access$addPendingLocationRequest(Lexpo/modules/location/LocationModule;Lcom/google/android/gms/location/LocationRequest;Lexpo/modules/location/LocationActivityResultListener;)V

    .line 28
    invoke-virtual {v2}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    return-object v1
.end method
