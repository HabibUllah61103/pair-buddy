.class public abstract Lexpo/modules/kotlin/runtime/Runtime;
.super Ljava/lang/Object;
.source "Runtime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H&J\u0016\u0010!\u001a\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0$H&J\r\u0010%\u001a\u00020\"H \u00a2\u0006\u0002\u0008&R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u00118 X\u00a1\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0003\u001a\u0004\u0008\u0013\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u0016X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u00020\u001aX\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "",
        "<init>",
        "()V",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getReactContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "jsiContext",
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "getJsiContext",
        "()Lexpo/modules/kotlin/jni/JSIContext;",
        "deallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "getDeallocator$annotations",
        "getDeallocator",
        "()Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "sharedObjectRegistry",
        "Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "getSharedObjectRegistry$expo_modules_core_release",
        "()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "classRegistry",
        "Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "getClassRegistry$expo_modules_core_release",
        "()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "eval",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "source",
        "",
        "schedule",
        "",
        "block",
        "Lkotlin/Function0;",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getDeallocator$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract deallocate$expo_modules_core_release()V
.end method

.method public abstract eval(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
.end method

.method public abstract getAppContext()Lexpo/modules/kotlin/AppContext;
.end method

.method public abstract getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;
.end method

.method public abstract getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;
.end method

.method public abstract getJsiContext()Lexpo/modules/kotlin/jni/JSIContext;
.end method

.method public abstract getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
.end method

.method public abstract getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;
.end method

.method public abstract schedule(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
