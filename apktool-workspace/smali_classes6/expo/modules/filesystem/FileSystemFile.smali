.class public final Lexpo/modules/filesystem/FileSystemFile;
.super Lexpo/modules/filesystem/FileSystemPath;
.source "FileSystemFile.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemFile.kt\nexpo/modules/filesystem/FileSystemFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\nJ\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0013\u001a\u00020\nJ\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0013\u001a\u00020\nJ\u0006\u0010\u0016\u001a\u00020\u0012J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0015J\u0006\u0010\u001a\u001a\u00020\u0003J\u0010\u0010&\u001a\u00020\'2\u0008\u0010\u000e\u001a\u0004\u0018\u00010(R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u001b\u001a\u00020\u00128F\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u0004\u0018\u00010\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001f\u00a8\u0006)"
    }
    d2 = {
        "Lexpo/modules/filesystem/FileSystemFile;",
        "Lexpo/modules/filesystem/FileSystemPath;",
        "uri",
        "Landroid/net/Uri;",
        "<init>",
        "(Landroid/net/Uri;)V",
        "validatePath",
        "",
        "validateType",
        "exists",
        "",
        "getExists",
        "()Z",
        "create",
        "options",
        "Lexpo/modules/filesystem/CreateOptions;",
        "write",
        "content",
        "",
        "append",
        "Lexpo/modules/kotlin/typedarray/TypedArray;",
        "",
        "asString",
        "text",
        "base64",
        "bytes",
        "asContentUri",
        "md5",
        "getMd5$annotations",
        "()V",
        "getMd5",
        "()Ljava/lang/String;",
        "size",
        "",
        "getSize",
        "()Ljava/lang/Long;",
        "type",
        "getType",
        "info",
        "Lexpo/modules/filesystem/FileInfo;",
        "Lexpo/modules/filesystem/InfoOptions;",
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


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemPath;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic create$default(Lexpo/modules/filesystem/FileSystemFile;Lexpo/modules/filesystem/CreateOptions;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 32
    new-instance v0, Lexpo/modules/filesystem/CreateOptions;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/filesystem/CreateOptions;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/FileSystemFile;->create(Lexpo/modules/filesystem/CreateOptions;)V

    return-void
.end method

.method public static synthetic getMd5$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic write$default(Lexpo/modules/filesystem/FileSystemFile;Lexpo/modules/kotlin/typedarray/TypedArray;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemFile;->write(Lexpo/modules/kotlin/typedarray/TypedArray;Z)V

    return-void
.end method

.method public static synthetic write$default(Lexpo/modules/filesystem/FileSystemFile;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemFile;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic write$default(Lexpo/modules/filesystem/FileSystemFile;[BZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemFile;->write([BZ)V

    return-void
.end method


# virtual methods
.method public final asContentUri()Landroid/net/Uri;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 129
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 130
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getContentUri(Lexpo/modules/kotlin/AppContext;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/filesystem/MissingAppContextException;

    invoke-direct {v0}, Lexpo/modules/filesystem/MissingAppContextException;-><init>()V

    throw v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 5

    .line 99
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 100
    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final base64()Ljava/lang/String;
    .locals 3

    .line 114
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 113
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 114
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .line 115
    invoke-static {v1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "encodeToString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final bytes()[B
    .locals 3

    .line 122
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 121
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 122
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .line 123
    invoke-static {v1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final create(Lexpo/modules/filesystem/CreateOptions;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 34
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 35
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/FileSystemFile;->validateCanCreate(Lexpo/modules/filesystem/CreateOptions;)V

    .line 36
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 39
    invoke-virtual {p1}, Lexpo/modules/filesystem/CreateOptions;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getJavaFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 42
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/filesystem/CreateOptions;->getIntermediates()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getJavaFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 45
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getJavaFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 47
    :cond_2
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string v0, "file already exists or could not be created"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string v0, "create function does not work with SAF Uris, use `createDirectory` and `createFile` instead"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getExists()Z
    .locals 1

    .line 25
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->checkPermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->isFile()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 4

    .line 137
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 136
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->inputStream()Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .line 138
    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 139
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lkotlin/text/HexExtensionsKt;->toHexString$default([BLkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 2

    .line 144
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final info(Lexpo/modules/filesystem/InfoOptions;)Lexpo/modules/filesystem/FileInfo;
    .locals 11

    .line 156
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 157
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 158
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v1, Lexpo/modules/filesystem/FileInfo;

    .line 161
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object p1

    invoke-interface {p1}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/filesystem/FileSystemPathKt;->slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 159
    invoke-direct/range {v1 .. v9}, Lexpo/modules/filesystem/FileInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 165
    :cond_0
    new-instance v2, Lexpo/modules/filesystem/FileInfo;

    .line 167
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getSize()Ljava/lang/Long;

    move-result-object v6

    .line 169
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getModificationTime()Ljava/lang/Long;

    move-result-object v7

    .line 170
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getCreationTime()Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-direct/range {v2 .. v10}, Lexpo/modules/filesystem/FileInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Lexpo/modules/filesystem/InfoOptions;->getMd5()Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lexpo/modules/filesystem/FileInfo;->setMd5(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public final text()Ljava/lang/String;
    .locals 4

    .line 104
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 105
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 106
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .line 107
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_0
    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v1, v3

    check-cast v1, Ljava/io/BufferedReader;

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 107
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 106
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final validatePath()V
    .locals 0

    return-void
.end method

.method public validateType()V
    .locals 1

    .line 18
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 19
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/InvalidTypeFileException;

    invoke-direct {v0}, Lexpo/modules/filesystem/InvalidTypeFileException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final write(Lexpo/modules/kotlin/typedarray/TypedArray;Z)V
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 64
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 65
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 66
    invoke-static {p0, v1, v0, v1}, Lexpo/modules/filesystem/FileSystemFile;->create$default(Lexpo/modules/filesystem/FileSystemFile;Lexpo/modules/filesystem/CreateOptions;ILjava/lang/Object;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->outputStream(Z)Ljava/io/OutputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/io/OutputStream;

    .line 70
    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/TypedArray;->getLength()I

    move-result v2

    new-array v2, v2, [B

    .line 71
    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/TypedArray;->toDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getJavaFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_2
    move-object p2, v0

    check-cast p2, Ljava/io/FileOutputStream;

    .line 76
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/TypedArray;->toDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final write(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 53
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 54
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-static {p0, v1, v0, v1}, Lexpo/modules/filesystem/FileSystemFile;->create$default(Lexpo/modules/filesystem/FileSystemFile;Lexpo/modules/filesystem/CreateOptions;ILjava/lang/Object;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->outputStream(Z)Ljava/io/OutputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/io/OutputStream;

    .line 58
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "getBytes(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write([BZ)V
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->validateType()V

    .line 83
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemFile;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 84
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-static {p0, v1, v0, v1}, Lexpo/modules/filesystem/FileSystemFile;->create$default(Lexpo/modules/filesystem/FileSystemFile;Lexpo/modules/filesystem/CreateOptions;ILjava/lang/Object;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->outputStream(Z)Ljava/io/OutputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/io/OutputStream;

    .line 89
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 90
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemFile;->getJavaFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_2
    move-object p2, v0

    check-cast p2, Ljava/io/FileOutputStream;

    .line 93
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
