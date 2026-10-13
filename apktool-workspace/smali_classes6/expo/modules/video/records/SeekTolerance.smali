.class public final Lexpo/modules/video/records/SeekTolerance;
.super Ljava/lang/Object;
.source "SeekTolerance.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/video/records/SeekTolerance;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "toleranceBefore",
        "",
        "toleranceAfter",
        "<init>",
        "(DD)V",
        "getToleranceBefore$annotations",
        "()V",
        "getToleranceBefore",
        "()D",
        "setToleranceBefore",
        "(D)V",
        "getToleranceAfter$annotations",
        "getToleranceAfter",
        "setToleranceAfter",
        "applyToPlayer",
        "",
        "videoPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "toSeekParameters",
        "Landroidx/media3/exoplayer/SeekParameters;",
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
.field private toleranceAfter:D

.field private toleranceBefore:D


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/video/records/SeekTolerance;-><init>(DDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceBefore:D

    .line 14
    iput-wide p3, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceAfter:D

    return-void
.end method

.method public synthetic constructor <init>(DDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x0

    if-eqz p6, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-wide p3, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/video/records/SeekTolerance;-><init>(DD)V

    return-void
.end method

.method public static synthetic getToleranceAfter$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getToleranceBefore$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method private final toSeekParameters()Landroidx/media3/exoplayer/SeekParameters;
    .locals 6

    .line 21
    iget-wide v0, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceBefore:D

    const/16 v2, 0x3e8

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 22
    iget-wide v4, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceAfter:D

    mul-double/2addr v4, v2

    double-to-long v2, v4

    .line 23
    new-instance v4, Landroidx/media3/exoplayer/SeekParameters;

    .line 24
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 25
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    .line 23
    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public final applyToPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 1

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-direct {p0}, Lexpo/modules/video/records/SeekTolerance;->toSeekParameters()Landroidx/media3/exoplayer/SeekParameters;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    return-void
.end method

.method public final getToleranceAfter()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceAfter:D

    return-wide v0
.end method

.method public final getToleranceBefore()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceBefore:D

    return-wide v0
.end method

.method public final setToleranceAfter(D)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceAfter:D

    return-void
.end method

.method public final setToleranceBefore(D)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lexpo/modules/video/records/SeekTolerance;->toleranceBefore:D

    return-void
.end method
