.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$14$$inlined$FunctionWithoutArgs$2;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/CoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$2\n+ 2 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n1#1,111:1\n99#2,25:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$14$$inlined$FunctionWithoutArgs$2;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$14$$inlined$FunctionWithoutArgs$2;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$14$$inlined$FunctionWithoutArgs$2;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-virtual {p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/runtime/MainRuntime;->getJsiContext()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JSIContext;->global()Lexpo/modules/kotlin/jni/JavaScriptObject;

    move-result-object p1

    const-string v0, "_WORKLET_RUNTIME"

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/jni/JavaScriptObject;->get(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JavaScriptValue;->isObject()Z

    .line 119
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JavaScriptValue;->getObject()Lexpo/modules/kotlin/jni/JavaScriptObject;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->isArrayBuffer()Z

    .line 124
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->getArrayBuffer()Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;->size()I

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;->read8Byte(I)J

    move-result-wide v0

    .line 131
    new-instance p1, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4;

    iget-object v2, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$14$$inlined$FunctionWithoutArgs$2;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v1, v3}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$1$8$4;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-static {v3, p1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UI Runtime is not available. Make sure you have Reanimated installed and imported in your project."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
