.class public final Lexpo/modules/imagemanipulator/ImageManipulatorContext;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "ImageManipulatorContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageManipulatorContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageManipulatorContext.kt\nexpo/modules/imagemanipulator/ImageManipulatorContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/ImageManipulatorContext;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "runtimeContext",
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "task",
        "Lexpo/modules/imagemanipulator/ManipulatorTask;",
        "<init>",
        "(Lexpo/modules/kotlin/runtime/Runtime;Lexpo/modules/imagemanipulator/ManipulatorTask;)V",
        "addTransformer",
        "transformer",
        "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;",
        "reset",
        "render",
        "Landroid/graphics/Bitmap;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sharedObjectDidRelease",
        "",
        "expo-image-manipulator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final task:Lexpo/modules/imagemanipulator/ManipulatorTask;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/runtime/Runtime;Lexpo/modules/imagemanipulator/ManipulatorTask;)V
    .locals 1

    const-string v0, "runtimeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/runtime/Runtime;)V

    .line 80
    iput-object p2, p0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;->task:Lexpo/modules/imagemanipulator/ManipulatorTask;

    return-void
.end method


# virtual methods
.method public final addTransformer(Lexpo/modules/imagemanipulator/transformers/ImageTransformer;)Lexpo/modules/imagemanipulator/ImageManipulatorContext;
    .locals 1

    const-string v0, "transformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    move-object v0, p0

    check-cast v0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;->task:Lexpo/modules/imagemanipulator/ManipulatorTask;

    invoke-virtual {v0, p1}, Lexpo/modules/imagemanipulator/ManipulatorTask;->addTransformer(Lexpo/modules/imagemanipulator/transformers/ImageTransformer;)V

    return-object p0
.end method

.method public final render(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;->task:Lexpo/modules/imagemanipulator/ManipulatorTask;

    invoke-virtual {v0, p1}, Lexpo/modules/imagemanipulator/ManipulatorTask;->render(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reset()Lexpo/modules/imagemanipulator/ImageManipulatorContext;
    .locals 1

    .line 84
    move-object v0, p0

    check-cast v0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;->task:Lexpo/modules/imagemanipulator/ManipulatorTask;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/ManipulatorTask;->reset()V

    return-object p0
.end method

.method public sharedObjectDidRelease()V
    .locals 1

    .line 89
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorContext;->task:Lexpo/modules/imagemanipulator/ManipulatorTask;

    invoke-virtual {v0}, Lexpo/modules/imagemanipulator/ManipulatorTask;->cancel()V

    return-void
.end method
