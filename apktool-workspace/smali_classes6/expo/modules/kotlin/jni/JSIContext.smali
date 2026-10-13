.class public final Lexpo/modules/kotlin/jni/JSIContext;
.super Ljava/lang/Object;
.source "JSIContext.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSIContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSIContext.kt\nexpo/modules/kotlin/jni/JSIContext\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,138:1\n37#2:139\n36#2,3:140\n*S KotlinDebug\n*F\n+ 1 JSIContext.kt\nexpo/modules/kotlin/jni/JSIContext\n*L\n78#1:139\n78#1:140,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\u001f\u0008\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086 J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0086 J\t\u0010\u0013\u001a\u00020\u0014H\u0086 J\t\u0010\u0015\u001a\u00020\u0014H\u0086 J\t\u0010\u0016\u001a\u00020\u0012H\u0086 J\u0019\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0014H\u0086 J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0007J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u0010H\u0007J\u0013\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00100!H\u0007\u00a2\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u0014H\u0007J\u0012\u0010&\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u001c\u0010(\u001a\u00020\u00122\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030)2\u0006\u0010\u001a\u001a\u00020\u0014H\u0007J\u0016\u0010*\u001a\u0004\u0018\u00010\u00142\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030)H\u0007J\u0008\u0010+\u001a\u00020\u0012H\u0004J\u0008\u0010,\u001a\u00020\u0012H\u0016J\u0008\u0010-\u001a\u00020\u0005H\u0016R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "runtimeHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "<init>",
        "(Lcom/facebook/jni/HybridData;Ljava/lang/ref/WeakReference;)V",
        "getRuntimeHolder",
        "()Ljava/lang/ref/WeakReference;",
        "evaluateScript",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "script",
        "",
        "evaluateVoidScript",
        "",
        "global",
        "Lexpo/modules/kotlin/jni/JavaScriptObject;",
        "createObject",
        "drainJSEventLoop",
        "setNativeStateForSharedObject",
        "id",
        "",
        "js",
        "getJavaScriptModuleObject",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "name",
        "hasModule",
        "",
        "getJavaScriptModulesName",
        "",
        "()[Ljava/lang/String;",
        "registerSharedObject",
        "native",
        "",
        "getSharedObject",
        "deleteSharedObject",
        "registerClass",
        "Ljava/lang/Class;",
        "getJavascriptClass",
        "finalize",
        "close",
        "getHybridDataForJNIDeallocator",
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
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final runtimeHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/runtime/Runtime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/jni/HybridData;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/jni/HybridData;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/runtime/Runtime;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mHybridData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JSIContext;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 20
    iput-object p2, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 131
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public final native createObject()Lexpo/modules/kotlin/jni/JavaScriptObject;
.end method

.method public final deleteSharedObject(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->constructor-impl(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;->delete-kyJHjyY$expo_modules_core_release(I)V

    :cond_0
    return-void
.end method

.method public final native drainJSEventLoop()V
.end method

.method public final native evaluateScript(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/kotlin/exception/JavaScriptEvaluateException;
        }
    .end annotation
.end method

.method public final native evaluateVoidScript(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/kotlin/exception/JavaScriptEvaluateException;
        }
    .end annotation
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->close()V

    return-void
.end method

.method public getHybridDataForJNIDeallocator()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 135
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method public final getJavaScriptModuleObject(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getJsObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getJavaScriptModulesName()[Ljava/lang/String;
    .locals 3

    .line 78
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Collection;

    .line 142
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 79
    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0
.end method

.method public final getJavascriptClass(Ljava/lang/Class;)Lexpo/modules/kotlin/jni/JavaScriptObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lexpo/modules/kotlin/jni/JavaScriptObject;"
        }
    .end annotation

    const-string v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    .line 120
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;->toJavaScriptObject$expo_modules_core_release(Ljava/lang/Class;)Lexpo/modules/kotlin/jni/JavaScriptObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getRuntimeHolder()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/runtime/Runtime;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getSharedObject(I)Lexpo/modules/kotlin/jni/JavaScriptObject;
    .locals 1

    .line 94
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    invoke-static {p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->constructor-impl(I)I

    move-result p1

    invoke-static {p1, v0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->toJavaScriptObjectNull-impl(ILexpo/modules/kotlin/runtime/Runtime;)Lexpo/modules/kotlin/jni/JavaScriptObject;

    move-result-object p1

    return-object p1
.end method

.method public final native global()Lexpo/modules/kotlin/jni/JavaScriptObject;
.end method

.method public final hasModule(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->hasModule(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final registerClass(Ljava/lang/Class;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lexpo/modules/kotlin/jni/JavaScriptObject;",
            ")V"
        }
    .end annotation

    const-string v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "js"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    .line 111
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;->add$expo_modules_core_release(Ljava/lang/Class;Lexpo/modules/kotlin/jni/JavaScriptObject;)V

    :cond_0
    return-void
.end method

.method public final registerSharedObject(Ljava/lang/Object;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
    .locals 1

    const-string v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "js"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeHolder:Ljava/lang/ref/WeakReference;

    .line 86
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/Runtime;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/Runtime;->getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;->add-5WKnsLU$expo_modules_core_release(Lexpo/modules/kotlin/sharedobjects/SharedObject;Lexpo/modules/kotlin/jni/JavaScriptObject;)I

    move-result p1

    invoke-static {p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->box-impl(I)Lexpo/modules/kotlin/sharedobjects/SharedObjectId;

    :cond_0
    return-void
.end method

.method public final native setNativeStateForSharedObject(ILexpo/modules/kotlin/jni/JavaScriptObject;)V
.end method
