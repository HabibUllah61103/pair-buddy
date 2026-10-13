.class public final Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;
.super Ljava/lang/Object;
.source "NativeArrayBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/jni/NativeArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeArrayBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeArrayBuffer.kt\nexpo/modules/kotlin/jni/NativeArrayBuffer$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;",
        "",
        "<init>",
        "()V",
        "allocate",
        "Lexpo/modules/kotlin/jni/NativeArrayBuffer;",
        "size",
        "",
        "wrap",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "copyOf",
        "other",
        "Lexpo/modules/kotlin/jni/ArrayBuffer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final allocate(I)Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 60
    new-instance v0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/jni/NativeArrayBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public final copyOf(Lexpo/modules/kotlin/jni/ArrayBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lexpo/modules/kotlin/jni/ArrayBuffer;->toDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;->copyOf(Ljava/nio/ByteBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final copyOf(Ljava/nio/ByteBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    const-string v0, "byteBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 82
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 87
    new-instance p1, Lexpo/modules/kotlin/jni/NativeArrayBuffer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/jni/NativeArrayBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public final wrap(Ljava/nio/ByteBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    const-string v0, "byteBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/jni/NativeArrayBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
