.class public final Lcom/superwall/sdk/misc/primitives/DebugInterceptor;
.super Ljava/lang/Object;
.source "DebugInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JB\u0010\u0004\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0006\"\u0004\u0008\u0001\u0010\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u000c\u0010\u0010\u001a\u00020\u000b*\u00020\u0001H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/primitives/DebugInterceptor;",
        "",
        "<init>",
        "()V",
        "install",
        "",
        "Ctx",
        "S",
        "actor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "name",
        "",
        "scope",
        "Lcom/superwall/sdk/logger/LogScope;",
        "level",
        "Lcom/superwall/sdk/logger/LogLevel;",
        "labelOf",
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


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/misc/primitives/DebugInterceptor;


# direct methods
.method public static synthetic $r8$lambda$2y33cdkNo2o2K47aE69Vjq3jJeE(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->install$lambda$1(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AWu-vKyrq5Ef_ZlFnhW_K8rnbmw(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->install$lambda$0(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;

    invoke-direct {v0}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;-><init>()V

    sput-object v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->INSTANCE:Lcom/superwall/sdk/misc/primitives/DebugInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$labelOf(Lcom/superwall/sdk/misc/primitives/DebugInterceptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->labelOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic install$default(Lcom/superwall/sdk/misc/primitives/DebugInterceptor;Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/String;Lcom/superwall/sdk/logger/LogScope;Lcom/superwall/sdk/logger/LogLevel;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 38
    sget-object p3, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 39
    sget-object p4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 35
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->install(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/String;Lcom/superwall/sdk/logger/LogScope;Lcom/superwall/sdk/logger/LogLevel;)V

    return-void
.end method

.method private static final install$lambda$0(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 9

    const-string v0, "reducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->INSTANCE:Lcom/superwall/sdk/misc/primitives/DebugInterceptor;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->labelOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 44
    invoke-interface {p4, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    sub-long/2addr p3, v1

    const v1, 0xf4240

    int-to-long v1, v1

    div-long/2addr p3, v1

    .line 46
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interceptor: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "] update \u2192 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 46
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final install$lambda$1(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 8

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->INSTANCE:Lcom/superwall/sdk/misc/primitives/DebugInterceptor;

    invoke-direct {v0, p3}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor;->labelOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 55
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interceptor: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "] action \u2192 "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 55
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 60
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final labelOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "anonymous"

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-static {p1, v1, v3, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final install(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/String;Lcom/superwall/sdk/logger/LogScope;Lcom/superwall/sdk/logger/LogLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ctx:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "TCtx;TS;>;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/logger/LogScope;",
            "Lcom/superwall/sdk/logger/LogLevel;",
            ")V"
        }
    .end annotation

    const-string v0, "actor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4, p3, p2}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->onUpdate(Lkotlin/jvm/functions/Function2;)V

    .line 53
    new-instance v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4, p3, p2}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->onAction(Lkotlin/jvm/functions/Function2;)V

    .line 63
    new-instance v0, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$install$3;

    const/4 v1, 0x0

    invoke-direct {v0, p4, p3, p2, v1}, Lcom/superwall/sdk/misc/primitives/DebugInterceptor$install$3;-><init>(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->onActionExecution(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
