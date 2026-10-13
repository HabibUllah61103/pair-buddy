.class public final Lexpo/modules/filesystem/FileSystemDirectory;
.super Lexpo/modules/filesystem/FileSystemPath;
.source "FileSystemDirectory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemDirectory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemDirectory.kt\nexpo/modules/filesystem/FileSystemDirectory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1617#2,9:135\n1869#2:144\n1870#2:146\n1626#2:147\n1563#2:148\n1634#2,3:149\n1#3:145\n*S KotlinDebug\n*F\n+ 1 FileSystemDirectory.kt\nexpo/modules/filesystem/FileSystemDirectory\n*L\n46#1:135,9\n46#1:144\n46#1:146\n46#1:147\n111#1:148\n111#1:149,3\n46#1:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020 0\u001f0\u001eJ\u0006\u0010!\u001a\u00020\u0019J\u000e\u0010\"\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/filesystem/FileSystemDirectory;",
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
        "size",
        "",
        "getSize",
        "()J",
        "info",
        "Lexpo/modules/filesystem/DirectoryInfo;",
        "create",
        "options",
        "Lexpo/modules/filesystem/CreateOptions;",
        "createFile",
        "Lexpo/modules/filesystem/FileSystemFile;",
        "mimeType",
        "",
        "fileName",
        "createDirectory",
        "validateChildTarget",
        "listAsRecords",
        "",
        "",
        "",
        "asString",
        "needsCreation",
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
.method public static synthetic $r8$lambda$cIOmr4udoZ-S4qdbTemNjniFzeA(Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;)Z
    .locals 0

    invoke-static {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->_get_size_$lambda$0(Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rqDlAMjvUeWN4A36SoLDdd7_akI(Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;)J
    .locals 2

    invoke-static {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->_get_size_$lambda$1(Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemPath;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method private static final _get_size_$lambda$0(Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->isFile()Z

    move-result p0

    return p0
.end method

.method private static final _get_size_$lambda$1(Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;)J
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic create$default(Lexpo/modules/filesystem/FileSystemDirectory;Lexpo/modules/filesystem/CreateOptions;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 54
    new-instance v0, Lexpo/modules/filesystem/CreateOptions;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/filesystem/CreateOptions;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/FileSystemDirectory;->create(Lexpo/modules/filesystem/CreateOptions;)V

    return-void
.end method

.method private final validateChildTarget(Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-static {p1}, Lexpo/modules/filesystem/FileSystemPathKt;->validateFileSystemChildName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->isAssetUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getJavaFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string v0, "child path escapes parent directory"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 5

    .line 126
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 127
    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lexpo/modules/filesystem/CreateOptions;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->validateType()V

    .line 56
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 57
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/FileSystemDirectory;->needsCreation(Lexpo/modules/filesystem/CreateOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p0, p1}, Lexpo/modules/filesystem/FileSystemDirectory;->validateCanCreate(Lexpo/modules/filesystem/CreateOptions;)V

    .line 64
    invoke-virtual {p1}, Lexpo/modules/filesystem/CreateOptions;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->delete()Z

    .line 67
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/filesystem/CreateOptions;->getIntermediates()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getJavaFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getJavaFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    return-void

    .line 73
    :cond_3
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string v0, "directory already exists or could not be created"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_4
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string v0, "create function does not work with SAF Uris, use `createDirectory` and `createFile` instead"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createDirectory(Ljava/lang/String;)Lexpo/modules/filesystem/FileSystemDirectory;
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->validateType()V

    .line 88
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 89
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemDirectory;->validateChildTarget(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->createDirectory(Ljava/lang/String;)Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Lexpo/modules/filesystem/FileSystemDirectory;

    invoke-interface {p1}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/filesystem/FileSystemDirectory;-><init>(Landroid/net/Uri;)V

    return-object v0

    .line 91
    :cond_0
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string v0, "directory could not be created"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createFile(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/filesystem/FileSystemFile;
    .locals 1

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->validateType()V

    .line 79
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 80
    invoke-direct {p0, p2}, Lexpo/modules/filesystem/FileSystemDirectory;->validateChildTarget(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "text/plain"

    :cond_0
    invoke-interface {v0, p1, p2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->createFile(Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    new-instance p2, Lexpo/modules/filesystem/FileSystemFile;

    invoke-interface {p1}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p1}, Lexpo/modules/filesystem/FileSystemFile;-><init>(Landroid/net/Uri;)V

    return-object p2

    .line 82
    :cond_1
    new-instance p1, Lexpo/modules/filesystem/UnableToCreateException;

    const-string p2, "file could not be created"

    invoke-direct {p1, p2}, Lexpo/modules/filesystem/UnableToCreateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getExists()Z
    .locals 1

    .line 19
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->checkPermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->isDirectory()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getSize()J
    .locals 2

    .line 27
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 28
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->validateType()V

    .line 29
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->walkTopDown()Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lexpo/modules/filesystem/FileSystemDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/filesystem/FileSystemDirectory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lexpo/modules/filesystem/FileSystemDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lexpo/modules/filesystem/FileSystemDirectory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sumOfLong(Lkotlin/sequences/Sequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final info()Lexpo/modules/filesystem/DirectoryInfo;
    .locals 11

    .line 33
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->validateType()V

    .line 34
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 35
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v1, Lexpo/modules/filesystem/DirectoryInfo;

    .line 38
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 36
    invoke-direct/range {v1 .. v10}, Lexpo/modules/filesystem/DirectoryInfo;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemPathKt;->slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->listFilesAsUnified()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 143
    check-cast v2, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    .line 46
    invoke-interface {v2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 143
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_2
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getModificationTime()Ljava/lang/Long;

    move-result-object v7

    .line 48
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getCreationTime()Ljava/lang/Long;

    move-result-object v8

    .line 49
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getSize()J

    move-result-wide v0

    move-wide v5, v0

    .line 43
    new-instance v1, Lexpo/modules/filesystem/DirectoryInfo;

    .line 49
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-direct/range {v1 .. v10}, Lexpo/modules/filesystem/DirectoryInfo;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final listAsRecords()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->validateType()V

    .line 110
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemDirectory;->validatePermission(Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 111
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->listFilesAsUnified()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 149
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 150
    check-cast v2, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    .line 112
    invoke-interface {v2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-interface {v2}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->isDirectory()Z

    move-result v2

    const/4 v4, 0x2

    .line 115
    new-array v5, v4, [Lkotlin/Pair;

    const-string v6, "isDirectory"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 117
    const-string v6, "/"

    invoke-static {v3, v6, v7, v4, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_1
    :goto_1
    const-string v2, "uri"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    .line 114
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 150
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final needsCreation(Lexpo/modules/filesystem/CreateOptions;)Z
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lexpo/modules/filesystem/CreateOptions;->getIdempotent()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final validatePath()V
    .locals 0

    return-void
.end method

.method public validateType()V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemDirectory;->getFile()Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/filesystem/unifiedfile/UnifiedFileInterface;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/InvalidTypeFolderException;

    invoke-direct {v0}, Lexpo/modules/filesystem/InvalidTypeFolderException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
