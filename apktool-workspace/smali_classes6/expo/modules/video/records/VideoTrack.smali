.class public final Lexpo/modules/video/records/VideoTrack;
.super Ljava/lang/Object;
.source "Tracks.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/records/VideoTrack$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\"\u0008\u0007\u0018\u0000 42\u00020\u00012\u00020\u0002:\u00014Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0017\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u001fR\u001e\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010\u0017\u001a\u0004\u0008!\u0010\u0019R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008\n\u0010#R \u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\'\u0012\u0004\u0008$\u0010\u0017\u001a\u0004\u0008%\u0010&R \u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\'\u0012\u0004\u0008(\u0010\u0017\u001a\u0004\u0008)\u0010&R \u0010\u000f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\'\u0012\u0004\u0008*\u0010\u0017\u001a\u0004\u0008+\u0010&R \u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010/\u0012\u0004\u0008,\u0010\u0017\u001a\u0004\u0008-\u0010.R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103\u00a8\u00065"
    }
    d2 = {
        "Lexpo/modules/video/records/VideoTrack;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "url",
        "Landroid/net/Uri;",
        "size",
        "Lexpo/modules/video/records/VideoSize;",
        "mimeType",
        "isSupported",
        "",
        "bitrate",
        "",
        "averageBitrate",
        "peakBitrate",
        "frameRate",
        "",
        "format",
        "Landroidx/media3/common/Format;",
        "<init>",
        "(Ljava/lang/String;Landroid/net/Uri;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;)V",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getUrl$annotations",
        "getUrl",
        "()Landroid/net/Uri;",
        "getSize$annotations",
        "getSize",
        "()Lexpo/modules/video/records/VideoSize;",
        "getMimeType$annotations",
        "getMimeType",
        "isSupported$annotations",
        "()Z",
        "getBitrate$annotations",
        "getBitrate",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getAverageBitrate$annotations",
        "getAverageBitrate",
        "getPeakBitrate$annotations",
        "getPeakBitrate",
        "getFrameRate$annotations",
        "getFrameRate",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getFormat",
        "()Landroidx/media3/common/Format;",
        "setFormat",
        "(Landroidx/media3/common/Format;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/video/records/VideoTrack$Companion;


# instance fields
.field private final averageBitrate:Ljava/lang/Integer;

.field private final bitrate:Ljava/lang/Integer;

.field private format:Landroidx/media3/common/Format;

.field private final frameRate:Ljava/lang/Float;

.field private final id:Ljava/lang/String;

.field private final isSupported:Z

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:Ljava/lang/Integer;

.field private final size:Lexpo/modules/video/records/VideoSize;

.field private final url:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/records/VideoTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/records/VideoTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/records/VideoTrack;->Companion:Lexpo/modules/video/records/VideoTrack$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lexpo/modules/video/records/VideoTrack;->id:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lexpo/modules/video/records/VideoTrack;->url:Landroid/net/Uri;

    .line 76
    iput-object p3, p0, Lexpo/modules/video/records/VideoTrack;->size:Lexpo/modules/video/records/VideoSize;

    .line 77
    iput-object p4, p0, Lexpo/modules/video/records/VideoTrack;->mimeType:Ljava/lang/String;

    .line 78
    iput-boolean p5, p0, Lexpo/modules/video/records/VideoTrack;->isSupported:Z

    .line 79
    iput-object p6, p0, Lexpo/modules/video/records/VideoTrack;->bitrate:Ljava/lang/Integer;

    .line 80
    iput-object p7, p0, Lexpo/modules/video/records/VideoTrack;->averageBitrate:Ljava/lang/Integer;

    .line 81
    iput-object p8, p0, Lexpo/modules/video/records/VideoTrack;->peakBitrate:Ljava/lang/Integer;

    .line 82
    iput-object p9, p0, Lexpo/modules/video/records/VideoTrack;->frameRate:Ljava/lang/Float;

    .line 83
    iput-object p10, p0, Lexpo/modules/video/records/VideoTrack;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    move-object v12, v2

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v2, p0

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 73
    :goto_5
    invoke-direct/range {v2 .. v12}, Lexpo/modules/video/records/VideoTrack;-><init>(Ljava/lang/String;Landroid/net/Uri;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;)V

    return-void
.end method

.method public static synthetic getAverageBitrate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getBitrate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getFrameRate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMimeType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPeakBitrate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUrl$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic isSupported$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAverageBitrate()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->averageBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 83
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->format:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public final getFrameRate()Ljava/lang/Float;
    .locals 1

    .line 82
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->frameRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeakBitrate()Ljava/lang/Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->peakBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSize()Lexpo/modules/video/records/VideoSize;
    .locals 1

    .line 76
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->size:Lexpo/modules/video/records/VideoSize;

    return-object v0
.end method

.method public final getUrl()Landroid/net/Uri;
    .locals 1

    .line 75
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lexpo/modules/video/records/VideoTrack;->isSupported:Z

    return v0
.end method

.method public final setFormat(Landroidx/media3/common/Format;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lexpo/modules/video/records/VideoTrack;->format:Landroidx/media3/common/Format;

    return-void
.end method
