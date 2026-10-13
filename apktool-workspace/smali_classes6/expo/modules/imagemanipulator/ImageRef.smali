.class public final Lexpo/modules/imagemanipulator/ImageRef;
.super Lexpo/modules/kotlin/sharedobjects/SharedRef;
.source "ImageRef.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/ImageRef;",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "runtimeContext",
        "Lexpo/modules/kotlin/runtime/Runtime;",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "<init>",
        "(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/runtime/Runtime;)V",
        "nativeRefType",
        "",
        "getNativeRefType",
        "()Ljava/lang/String;",
        "getAdditionalMemoryPressure",
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
.field private final nativeRefType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/runtime/Runtime;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedRef;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/runtime/Runtime;)V

    .line 8
    const-string p1, "image"

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ImageRef;->nativeRefType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalMemoryPressure()I
    .locals 1

    .line 11
    invoke-virtual {p0}, Lexpo/modules/imagemanipulator/ImageRef;->getRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0
.end method

.method public getNativeRefType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageRef;->nativeRefType:Ljava/lang/String;

    return-object v0
.end method
