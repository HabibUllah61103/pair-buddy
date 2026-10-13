.class public final Lexpo/modules/kotlin/runtime/MainRuntime;
.super Lexpo/modules/kotlin/runtime/Runtime;
.source "MainRuntime.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainRuntime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainRuntime.kt\nexpo/modules/kotlin/runtime/MainRuntime\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n*L\n1#1,111:1\n14#2:112\n25#2:113\n27#3,3:114\n31#3:119\n1#4:117\n12#5:118\n*S KotlinDebug\n*F\n+ 1 MainRuntime.kt\nexpo/modules/kotlin/runtime/MainRuntime\n*L\n84#1:112\n84#1:113\n84#1:114,3\n84#1:119\n89#1:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0 H\u0016J\r\u00102\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u00083J\r\u00104\u001a\u00020\u001eH\u0010\u00a2\u0006\u0002\u00085R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\'X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0014\u0010*\u001a\u00020+X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0014\u0010.\u001a\u00020/X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101\u00a8\u00066"
    }
    d2 = {
        "Lexpo/modules/kotlin/runtime/MainRuntime;",
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V",
        "getReactContextHolder",
        "()Ljava/lang/ref/WeakReference;",
        "appContextHolder",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "reactContext",
        "getReactContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "jsiContext",
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "getJsiContext",
        "()Lexpo/modules/kotlin/jni/JSIContext;",
        "setJsiContext",
        "(Lexpo/modules/kotlin/jni/JSIContext;)V",
        "isJSIContextInitialized",
        "",
        "eval",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "source",
        "",
        "schedule",
        "",
        "block",
        "Lkotlin/Function0;",
        "coreModule",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
        "getCoreModule$expo_modules_core_release",
        "()Lexpo/modules/kotlin/ModuleHolder;",
        "deallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "getDeallocator$expo_modules_core_release",
        "()Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "sharedObjectRegistry",
        "Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "getSharedObjectRegistry$expo_modules_core_release",
        "()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "classRegistry",
        "Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "getClassRegistry$expo_modules_core_release",
        "()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "install",
        "install$expo_modules_core_release",
        "deallocate",
        "deallocate$expo_modules_core_release",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final appContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private final classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

.field private final coreModule:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            ">;"
        }
    .end annotation
.end field

.field private final deallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

.field public jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

.field private final reactContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;


# direct methods
.method public static synthetic $r8$lambda$2XUgtK_WF07S1Ft2zO2l7GR4OVY(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->schedule$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lexpo/modules/kotlin/runtime/Runtime;-><init>()V

    .line 25
    iput-object p2, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->reactContextHolder:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->appContextHolder:Ljava/lang/ref/WeakReference;

    .line 61
    move-object p1, p0

    check-cast p1, Lexpo/modules/kotlin/runtime/MainRuntime;

    .line 62
    new-instance p1, Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-direct {p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;-><init>()V

    .line 63
    iget-object p2, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->appContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->set_appContextHolder$expo_modules_core_release(Ljava/lang/ref/WeakReference;)V

    .line 64
    new-instance p2, Lexpo/modules/kotlin/ModuleHolder;

    check-cast p1, Lexpo/modules/kotlin/modules/Module;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    .line 67
    new-instance p1, Lexpo/modules/kotlin/jni/JNIDeallocator;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->deallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    .line 69
    new-instance p1, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    move-object p2, p0

    check-cast p2, Lexpo/modules/kotlin/runtime/Runtime;

    invoke-direct {p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;-><init>(Lexpo/modules/kotlin/runtime/Runtime;)V

    iput-object p1, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    .line 71
    new-instance p1, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    invoke-direct {p1}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    return-void
.end method

.method private final isJSIContextInitialized()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final schedule$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 53
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public deallocate$expo_modules_core_release()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getDeallocator$expo_modules_core_release()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/JNIDeallocator;->deallocate$expo_modules_core_release()Lkotlin/Unit;

    return-void
.end method

.method public eval(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getJsiContext()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/jni/JSIContext;->evaluateScript(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;

    move-result-object p1

    return-object p1
.end method

.method public getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->appContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    return-object v0
.end method

.method public getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;
    .locals 1

    .line 71
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    return-object v0
.end method

.method public final getCoreModule$expo_modules_core_release()Lexpo/modules/kotlin/ModuleHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    return-object v0
.end method

.method public bridge synthetic getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getDeallocator$expo_modules_core_release()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v0

    return-object v0
.end method

.method public getDeallocator$expo_modules_core_release()Lexpo/modules/kotlin/jni/JNIDeallocator;
    .locals 1

    .line 67
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->deallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    return-object v0
.end method

.method public getJsiContext()Lexpo/modules/kotlin/jni/JSIContext;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "jsiContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->reactContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public final getReactContextHolder()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->reactContextHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;
    .locals 1

    .line 69
    iget-object v0, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    return-object v0
.end method

.method public final install$expo_modules_core_release()V
    .locals 9

    const-string v0, "\u274c Cannot install JSI interop: "

    const-string v1, "[ExpoModulesCore] "

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->isJSIContextInitialized()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 80
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u26a0\ufe0f JSI interop was already installed"

    invoke-static {v0, v1, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".install"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 86
    :try_start_2
    invoke-virtual {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v5

    .line 89
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_3

    .line 90
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    const-string v2, "\u274c Cannot install JSI interop - JS runtime pointer is null"

    invoke-static {v1, v2, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 94
    new-instance v4, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;

    invoke-direct {v4, p0}, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;-><init>(Lexpo/modules/kotlin/runtime/MainRuntime;)V

    .line 97
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/CatalystInstance;->getRuntimeExecutor()Lcom/facebook/react/bridge/RuntimeExecutor;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v4, v2, v3, v1}, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->install(JLcom/facebook/react/bridge/RuntimeExecutor;)Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v1

    .line 94
    invoke-virtual {p0, v1}, Lexpo/modules/kotlin/runtime/MainRuntime;->setJsiContext(Lexpo/modules/kotlin/jni/JSIContext;)V

    .line 100
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    const-string v2, "\u2705 JSI interop was installed"

    invoke-virtual {v1, v2}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 102
    :try_start_3
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :try_start_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 105
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 78
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 119
    :try_start_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 78
    monitor-exit p0

    throw v0
.end method

.method public schedule(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lexpo/modules/kotlin/runtime/MainRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/runtime/MainRuntime$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setJsiContext(Lexpo/modules/kotlin/jni/JSIContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lexpo/modules/kotlin/runtime/MainRuntime;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    return-void
.end method
