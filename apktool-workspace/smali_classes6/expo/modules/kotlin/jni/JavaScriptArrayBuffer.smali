.class public final Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;
.super Ljava/lang/Object;
.source "JavaScriptArrayBuffer.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;
.implements Lexpo/modules/kotlin/jni/ArrayBuffer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\t\u0010\t\u001a\u00020\nH\u0096 J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u0096 J\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\nH\u0096 J\u0011\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0096 J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\nH\u0096 J\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\nH\u0096 J\u0011\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\nH\u0096 J\t\u0010\u0017\u001a\u00020\u0018H\u0096 J\u0008\u0010\u0019\u001a\u00020\u001aH\u0004J\u0008\u0010\u001b\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "Lexpo/modules/kotlin/jni/ArrayBuffer;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "<init>",
        "(Lcom/facebook/jni/HybridData;)V",
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
        "Ljava/nio/ByteBuffer;",
        "finalize",
        "",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method


# virtual methods
.method public copy()Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    .line 11
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

    .line 29
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public getHybridDataForJNIDeallocator()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptArrayBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

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
