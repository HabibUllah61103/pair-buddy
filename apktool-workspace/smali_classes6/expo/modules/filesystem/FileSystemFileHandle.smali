.class public final Lexpo/modules/filesystem/FileSystemFileHandle;
.super Lexpo/modules/kotlin/sharedobjects/SharedRef;
.source "FileSystemFileHandle.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "Ljava/nio/channels/FileChannel;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fR\u000e\u0010\t\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/filesystem/FileSystemFileHandle;",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Ljava/nio/channels/FileChannel;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "file",
        "Lexpo/modules/filesystem/FileSystemFile;",
        "<init>",
        "(Lexpo/modules/filesystem/FileSystemFile;)V",
        "fileChannel",
        "ensureIsOpen",
        "",
        "sharedObjectDidRelease",
        "close",
        "read",
        "",
        "length",
        "",
        "write",
        "data",
        "value",
        "offset",
        "getOffset",
        "()Ljava/lang/Long;",
        "setOffset",
        "(Ljava/lang/Long;)V",
        "size",
        "getSize",
        "expo-file-system_release"
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
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemFile;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemFile;->getJavaFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lexpo/modules/kotlin/sharedobjects/SharedRef;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/runtime/Runtime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFileHandle;->getRef()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/FileChannel;

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private final ensureIsOpen()V
    .locals 2

    .line 13
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/UnableToReadHandleException;

    const-string v1, "file handle is closed"

    invoke-direct {v0, v1}, Lexpo/modules/filesystem/UnableToReadHandleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public final getOffset()Ljava/lang/Long;
    .locals 2

    .line 67
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final read(J)[B
    .locals 4

    .line 27
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemFileHandle;->ensureIsOpen()V

    .line 29
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 32
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    .line 35
    new-array p1, p2, [B

    return-object p1

    .line 38
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 41
    iget-object v1, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/2addr p2, v1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string p2, "array(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Lexpo/modules/filesystem/UnableToReadHandleException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "unknown error"

    :cond_2
    invoke-direct {p2, p1}, Lexpo/modules/filesystem/UnableToReadHandleException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final setOffset(Ljava/lang/Long;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public sharedObjectDidRelease()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFileHandle;->close()V

    return-void
.end method

.method public final write([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemFileHandle;->ensureIsOpen()V

    .line 55
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 56
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Lexpo/modules/filesystem/UnableToWriteHandleException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "unknown error"

    :cond_1
    invoke-direct {v0, p1}, Lexpo/modules/filesystem/UnableToWriteHandleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
