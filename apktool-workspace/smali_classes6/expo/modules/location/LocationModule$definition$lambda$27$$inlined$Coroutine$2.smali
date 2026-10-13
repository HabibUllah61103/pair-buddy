.class public final Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$1\n+ 2 LocationModule.kt\nexpo/modules/location/LocationModule\n*L\n1#1,21:1\n117#2,13:22\n*E\n"
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
    c = "expo.modules.location.LocationModule$definition$lambda$27$$inlined$Coroutine$2"
    f = "LocationModule.kt"
    i = {}
    l = {
        0x19,
        0x20
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lexpo/modules/location/LocationModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/location/LocationModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->this$0:Lexpo/modules/location/LocationModule;

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

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance p1, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;

    iget-object p2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->this$0:Lexpo/modules/location/LocationModule;

    invoke-direct {p1, p3, p2}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/location/LocationModule;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 115
    iget v1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 22
    iget-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->this$0:Lexpo/modules/location/LocationModule;

    invoke-virtual {p1}, Lexpo/modules/location/LocationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getPermissions()Lexpo/modules/interfaces/permissions/Permissions;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ne v1, v4, :cond_4

    .line 25
    sget-object v1, Lexpo/modules/location/LocationHelpers;->Companion:Lexpo/modules/location/LocationHelpers$Companion;

    const/4 v4, 0x3

    .line 27
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v6, v4, v5

    .line 28
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v4, v3

    .line 29
    const-string v5, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v5, v4, v2

    .line 25
    iput v3, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->label:I

    invoke-virtual {v1, p1, v4, p0}, Lexpo/modules/location/LocationHelpers$Companion;->getPermissionsWithPermissionsManager$expo_location_release(Lexpo/modules/interfaces/permissions/Permissions;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    .line 32
    :cond_4
    iget-object p1, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->this$0:Lexpo/modules/location/LocationModule;

    iput v2, p0, Lexpo/modules/location/LocationModule$definition$lambda$27$$inlined$Coroutine$2;->label:I

    invoke-static {p1, p0}, Lexpo/modules/location/LocationModule;->access$getForegroundPermissionsAsync(Lexpo/modules/location/LocationModule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_0
    return-object v0

    :cond_5
    return-object p1

    .line 22
    :cond_6
    new-instance p1, Lexpo/modules/location/NoPermissionsModuleException;

    invoke-direct {p1}, Lexpo/modules/location/NoPermissionsModuleException;-><init>()V

    throw p1
.end method
