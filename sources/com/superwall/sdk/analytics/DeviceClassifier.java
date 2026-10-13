package com.superwall.sdk.analytics;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.MimeTypes;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DeviceClassifier.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u000fH\u0002J\u0014\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\t\u0010\u0017\u001a\u00020\u0018H\u0096\u0001J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J\t\u0010\u001c\u001a\u00020\u000fH\u0096\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u0096\u0001J\t\u0010\u001f\u001a\u00020\u000fH\u0096\u0001J\t\u0010 \u001a\u00020!H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0014\u0010\"\u001a\u00020#8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0014\u0010&\u001a\u00020'8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/superwall/sdk/analytics/DeviceClassifier;", "Lcom/superwall/sdk/analytics/ClassifierDataFactory;", "factory", "<init>", "(Lcom/superwall/sdk/analytics/ClassifierDataFactory;)V", "videoCodecs", "", "", "getVideoCodecs", "()Ljava/util/List;", "videoCodecs$delegate", "Lkotlin/Lazy;", "deviceTier", "Lcom/superwall/sdk/analytics/Tier;", "cpuScore", "", "primeFreqBonus", "memScore", "videoScore", "displayScore", "totalScore", "Lcom/superwall/sdk/misc/Either;", "", "advertisedMemory", "", "codecs", "context", "Landroid/content/Context;", "getScreenHeight", "getScreenSize", "", "getScreenWidth", "isTabletMinWidth", "", "cpuInfo", "Lcom/superwall/sdk/analytics/CPUInfo$Data;", "getCpuInfo", "()Lcom/superwall/sdk/analytics/CPUInfo$Data;", "orientation", "Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;", "getOrientation", "()Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;", ExifInterface.TAG_ORIENTATION, "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DeviceClassifier implements ClassifierDataFactory {
    private final ClassifierDataFactory factory;

    /* JADX INFO: renamed from: videoCodecs$delegate, reason: from kotlin metadata */
    private final Lazy videoCodecs;

    /* JADX INFO: compiled from: DeviceClassifier.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;", "", "<init>", "(Ljava/lang/String;I)V", "LANDSCAPE", "PORTRAIT", "UNDEFINED", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum Orientation {
        LANDSCAPE,
        PORTRAIT,
        UNDEFINED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<Orientation> getEntries() {
            return $ENTRIES;
        }
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public long advertisedMemory() {
        return this.factory.advertisedMemory();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public List<String> codecs() {
        return this.factory.codecs();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public Context context() {
        return this.factory.context();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public CPUInfo.Data getCpuInfo() {
        return this.factory.getCpuInfo();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public Orientation getOrientation() {
        return this.factory.getOrientation();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public int getScreenHeight() {
        return this.factory.getScreenHeight();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public double getScreenSize() {
        return this.factory.getScreenSize();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public int getScreenWidth() {
        return this.factory.getScreenWidth();
    }

    @Override // com.superwall.sdk.analytics.ClassifierDataFactory
    public boolean isTabletMinWidth() {
        return this.factory.isTabletMinWidth();
    }

    public DeviceClassifier(ClassifierDataFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.factory = factory;
        this.videoCodecs = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.analytics.DeviceClassifier$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DeviceClassifier.videoCodecs_delegate$lambda$1(this.f$0);
            }
        });
    }

    private final List<String> getVideoCodecs() {
        return (List) this.videoCodecs.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List videoCodecs_delegate$lambda$1(DeviceClassifier deviceClassifier) {
        List<String> listCodecs = deviceClassifier.codecs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listCodecs) {
            if (StringsKt.contains$default((CharSequence) obj, (CharSequence) MimeTypes.BASE_TYPE_VIDEO, false, 2, (Object) null)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final Tier deviceTier() {
        Integer success = totalScore().getSuccess();
        if (success == null) {
            return Tier.UNKNOWN;
        }
        if (new IntRange(0, 24).contains(success.intValue())) {
            return Tier.ULTRA_LOW;
        }
        if (new IntRange(25, 44).contains(success.intValue())) {
            return Tier.LOW;
        }
        if (new IntRange(45, 69).contains(success.intValue())) {
            return Tier.MID;
        }
        return new IntRange(70, 85).contains(success.intValue()) ? Tier.HIGH : Tier.ULTRA_HIGH;
    }

    private final int cpuScore() {
        if (getCpuInfo().getCores().isEmpty()) {
            return -1;
        }
        List<CPUInfo.Data.Core> cores = getCpuInfo().getCores();
        if ((cores instanceof Collection) && cores.isEmpty()) {
            return -1;
        }
        Iterator<T> it = cores.iterator();
        while (it.hasNext()) {
            if (((CPUInfo.Data.Core) it.next()).getCurrentFreq() >= 0) {
                List<CPUInfo.Data.Core> cores2 = getCpuInfo().getCores();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(cores2, 10));
                Iterator<T> it2 = cores2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(Long.valueOf(((CPUInfo.Data.Core) it2.next()).getMaxFreq()));
                }
                ArrayList arrayList2 = arrayList;
                double dAverageOfLong = CollectionsKt.averageOfLong(arrayList2) / 1000000.0d;
                if (dAverageOfLong > 1000.0d) {
                    dAverageOfLong /= (double) 1000;
                }
                int size = arrayList2.size();
                return (int) (RangesKt.coerceAtMost(((double) size) / 8.0d, 1.0d) * RangesKt.coerceAtMost(dAverageOfLong / 4.0d, 1.0d) * ((double) 35));
            }
        }
        return -1;
    }

    private final int primeFreqBonus() {
        int i;
        List<CPUInfo.Data.Core> cores = getCpuInfo().getCores();
        if ((cores instanceof Collection) && cores.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = cores.iterator();
            i = 0;
            while (it.hasNext()) {
                if (((CPUInfo.Data.Core) it.next()).getMaxFreq() >= 3500000 && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i >= getCpuInfo().getCores().size() / 3 ? 5 : 0;
    }

    private final int memScore() {
        return (int) (RangesKt.coerceAtMost((advertisedMemory() / 1.073741824E9d) / 10.0d, 1.0d) * ((double) 25));
    }

    private final int videoScore() {
        int i;
        List<String> videoCodecs = getVideoCodecs();
        if (!(videoCodecs instanceof Collection) || !videoCodecs.isEmpty()) {
            Iterator<T> it = videoCodecs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i = 0;
                    break;
                }
                if (StringsKt.contains((CharSequence) it.next(), (CharSequence) "av01", true)) {
                    i = 10;
                    break;
                }
            }
        } else {
            i = 0;
            break;
        }
        List<String> videoCodecs2 = getVideoCodecs();
        if (!(videoCodecs2 instanceof Collection) || !videoCodecs2.isEmpty()) {
            Iterator<T> it2 = videoCodecs2.iterator();
            while (it2.hasNext()) {
                if (StringsKt.contains((CharSequence) it2.next(), (CharSequence) "hevc", true)) {
                    i += 14;
                    break;
                }
            }
        }
        List<String> videoCodecs3 = getVideoCodecs();
        if (!(videoCodecs3 instanceof Collection) || !videoCodecs3.isEmpty()) {
            Iterator<T> it3 = videoCodecs3.iterator();
            while (it3.hasNext()) {
                if (StringsKt.contains((CharSequence) it3.next(), (CharSequence) "vp9", true)) {
                    i += 6;
                    break;
                }
            }
        }
        List<String> videoCodecs4 = getVideoCodecs();
        if (!(videoCodecs4 instanceof Collection) || !videoCodecs4.isEmpty()) {
            Iterator<T> it4 = videoCodecs4.iterator();
            while (it4.hasNext()) {
                if (StringsKt.contains((CharSequence) it4.next(), (CharSequence) "vp8", true)) {
                    i += 4;
                    break;
                }
            }
        }
        return RangesKt.coerceAtMost(i, 20);
    }

    private final int displayScore() {
        double screenWidth = getScreenWidth();
        double screenHeight = getScreenHeight();
        return (int) (RangesKt.coerceAtMost((Math.sqrt((screenWidth * screenWidth) + (screenHeight * screenHeight)) / getScreenSize()) / 500.0d, 1.0d) * ((double) 20));
    }

    private final Either<Integer, Throwable> totalScore() {
        try {
            int iCpuScore = cpuScore();
            int iPrimeFreqBonus = primeFreqBonus() + memScore() + videoScore() + displayScore();
            return new Either.Success(Integer.valueOf(iCpuScore == -1 ? (iPrimeFreqBonus * 100) / 65 : iPrimeFreqBonus + iCpuScore));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            return new Either.Failure(th);
        }
    }
}
