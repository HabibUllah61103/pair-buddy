.class public final Lexpo/modules/kotlin/jni/NativeArrayBuffer;
.super Ljava/lang/Object;
.source "NativeArrayBuffer.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;
.implements Lexpo/modules/kotlin/jni/ArrayBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0001!B\u0011\u0008\u0013\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0011\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0008H\u0082 J\u0006\u0010\r\u001a\u00020\u000eJ\t\u0010\u000f\u001a\u00020\u0010H\u0096 J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010H\u0096 J\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0010H\u0096 J\u0011\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0096 J\u0011\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u0010H\u0096 J\u0011\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u0010H\u0096 J\u0011\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u0010H\u0096 J\t\u0010\u001d\u001a\u00020\u0008H\u0096 J\u0008\u0010\u001e\u001a\u00020\u001fH\u0004J\u0008\u0010 \u001a\u00020\u0004H\u0016R\u0010\u0010\n\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/NativeArrayBuffer;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "Lexpo/modules/kotlin/jni/ArrayBuffer;",
        "hybridData",
        "Lcom/facebook/jni/HybridData;",
        "<init>",
        "(Lcom/facebook/jni/HybridData;)V",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)V",
        "mHybridData",
        "initHybrid",
        "buffer",
        "isValid",
        "",
        "size",
        "",
        "readByte",
        "",
        "position",
        "read2Byte",
        "",
        "read4Byte",
        "read8Byte",
        "",
        "readFloat",
        "",
        "readDouble",
        "",
        "toDirectBuffer",
        "finalize",
        "",
        "getHybridDataForJNIDeallocator",
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

.field public static final Companion:Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->Companion:Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;

    const/16 v0, 0x8

    sput v0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->$stable:I

    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "byteBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->initHybrid(Ljava/nio/ByteBuffer;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void

    .line 25
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$IllegalArgument;

    const-string v0, "ArrayBuffers can only be created from direct ByteBuffers"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lexpo/modules/kotlin/exception/Exceptions$IllegalArgument;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final native initHybrid(Ljava/nio/ByteBuffer;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public copy()Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    .line 12
    invoke-static {p0}, Lexpo/modules/kotlin/jni/ArrayBuffer$DefaultImpls;->copy(Lexpo/modules/kotlin/jni/ArrayBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public getHybridDataForJNIDeallocator()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    return v0
.end method

.method public native read2Byte(I)S
.end method

.method public native read4Byte(I)I
.end method

.method public native read8Byte(I)J
.end method

.method public native readByte(I)B
.end method

.method public native readDouble(I)D
.end method

.method public native readFloat(I)F
.end method

.method public native size()I
.end method

.method public native toDirectBuffer()Ljava/nio/ByteBuffer;
.end method
