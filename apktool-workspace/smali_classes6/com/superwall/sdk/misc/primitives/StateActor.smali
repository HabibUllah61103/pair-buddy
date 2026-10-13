.class public Lcom/superwall/sdk/misc/primitives/StateActor;
.super Ljava/lang/Object;
.source "StateActor.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/primitives/StateStore;
.implements Lcom/superwall/sdk/misc/primitives/Actor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Context:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/misc/primitives/StateStore<",
        "TS;>;",
        "Lcom/superwall/sdk/misc/primitives/Actor<",
        "TContext;TS;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateActor.kt\ncom/superwall/sdk/misc/primitives/StateActor\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,195:1\n230#2,5:196\n*S KotlinDebug\n*F\n+ 1 StateActor.kt\ncom/superwall/sdk/misc/primitives/StateActor\n*L\n47#1:196,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0017\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJV\u0010\"\u001a\u00020\u00152N\u0010#\u001aJ\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00010\u0014\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008($\u0012%\u0012#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u00150\u0018JD\u0010%\u001a\u00020\u00152<\u0010#\u001a8\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00150\u001d\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u00150\u0018Ji\u0010&\u001a\u00020\u00152\\\u0010#\u001aX\u0008\u0001\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012)\u0012\'\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0013\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190 \u00a2\u0006\u0002\u0010\'J\u0016\u0010(\u001a\u00020\u00152\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0014H\u0016J)\u0010)\u001a\u00020\u0015\"\u0004\u0008\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H*0,H\u0016\u00a2\u0006\u0002\u0010-J>\u0010.\u001a\u00028\u0001\"\u0004\u0008\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H*0,2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002000\u0013H\u0096@\u00a2\u0006\u0002\u00101J*\u00102\u001a\u00020\u0015\"\u0004\u0008\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H*0,H\u0096@\u00a2\u0006\u0002\u00103J*\u00104\u001a\u00020\u0015\"\u0004\u0008\u0002\u0010*2\u0006\u0010+\u001a\u0002H*2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H*0,H\u0094@\u00a2\u0006\u0002\u00103J4\u00105\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00192\u001c\u00106\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0013H\u0084@\u00a2\u0006\u0002\u00107J\u001e\u00108\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00192\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001dH\u0004R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000RJ\u0010\u0016\u001a>\u0012:\u00128\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00150\u001d\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u00150\u00180\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000Rj\u0010\u001f\u001a^\u0012Z\u0012X\u0008\u0001\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012)\u0012\'\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0013\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150!\u0012\u0006\u0012\u0004\u0018\u00010\u00190 0\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "Context",
        "S",
        "Lcom/superwall/sdk/misc/primitives/StateStore;",
        "Lcom/superwall/sdk/misc/primitives/Actor;",
        "initial",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V",
        "getScope$superwall_release",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "updateChain",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/misc/primitives/Reducer;",
        "",
        "actionInterceptors",
        "",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "action",
        "Lkotlin/Function0;",
        "next",
        "asyncActionInterceptors",
        "Lkotlin/Function3;",
        "Lkotlin/coroutines/Continuation;",
        "onUpdate",
        "interceptor",
        "reducer",
        "onAction",
        "onActionExecution",
        "(Lkotlin/jvm/functions/Function3;)V",
        "update",
        "effect",
        "Ctx",
        "ctx",
        "Lcom/superwall/sdk/misc/primitives/TypedAction;",
        "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V",
        "immediateUntil",
        "until",
        "",
        "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "immediate",
        "(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeAction",
        "runAsyncInterceptorChain",
        "terminal",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runInterceptorChain",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TS;>;"
        }
    .end annotation
.end field

.field private actionInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private asyncActionInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TS;>;"
        }
    .end annotation
.end field

.field private updateChain:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-J0wkmriWUiPDV9UvjrCYM7nqHs(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/misc/primitives/StateActor;->immediate$lambda$4(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HJxHVSTca-8Dg0i1q0vX70ndm98(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->immediate$lambda$5(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M0telRZQttAEVzsyWnhQylnj3wQ(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->updateChain$lambda$1(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_B4pOkQN158EGkRmjX20G-wA6_Y(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->onUpdate$lambda$2(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fkh5i33eSJTDG8sCa10McUfXDv4(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->effect$lambda$3(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kiDo9oHL0bfZd1q90v0M6oKc_R8(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->runInterceptorChain$lambda$6(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 41
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 46
    new-instance p1, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;)V

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->updateChain:Lkotlin/jvm/functions/Function1;

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->asyncActionInterceptors:Ljava/util/List;

    return-void
.end method

.method private static final effect$lambda$3(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)Lkotlin/Unit;
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/misc/primitives/StateActor$effect$execute$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/superwall/sdk/misc/primitives/StateActor$effect$execute$1$1;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 109
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic executeAction$suspendImpl(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Context:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "Ctx:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "TContext;TS;>;TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/superwall/sdk/misc/primitives/StateActor$executeAction$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/superwall/sdk/misc/primitives/StateActor$executeAction$2;-><init>(Lcom/superwall/sdk/misc/primitives/TypedAction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p2, v0, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->runAsyncInterceptorChain(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final immediate$lambda$4(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final immediate$lambda$5(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 143
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic immediate$suspendImpl(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Context:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "Ctx:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "TContext;TS;>;TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 136
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 137
    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 139
    new-instance v1, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 140
    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    .line 141
    iget-object v4, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 143
    new-instance v4, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p2, v1}, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function0;)V

    if-gez v3, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    move v2, v3

    move-object v1, v4

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 147
    :cond_2
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->executeAction(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 150
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic immediateUntil$suspendImpl(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Context:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "Ctx:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "TContext;TS;>;TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->effect(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 124
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/superwall/sdk/misc/primitives/StateActor$immediateUntil$2;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/superwall/sdk/misc/primitives/StateActor$immediateUntil$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final onUpdate$lambda$2(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;
    .locals 1

    const-string v0, "reducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runInterceptorChain$lambda$6(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 188
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateChain$lambda$1(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;
    .locals 2

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 197
    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 47
    invoke-interface {p1}, Lcom/superwall/sdk/misc/primitives/Reducer;->getReduce()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    invoke-interface {p0, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public effect(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            ">(TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 110
    invoke-virtual {p0, p2, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->runInterceptorChain(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected executeAction(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            ">(TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->executeAction$suspendImpl(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getScope$superwall_release()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TS;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public immediate(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            ">(TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/misc/primitives/StateActor;->immediate$suspendImpl(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public immediateUntil(Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            ">(TCtx;",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "TCtx;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/misc/primitives/StateActor;->immediateUntil$suspendImpl(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onAction(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    return-void
.end method

.method public final onActionExecution(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->asyncActionInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->asyncActionInterceptors:Ljava/util/List;

    return-void
.end method

.method public final onUpdate(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->updateChain:Lkotlin/jvm/functions/Function1;

    .line 65
    new-instance v1, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->updateChain:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final runAsyncInterceptorChain(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    .line 164
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->asyncActionInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->asyncActionInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 169
    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->asyncActionInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 171
    new-instance v2, Lcom/superwall/sdk/misc/primitives/StateActor$runAsyncInterceptorChain$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lcom/superwall/sdk/misc/primitives/StateActor$runAsyncInterceptorChain$2;-><init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object p2, v2

    check-cast p2, Lkotlin/jvm/functions/Function1;

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 173
    :cond_3
    :goto_1
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final runInterceptorChain(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 186
    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->actionInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 188
    new-instance v2, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1, p2}, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    if-gez v1, :cond_1

    move-object p2, v2

    goto :goto_1

    :cond_1
    move v0, v1

    move-object p2, v2

    goto :goto_0

    .line 190
    :cond_2
    :goto_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public update(Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "TS;>;)V"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor;->updateChain:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
