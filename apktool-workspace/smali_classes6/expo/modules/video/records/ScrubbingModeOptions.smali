.class public final Lexpo/modules/video/records/ScrubbingModeOptions;
.super Ljava/lang/Object;
.source "ScrubbingModeOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010!\u001a\u00020\"H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R$\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R$\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R$\u0010\u0008\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/video/records/ScrubbingModeOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "scrubbingModeEnabled",
        "",
        "increaseCodecOperatingRate",
        "enableDynamicScheduling",
        "useDecodeOnlyFlag",
        "allowSkippingMediaCodecFlush",
        "<init>",
        "(ZZZZZ)V",
        "getScrubbingModeEnabled$annotations",
        "()V",
        "getScrubbingModeEnabled",
        "()Z",
        "setScrubbingModeEnabled",
        "(Z)V",
        "getIncreaseCodecOperatingRate$annotations",
        "getIncreaseCodecOperatingRate",
        "setIncreaseCodecOperatingRate",
        "getEnableDynamicScheduling$annotations",
        "getEnableDynamicScheduling",
        "setEnableDynamicScheduling",
        "getUseDecodeOnlyFlag$annotations",
        "getUseDecodeOnlyFlag",
        "setUseDecodeOnlyFlag",
        "getAllowSkippingMediaCodecFlush$annotations",
        "getAllowSkippingMediaCodecFlush",
        "setAllowSkippingMediaCodecFlush",
        "applyToPlayer",
        "",
        "videoPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "toScrubbingModeParameters",
        "Landroidx/media3/exoplayer/ScrubbingModeParameters;",
        "expo-video_release"
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
.field private allowSkippingMediaCodecFlush:Z

.field private enableDynamicScheduling:Z

.field private increaseCodecOperatingRate:Z

.field private scrubbingModeEnabled:Z

.field private useDecodeOnlyFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lexpo/modules/video/records/ScrubbingModeOptions;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->scrubbingModeEnabled:Z

    .line 13
    iput-boolean p2, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->increaseCodecOperatingRate:Z

    .line 14
    iput-boolean p3, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->enableDynamicScheduling:Z

    .line 15
    iput-boolean p4, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->useDecodeOnlyFlag:Z

    .line 16
    iput-boolean p5, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->allowSkippingMediaCodecFlush:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x1

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p7, v0

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_4
    move p7, p5

    move p6, p4

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    .line 11
    :goto_0
    invoke-direct/range {p2 .. p7}, Lexpo/modules/video/records/ScrubbingModeOptions;-><init>(ZZZZZ)V

    return-void
.end method

.method public static synthetic getAllowSkippingMediaCodecFlush$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getEnableDynamicScheduling$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getIncreaseCodecOperatingRate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getScrubbingModeEnabled$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUseDecodeOnlyFlag$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method private final toScrubbingModeParameters()Landroidx/media3/exoplayer/ScrubbingModeParameters;
    .locals 2

    .line 24
    new-instance v0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;-><init>()V

    .line 25
    iget-boolean v1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->useDecodeOnlyFlag:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->setUseDecodeOnlyFlag(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    move-result-object v0

    .line 26
    iget-boolean v1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->allowSkippingMediaCodecFlush:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->setAllowSkippingMediaCodecFlush(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->increaseCodecOperatingRate:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->setShouldIncreaseCodecOperatingRate(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    move-result-object v0

    .line 28
    iget-boolean v1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->enableDynamicScheduling:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->setShouldEnableDynamicScheduling(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->build()Landroidx/media3/exoplayer/ScrubbingModeParameters;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final applyToPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 2

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iget-boolean v1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->scrubbingModeEnabled:Z

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setScrubbingModeEnabled(Z)V

    .line 20
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-direct {p0}, Lexpo/modules/video/records/ScrubbingModeOptions;->toScrubbingModeParameters()Landroidx/media3/exoplayer/ScrubbingModeParameters;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setScrubbingModeParameters(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V

    return-void
.end method

.method public final getAllowSkippingMediaCodecFlush()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->allowSkippingMediaCodecFlush:Z

    return v0
.end method

.method public final getEnableDynamicScheduling()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->enableDynamicScheduling:Z

    return v0
.end method

.method public final getIncreaseCodecOperatingRate()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->increaseCodecOperatingRate:Z

    return v0
.end method

.method public final getScrubbingModeEnabled()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->scrubbingModeEnabled:Z

    return v0
.end method

.method public final getUseDecodeOnlyFlag()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->useDecodeOnlyFlag:Z

    return v0
.end method

.method public final setAllowSkippingMediaCodecFlush(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->allowSkippingMediaCodecFlush:Z

    return-void
.end method

.method public final setEnableDynamicScheduling(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->enableDynamicScheduling:Z

    return-void
.end method

.method public final setIncreaseCodecOperatingRate(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->increaseCodecOperatingRate:Z

    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->scrubbingModeEnabled:Z

    return-void
.end method

.method public final setUseDecodeOnlyFlag(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lexpo/modules/video/records/ScrubbingModeOptions;->useDecodeOnlyFlag:Z

    return-void
.end method
