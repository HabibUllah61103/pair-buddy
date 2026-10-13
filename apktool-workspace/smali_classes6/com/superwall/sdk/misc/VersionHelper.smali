.class public final Lcom/superwall/sdk/misc/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\tH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/VersionHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "gitSha",
        "",
        "getGitSha",
        "()Ljava/lang/String;",
        "buildTime",
        "getBuildTime",
        "sdkVersion",
        "getSdkVersion",
        "readFileFromAssets",
        "fileName",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final buildTime:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final gitSha:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/superwall/sdk/misc/VersionHelper;->context:Landroid/content/Context;

    .line 14
    const-string v0, "git_sha.txt"

    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/misc/VersionHelper;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/misc/VersionHelper;->gitSha:Ljava/lang/String;

    .line 15
    const-string v0, "build_time.txt"

    invoke-direct {p0, p1, v0}, Lcom/superwall/sdk/misc/VersionHelper;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/VersionHelper;->buildTime:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/superwall/sdk/misc/ConstantsKt;->getSDK_VERSION()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/misc/VersionHelper;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method private final readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 25
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "open(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 27
    new-array p2, p2, [B

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 29
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/lang/String;

    .line 30
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getBuildTime()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/superwall/sdk/misc/VersionHelper;->buildTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/misc/VersionHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getGitSha()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/superwall/sdk/misc/VersionHelper;->gitSha:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/misc/VersionHelper;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method
