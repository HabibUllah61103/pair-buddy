package expo.modules.video;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.okhttp.OkHttpDataSource;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import com.facebook.common.util.UriUtil;
import com.google.common.net.HttpHeaders;
import expo.modules.video.managers.VideoManager;
import expo.modules.video.records.VideoSource;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: DataSourceUtils.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0001\u001a\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¨\u0006\u0010"}, d2 = {"buildBaseDataSourceFactory", "Landroidx/media3/datasource/DataSource$Factory;", "context", "Landroid/content/Context;", "videoSource", "Lexpo/modules/video/records/VideoSource;", "buildOkHttpDataSourceFactory", "Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;", "buildCacheDataSourceFactory", "buildMediaSourceFactory", "Landroidx/media3/exoplayer/source/MediaSource$Factory;", "dataSourceFactory", "buildExpoVideoMediaSource", "Landroidx/media3/exoplayer/source/MediaSource;", "getApplicationName", "", "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DataSourceUtilsKt {
    public static final DataSource.Factory buildBaseDataSourceFactory(Context context, VideoSource videoSource) {
        String scheme;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoSource, "videoSource");
        Uri uri = videoSource.getUri();
        if (uri != null && (scheme = uri.getScheme()) != null && StringsKt.startsWith$default(scheme, UriUtil.HTTP_SCHEME, false, 2, (Object) null)) {
            return buildOkHttpDataSourceFactory(context, videoSource);
        }
        return new DefaultDataSource.Factory(context);
    }

    public static final OkHttpDataSource.Factory buildOkHttpDataSourceFactory(Context context, VideoSource videoSource) throws IOException {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoSource, "videoSource");
        OkHttpClient okHttpClientBuild = new OkHttpClient.Builder().build();
        String applicationName = getApplicationName(context);
        StringBuilder sb = new StringBuilder();
        int length = applicationName.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = applicationName.charAt(i);
            if (cCharAt >= 0 && cCharAt < 128) {
                sb.append(cCharAt);
            }
        }
        String userAgent = Util.getUserAgent(context, sb.toString());
        Intrinsics.checkNotNullExpressionValue(userAgent, "getUserAgent(...)");
        OkHttpDataSource.Factory factory = new OkHttpDataSource.Factory(okHttpClientBuild);
        Map<String, String> headers = videoSource.getHeaders();
        if (headers != null) {
            Map<String, String> map = !headers.isEmpty() ? headers : null;
            if (map != null) {
                factory.setDefaultRequestProperties(map);
            }
        }
        if (headers != null && (str = headers.get(HttpHeaders.USER_AGENT)) != null) {
            userAgent = str;
        }
        factory.setUserAgent(userAgent);
        return factory;
    }

    public static final DataSource.Factory buildCacheDataSourceFactory(Context context, VideoSource videoSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoSource, "videoSource");
        CacheDataSource.Factory factory = new CacheDataSource.Factory();
        factory.setCache(VideoManager.INSTANCE.getCache().getInstance());
        factory.setFlags(2);
        factory.setUpstreamDataSourceFactory(buildBaseDataSourceFactory(context, videoSource));
        return factory;
    }

    public static final MediaSource.Factory buildMediaSourceFactory(Context context, DataSource.Factory dataSourceFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
        DefaultMediaSourceFactory dataSourceFactory2 = new DefaultMediaSourceFactory(context).setDataSourceFactory(dataSourceFactory);
        Intrinsics.checkNotNullExpressionValue(dataSourceFactory2, "setDataSourceFactory(...)");
        return dataSourceFactory2;
    }

    public static final MediaSource buildExpoVideoMediaSource(Context context, VideoSource videoSource) {
        DataSource.Factory factoryBuildBaseDataSourceFactory;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoSource, "videoSource");
        if (videoSource.getUseCaching()) {
            factoryBuildBaseDataSourceFactory = buildCacheDataSourceFactory(context, videoSource);
        } else {
            factoryBuildBaseDataSourceFactory = buildBaseDataSourceFactory(context, videoSource);
        }
        MediaSource mediaSourceCreateMediaSource = buildMediaSourceFactory(context, factoryBuildBaseDataSourceFactory).createMediaSource(videoSource.toMediaItem(context));
        Intrinsics.checkNotNullExpressionValue(mediaSourceCreateMediaSource, "createMediaSource(...)");
        return mediaSourceCreateMediaSource;
    }

    private static final String getApplicationName(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
        int i = applicationInfo.labelRes;
        if (i == 0) {
            return applicationInfo.nonLocalizedLabel.toString();
        }
        String string = context.getString(i);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }
}
