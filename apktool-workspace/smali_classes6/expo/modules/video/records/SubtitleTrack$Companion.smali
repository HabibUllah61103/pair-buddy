.class public final Lexpo/modules/video/records/SubtitleTrack$Companion;
.super Ljava/lang/Object;
.source "Tracks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/records/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/video/records/SubtitleTrack$Companion;",
        "",
        "<init>",
        "()V",
        "fromFormat",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "format",
        "Landroidx/media3/common/Format;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/video/records/SubtitleTrack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromFormat(Landroidx/media3/common/Format;)Lexpo/modules/video/records/SubtitleTrack;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 23
    :cond_0
    iget-object v2, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v0

    .line 24
    :cond_1
    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v3, :cond_2

    return-object v0

    .line 25
    :cond_2
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    .line 26
    iget-object v5, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 27
    iget v0, p1, Landroidx/media3/common/Format;->selectionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    move v0, v6

    move v6, v1

    goto :goto_0

    :cond_3
    move v0, v6

    .line 28
    :goto_0
    iget p1, p1, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    move v7, v1

    goto :goto_1

    :cond_4
    move v7, v0

    .line 30
    :goto_1
    new-instance v1, Lexpo/modules/video/records/SubtitleTrack;

    invoke-direct/range {v1 .. v7}, Lexpo/modules/video/records/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1
.end method
