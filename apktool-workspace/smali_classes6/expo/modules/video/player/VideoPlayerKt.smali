.class public final Lexpo/modules/video/player/VideoPlayerKt;
.super Ljava/lang/Object;
.source "VideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,596:1\n295#2,2:597\n*S KotlinDebug\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayerKt\n*L\n581#1:597,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "toVideoTracks",
        "",
        "Lexpo/modules/video/records/VideoTrack;",
        "Landroidx/media3/common/Tracks;",
        "sourceManifest",
        "Landroidx/media3/exoplayer/hls/HlsManifest;",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toVideoTracks(Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/hls/HlsManifest;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayerKt;->toVideoTracks(Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/hls/HlsManifest;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final toVideoTracks(Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/hls/HlsManifest;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Tracks;",
            "Landroidx/media3/exoplayer/hls/HlsManifest;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 577
    invoke-virtual {p0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    const-string v1, "iterator(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    .line 578
    iget v2, v1, Landroidx/media3/common/Tracks$Group;->length:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 579
    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    const-string v5, "getTrackFormat(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .line 581
    iget-object v7, p1, Landroidx/media3/exoplayer/hls/HlsManifest;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    if-eqz v7, :cond_3

    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    if-eqz v7, :cond_3

    check-cast v7, Ljava/lang/Iterable;

    .line 597
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 582
    iget-object v9, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v9, v9, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v10, v4, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 598
    :goto_1
    check-cast v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    goto :goto_2

    :cond_3
    move-object v8, v6

    :goto_2
    if-eqz v8, :cond_4

    .line 586
    iget-object v6, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 588
    :cond_4
    iget-object v7, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 591
    :cond_5
    sget-object v7, Lexpo/modules/video/records/VideoTrack;->Companion:Lexpo/modules/video/records/VideoTrack$Companion;

    invoke-virtual {v7, v4, v5, v6}, Lexpo/modules/video/records/VideoTrack$Companion;->fromFormat(Landroidx/media3/common/Format;ZLandroid/net/Uri;)Lexpo/modules/video/records/VideoTrack;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
