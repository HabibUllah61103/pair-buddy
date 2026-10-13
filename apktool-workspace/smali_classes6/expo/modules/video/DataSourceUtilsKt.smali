.class public final Lexpo/modules/video/DataSourceUtilsKt;
.super Ljava/lang/Object;
.source "DataSourceUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSourceUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceUtils.kt\nexpo/modules/video/DataSourceUtilsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n434#2:78\n507#2,5:79\n1#3:84\n*S KotlinDebug\n*F\n+ 1 DataSourceUtils.kt\nexpo/modules/video/DataSourceUtilsKt\n*L\n33#1:78\n33#1:79,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0001\u001a\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "buildBaseDataSourceFactory",
        "Landroidx/media3/datasource/DataSource$Factory;",
        "context",
        "Landroid/content/Context;",
        "videoSource",
        "Lexpo/modules/video/records/VideoSource;",
        "buildOkHttpDataSourceFactory",
        "Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;",
        "buildCacheDataSourceFactory",
        "buildMediaSourceFactory",
        "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
        "dataSourceFactory",
        "buildExpoVideoMediaSource",
        "Landroidx/media3/exoplayer/source/MediaSource;",
        "getApplicationName",
        "",
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
.method public static final buildBaseDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lexpo/modules/video/records/VideoSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "http"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-static {p0, p1}, Lexpo/modules/video/DataSourceUtilsKt;->buildOkHttpDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    move-result-object p0

    check-cast p0, Landroidx/media3/datasource/DataSource$Factory;

    return-object p0

    .line 23
    :cond_0
    new-instance p1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {p1, p0}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroidx/media3/datasource/DataSource$Factory;

    return-object p1
.end method

.method public static final buildCacheDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;-><init>()V

    .line 50
    sget-object v1, Lexpo/modules/video/managers/VideoManager;->INSTANCE:Lexpo/modules/video/managers/VideoManager;

    invoke-virtual {v1}, Lexpo/modules/video/managers/VideoManager;->getCache()Lexpo/modules/video/VideoCache;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/video/VideoCache;->getInstance()Landroidx/media3/datasource/cache/SimpleCache;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/cache/Cache;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setCache(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setFlags(I)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 52
    invoke-static {p0, p1}, Lexpo/modules/video/DataSourceUtilsKt;->buildBaseDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 49
    check-cast v0, Landroidx/media3/datasource/DataSource$Factory;

    return-object v0
.end method

.method public static final buildExpoVideoMediaSource(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lexpo/modules/video/records/VideoSource;->getUseCaching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Lexpo/modules/video/DataSourceUtilsKt;->buildCacheDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lexpo/modules/video/DataSourceUtilsKt;->buildBaseDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v0

    .line 67
    :goto_0
    invoke-static {p0, v0}, Lexpo/modules/video/DataSourceUtilsKt;->buildMediaSourceFactory(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    .line 68
    invoke-virtual {p1, p0}, Lexpo/modules/video/records/VideoSource;->toMediaItem(Landroid/content/Context;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    .line 69
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    const-string p1, "createMediaSource(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final buildMediaSourceFactory(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p0

    const-string p1, "setDataSourceFactory(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method public static final buildOkHttpDataSourceFactory(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lexpo/modules/video/DataSourceUtilsKt;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Appendable;

    .line 79
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 80
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ltz v5, :cond_0

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 81
    invoke-interface {v2, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_1
    check-cast v2, Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getUserAgent(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    check-cast v0, Lokhttp3/Call$Factory;

    invoke-direct {v1, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;-><init>(Lokhttp3/Call$Factory;)V

    .line 38
    invoke-virtual {p1}, Lexpo/modules/video/records/VideoSource;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v1, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    :cond_3
    if-eqz p1, :cond_5

    .line 42
    const-string v0, "User-Agent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, p1

    .line 43
    :cond_5
    :goto_2
    invoke-virtual {v1, p0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    return-object v1
.end method

.method private static final getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "getApplicationInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    .line 75
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
