package expo.modules.video;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.datasource.HttpUtil$$ExternalSyntheticBackport0;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.video.records.VideoThumbnailOptions;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: MediaMetadataRetriever.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001aA\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\u0002\b\u0007H\u0086@¢\u0006\u0002\u0010\b\u001a%\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u0002H\u0002¢\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¨\u0006\u001e"}, d2 = {"safeUse", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/media/MediaMetadataRetriever;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroid/media/MediaMetadataRetriever;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "generateThumbnailAtTime", "Lexpo/modules/video/VideoThumbnail;", "requestedTime", "Lkotlin/time/Duration;", "options", "Lexpo/modules/video/records/VideoThumbnailOptions;", "generateThumbnailAtTime-8Mi8wO0", "(Landroid/media/MediaMetadataRetriever;JLexpo/modules/video/records/VideoThumbnailOptions;)Lexpo/modules/video/VideoThumbnail;", "calculateActualFrameTime", "mediaMetadataRetriever", "time", "calculateActualFrameTime-HG0u8IE", "(Landroid/media/MediaMetadataRetriever;J)J", "frameTime", "", "(Landroid/media/MediaMetadataRetriever;)Ljava/lang/Double;", "constrainToDimensions", "Landroid/graphics/Bitmap;", ViewProps.MAX_WIDTH, "", ViewProps.MAX_HEIGHT, "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MediaMetadataRetrieverKt {

    /* JADX INFO: renamed from: expo.modules.video.MediaMetadataRetrieverKt$safeUse$1, reason: invalid class name */
    /* JADX INFO: compiled from: MediaMetadataRetriever.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.MediaMetadataRetrieverKt", f = "MediaMetadataRetriever.kt", i = {0}, l = {15}, m = "safeUse", n = {"$this$safeUse"}, s = {"L$0"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaMetadataRetrieverKt.safeUse(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object safeUse(MediaMetadataRetriever mediaMetadataRetriever, Function2<? super MediaMetadataRetriever, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                anonymousClass1.L$0 = mediaMetadataRetriever;
                anonymousClass1.label = 1;
                objInvoke = function2.invoke(mediaMetadataRetriever, anonymousClass1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mediaMetadataRetriever = (MediaMetadataRetriever) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            HttpUtil$$ExternalSyntheticBackport0.m9299m((Object) mediaMetadataRetriever);
            return objInvoke;
        } catch (Throwable th) {
            HttpUtil$$ExternalSyntheticBackport0.m9299m((Object) mediaMetadataRetriever);
            throw th;
        }
    }

    /* JADX INFO: renamed from: generateThumbnailAtTime-8Mi8wO0$default, reason: not valid java name */
    public static /* synthetic */ VideoThumbnail m11203generateThumbnailAtTime8Mi8wO0$default(MediaMetadataRetriever mediaMetadataRetriever, long j, VideoThumbnailOptions videoThumbnailOptions, int i, Object obj) {
        if ((i & 2) != 0) {
            videoThumbnailOptions = null;
        }
        return m11202generateThumbnailAtTime8Mi8wO0(mediaMetadataRetriever, j, videoThumbnailOptions);
    }

    /* JADX INFO: renamed from: generateThumbnailAtTime-8Mi8wO0, reason: not valid java name */
    public static final VideoThumbnail m11202generateThumbnailAtTime8Mi8wO0(MediaMetadataRetriever generateThumbnailAtTime, long j, VideoThumbnailOptions videoThumbnailOptions) {
        MediaMetadataRetriever mediaMetadataRetriever;
        Intrinsics.checkNotNullParameter(generateThumbnailAtTime, "$this$generateThumbnailAtTime");
        Bitmap frameAtTime = null;
        Pair<Integer, Integer> nativeSizeLimit = videoThumbnailOptions != null ? videoThumbnailOptions.toNativeSizeLimit() : null;
        if (nativeSizeLimit != null) {
            int iIntValue = nativeSizeLimit.component1().intValue();
            int iIntValue2 = nativeSizeLimit.component2().intValue();
            if (Build.VERSION.SDK_INT >= 27) {
                mediaMetadataRetriever = generateThumbnailAtTime;
                frameAtTime = mediaMetadataRetriever.getScaledFrameAtTime(Duration.m12611getInWholeMicrosecondsimpl(j), 3, iIntValue, iIntValue2);
            } else {
                mediaMetadataRetriever = generateThumbnailAtTime;
                Bitmap frameAtTime2 = mediaMetadataRetriever.getFrameAtTime(Duration.m12611getInWholeMicrosecondsimpl(j), 3);
                if (frameAtTime2 != null) {
                    frameAtTime = constrainToDimensions(frameAtTime2, iIntValue, iIntValue2);
                }
            }
        } else {
            mediaMetadataRetriever = generateThumbnailAtTime;
            frameAtTime = mediaMetadataRetriever.getFrameAtTime(Duration.m12611getInWholeMicrosecondsimpl(j), 3);
        }
        Bitmap bitmap = frameAtTime;
        if (bitmap == null) {
            throw new IllegalStateException("Failed to generate thumbnail");
        }
        return new VideoThumbnail(bitmap, j, m11201calculateActualFrameTimeHG0u8IE(mediaMetadataRetriever, j), null);
    }

    /* JADX INFO: renamed from: calculateActualFrameTime-HG0u8IE, reason: not valid java name */
    private static final long m11201calculateActualFrameTimeHG0u8IE(MediaMetadataRetriever mediaMetadataRetriever, long j) {
        Double dFrameTime = frameTime(mediaMetadataRetriever);
        if (dFrameTime == null) {
            return j;
        }
        double dDoubleValue = dFrameTime.doubleValue();
        return DurationKt.toDuration(MathKt.roundToLong(Duration.m12611getInWholeMicrosecondsimpl(j) / dDoubleValue) * dDoubleValue, DurationUnit.MICROSECONDS);
    }

    private static final Double frameTime(MediaMetadataRetriever mediaMetadataRetriever) {
        String strExtractMetadata;
        if (Build.VERSION.SDK_INT >= 28 && (strExtractMetadata = mediaMetadataRetriever.extractMetadata(9)) != null) {
            double d = Double.parseDouble(strExtractMetadata);
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(32);
            if (strExtractMetadata2 != null) {
                return Double.valueOf((d * ((double) 1000)) / Double.parseDouble(strExtractMetadata2));
            }
        }
        return null;
    }

    private static final Bitmap constrainToDimensions(Bitmap bitmap, int i, int i2) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMax = Math.max(width / i, height / i2);
        if (fMax <= 1.0f) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (width / fMax), (int) (height / fMax), true);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        return bitmapCreateScaledBitmap;
    }
}
