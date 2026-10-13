.class public final Lexpo/modules/kotlin/jni/MainRuntimeInstaller;
.super Ljava/lang/Object;
.source "MainRuntimeInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/MainRuntimeInstaller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0007J/\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\rH\u0082 J/\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u000fH\u0082 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/MainRuntimeInstaller;",
        "",
        "runtimeContext",
        "Lexpo/modules/kotlin/runtime/MainRuntime;",
        "<init>",
        "(Lexpo/modules/kotlin/runtime/MainRuntime;)V",
        "getRuntimeContext",
        "()Lexpo/modules/kotlin/runtime/MainRuntime;",
        "install",
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "jsRuntimePointer",
        "",
        "jsInvokerHolder",
        "Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;",
        "runtimeExecutor",
        "Lcom/facebook/react/bridge/RuntimeExecutor;",
        "getCoreModuleObject",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "runtimeContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lexpo/modules/kotlin/jni/MainRuntimeInstaller$Companion;


# instance fields
.field private final runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/MainRuntimeInstaller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->Companion:Lexpo/modules/kotlin/jni/MainRuntimeInstaller$Companion;

    const/16 v0, 0x8

    sput v0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->$stable:I

    .line 63
    const-string v0, "expo-modules-core"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/runtime/MainRuntime;)V
    .locals 1

    const-string v0, "runtimeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    return-void
.end method

.method private final native install(Ljava/lang/ref/WeakReference;JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/bridge/RuntimeExecutor;)Lexpo/modules/kotlin/jni/JSIContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;J",
            "Lexpo/modules/kotlin/jni/JNIDeallocator;",
            "Lcom/facebook/react/bridge/RuntimeExecutor;",
            ")",
            "Lexpo/modules/kotlin/jni/JSIContext;"
        }
    .end annotation
.end method

.method private final native install(Ljava/lang/ref/WeakReference;JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)Lexpo/modules/kotlin/jni/JSIContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;J",
            "Lexpo/modules/kotlin/jni/JNIDeallocator;",
            "Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;",
            ")",
            "Lexpo/modules/kotlin/jni/JSIContext;"
        }
    .end annotation
.end method


# virtual methods
.method public final getCoreModuleObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getCoreModule$expo_modules_core_release()Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getJsObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object v0

    return-object v0
.end method

.method public final getRuntimeContext()Lexpo/modules/kotlin/runtime/MainRuntime;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    return-object v0
.end method

.method public final install(JLcom/facebook/react/bridge/RuntimeExecutor;)Lexpo/modules/kotlin/jni/JSIContext;
    .locals 7

    const-string v0, "runtimeExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    invoke-static {v0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 36
    iget-object v0, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getDeallocator$expo_modules_core_release()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v5

    move-object v1, p0

    move-wide v3, p1

    move-object v6, p3

    .line 33
    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->install(Ljava/lang/ref/WeakReference;JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/bridge/RuntimeExecutor;)Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object p1

    return-object p1
.end method

.method public final install(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)Lexpo/modules/kotlin/jni/JSIContext;
    .locals 7

    const-string v0, "jsInvokerHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    invoke-static {v0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 24
    iget-object v0, p0, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->runtimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getDeallocator$expo_modules_core_release()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v5

    move-object v1, p0

    move-wide v3, p1

    move-object v6, p3

    .line 21
    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/jni/MainRuntimeInstaller;->install(Ljava/lang/ref/WeakReference;JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object p1

    return-object p1
.end method
