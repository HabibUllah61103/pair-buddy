.class final Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoreModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "expo.modules.kotlin.defaultmodules.CoreModule$definition$1$8$4$1"
    f = "CoreModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $runtimePointer:J

.field label:I

.field final synthetic this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    iput-wide p2, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->$runtimePointer:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;

    iget-object v0, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    iget-wide v1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->$runtimePointer:J

    invoke-direct {p1, v0, v1, v2, p2}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 119
    iget v0, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-virtual {p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getUiRuntime()Lexpo/modules/kotlin/runtime/WorkletRuntime;

    move-result-object p1

    iget-wide v0, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4$1;->$runtimePointer:J

    invoke-virtual {p1, v0, v1}, Lexpo/modules/kotlin/runtime/WorkletRuntime;->install$expo_modules_core_release(J)V

    .line 121
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
