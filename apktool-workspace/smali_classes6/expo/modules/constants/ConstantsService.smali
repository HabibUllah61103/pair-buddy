.class public Lexpo/modules/constants/ConstantsService;
.super Ljava/lang/Object;
.source "ConstantsService.kt"

# interfaces
.implements Lexpo/modules/interfaces/constants/ConstantsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/constants/ConstantsService$Companion;,
        Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstantsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantsService.kt\nexpo/modules/constants/ConstantsService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n1#2:101\n*E\n"
.end annotation

.annotation runtime Lexpo/modules/kotlin/services/ServiceInterface;
    clazz = Lexpo/modules/interfaces/constants/ConstantsInterface;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u0017\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\tR\u0014\u0010\u001a\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u0004\u0018\u00010\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/constants/ConstantsService;",
        "Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "statusBarHeightInternal",
        "",
        "getStatusBarHeightInternal",
        "()I",
        "setStatusBarHeightInternal",
        "(I)V",
        "sessionId",
        "",
        "constants",
        "",
        "",
        "getConstants",
        "()Ljava/util/Map;",
        "appScopeKey",
        "getAppScopeKey",
        "()Ljava/lang/String;",
        "deviceName",
        "getDeviceName",
        "statusBarHeight",
        "getStatusBarHeight",
        "systemVersion",
        "getSystemVersion",
        "systemFonts",
        "",
        "getSystemFonts",
        "()Ljava/util/List;",
        "appConfig",
        "getAppConfig",
        "ExecutionEnvironment",
        "Companion",
        "expo-constants_release"
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
.field public static final Companion:Lexpo/modules/constants/ConstantsService$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final sessionId:Ljava/lang/String;

.field private statusBarHeightInternal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/constants/ConstantsService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/constants/ConstantsService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/constants/ConstantsService;->Companion:Lexpo/modules/constants/ConstantsService$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 18
    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 20
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 21
    sget-object v1, Lexpo/modules/constants/ConstantsService;->Companion:Lexpo/modules/constants/ConstantsService$Companion;

    int-to-float v0, v0

    invoke-static {v1, v0, p1}, Lexpo/modules/constants/ConstantsService$Companion;->access$convertPixelsToDp(Lexpo/modules/constants/ConstantsService$Companion;FLandroid/content/Context;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_1
    iput p1, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/constants/ConstantsService;->sessionId:Ljava/lang/String;

    return-void
.end method

.method private final getAppConfig()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 75
    :try_start_0
    iget-object v1, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 77
    const-string v2, "app.config"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 79
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v2

    :goto_0
    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    :try_start_2
    move-object v2, v3

    check-cast v2, Ljava/io/BufferedReader;

    check-cast v2, Ljava/io/Reader;

    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 81
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    .line 78
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    .line 86
    invoke-static {}, Lexpo/modules/constants/ConstantsServiceKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error reading embedded app config"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v0
.end method


# virtual methods
.method public getAppScopeKey()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 34
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "sessionId"

    iget-object v2, p0, Lexpo/modules/constants/ConstantsService;->sessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    sget-object v1, Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;->BARE:Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;

    invoke-virtual {v1}, Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "executionEnvironment"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    iget v1, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "statusBarHeight"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    const-string v1, "deviceName"

    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsService;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 38
    const-string v1, "systemFonts"

    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsService;->getSystemFonts()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    const-string v1, "systemVersion"

    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsService;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 40
    const-string v1, "manifest"

    invoke-direct {p0}, Lexpo/modules/constants/ConstantsService;->getAppConfig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 41
    const-string v1, "android"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "platform"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 33
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .line 49
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    return v0
.end method

.method public final getStatusBarHeightInternal()I
    .locals 1

    .line 16
    iget v0, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    return v0
.end method

.method public getSystemFonts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 61
    const-string v2, "notoserif"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 62
    const-string v2, "sans-serif"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 63
    const-string v2, "sans-serif-light"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 64
    const-string v2, "sans-serif-thin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 65
    const-string v2, "sans-serif-condensed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 66
    const-string v2, "sans-serif-medium"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 67
    const-string v2, "serif"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 68
    const-string v2, "Roboto"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 69
    const-string v2, "monospace"

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setStatusBarHeightInternal(I)V
    .locals 0

    .line 16
    iput p1, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    return-void
.end method
