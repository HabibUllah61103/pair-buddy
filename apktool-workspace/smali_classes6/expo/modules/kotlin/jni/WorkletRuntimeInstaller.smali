.class public final Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;
.super Ljava/lang/Object;
.source "WorkletRuntimeInstaller.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\'\u0010\u0008\u001a\u00020\t2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0082 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;",
        "",
        "runtime",
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "<init>",
        "(Lexpo/modules/kotlin/runtime/Runtime;)V",
        "getRuntime",
        "()Lexpo/modules/kotlin/runtime/Runtime;",
        "install",
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "jsRuntimePointer",
        "",
        "runtimeContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
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


# instance fields
.field private final runtime:Lexpo/modules/kotlin/runtime/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/runtime/Runtime;)V
    .locals 1

    const-string v0, "runtime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;->runtime:Lexpo/modules/kotlin/runtime/Runtime;

    return-void
.end method

.method private final native install(Ljava/lang/ref/WeakReference;JLexpo/modules/kotlin/jni/JNIDeallocator;)Lexpo/modules/kotlin/jni/JSIContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;J",
            "Lexpo/modules/kotlin/jni/JNIDeallocator;",
            ")",
            "Lexpo/modules/kotlin/jni/JSIContext;"
        }
    .end annotation
.end method


# virtual methods
.method public final getRuntime()Lexpo/modules/kotlin/runtime/Runtime;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;->runtime:Lexpo/modules/kotlin/runtime/Runtime;

    return-object v0
.end method

.method public final install(J)Lexpo/modules/kotlin/jni/JSIContext;
    .locals 2

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;->runtime:Lexpo/modules/kotlin/runtime/Runtime;

    invoke-static {v0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;->runtime:Lexpo/modules/kotlin/runtime/Runtime;

    invoke-virtual {v1}, Lexpo/modules/kotlin/runtime/Runtime;->getDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v1

    .line 13
    invoke-direct {p0, v0, p1, p2, v1}, Lexpo/modules/kotlin/jni/WorkletRuntimeInstaller;->install(Ljava/lang/ref/WeakReference;JLexpo/modules/kotlin/jni/JNIDeallocator;)Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object p1

    return-object p1
.end method
