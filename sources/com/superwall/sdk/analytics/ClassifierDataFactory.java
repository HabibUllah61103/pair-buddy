package com.superwall.sdk.analytics;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultClassifierDataFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u000b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004R\u000b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/superwall/sdk/analytics/ClassifierDataFactory;", "", "context", "Landroid/content/Context;", "activityManager", "Landroid/app/ActivityManager;", "windowManager", "Landroid/view/WindowManager;", "codecs", "", "", "advertisedMemory", "", "getScreenWidth", "", "getScreenHeight", "getScreenSize", "", "isTabletMinWidth", "", "orientation", "Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;", "getOrientation", "()Lcom/superwall/sdk/analytics/DeviceClassifier$Orientation;", "cpuInfo", "Lcom/superwall/sdk/analytics/CPUInfo$Data;", "getCpuInfo", "()Lcom/superwall/sdk/analytics/CPUInfo$Data;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ClassifierDataFactory {
    long advertisedMemory();

    List<String> codecs();

    Context context();

    CPUInfo.Data getCpuInfo();

    DeviceClassifier.Orientation getOrientation();

    int getScreenHeight();

    double getScreenSize();

    int getScreenWidth();

    boolean isTabletMinWidth();

    /* JADX INFO: compiled from: DefaultClassifierDataFactory.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        private static ActivityManager getActivityManager(ClassifierDataFactory classifierDataFactory) {
            Object systemService = ContextCompat.getSystemService(classifierDataFactory.context(), ActivityManager.class);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            return (ActivityManager) systemService;
        }

        private static WindowManager getWindowManager(ClassifierDataFactory classifierDataFactory) {
            Object systemService = ContextCompat.getSystemService(classifierDataFactory.context(), WindowManager.class);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            return (WindowManager) systemService;
        }

        public static List<String> codecs(ClassifierDataFactory classifierDataFactory) {
            MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
            Intrinsics.checkNotNullExpressionValue(codecInfos, "getCodecInfos(...)");
            ArrayList arrayList = new ArrayList();
            for (MediaCodecInfo mediaCodecInfo : codecInfos) {
                String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                Intrinsics.checkNotNullExpressionValue(supportedTypes, "getSupportedTypes(...)");
                CollectionsKt.addAll(arrayList, ArraysKt.toList(supportedTypes));
            }
            return arrayList;
        }

        public static long advertisedMemory(ClassifierDataFactory classifierDataFactory) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            getActivityManager(classifierDataFactory).getMemoryInfo(memoryInfo);
            if (Build.VERSION.SDK_INT < 34) {
                return memoryInfo.totalMem;
            }
            if ((memoryInfo.advertisedMem != 0 ? ((memoryInfo.advertisedMem - memoryInfo.totalMem) * ((long) 100)) / memoryInfo.advertisedMem : 31L) > 30) {
                return memoryInfo.totalMem;
            }
            return memoryInfo.advertisedMem;
        }

        public static int getScreenWidth(ClassifierDataFactory classifierDataFactory) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = getWindowManager(classifierDataFactory).getCurrentWindowMetrics();
                Intrinsics.checkNotNullExpressionValue(currentWindowMetrics, "getCurrentWindowMetrics(...)");
                Intrinsics.checkNotNullExpressionValue(currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.systemBars()), "getInsetsIgnoringVisibility(...)");
                return currentWindowMetrics.getBounds().width();
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ContextCompat.getDisplayOrDefault(classifierDataFactory.context()).getMetrics(displayMetrics);
            return displayMetrics.widthPixels;
        }

        public static int getScreenHeight(ClassifierDataFactory classifierDataFactory) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = getWindowManager(classifierDataFactory).getCurrentWindowMetrics();
                Intrinsics.checkNotNullExpressionValue(currentWindowMetrics, "getCurrentWindowMetrics(...)");
                Intrinsics.checkNotNullExpressionValue(currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.systemBars()), "getInsetsIgnoringVisibility(...)");
                return currentWindowMetrics.getBounds().height();
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ContextCompat.getDisplayOrDefault(classifierDataFactory.context()).getMetrics(displayMetrics);
            return displayMetrics.heightPixels;
        }

        public static double getScreenSize(ClassifierDataFactory classifierDataFactory) {
            Point point = new Point();
            ContextCompat.getDisplayOrDefault(classifierDataFactory.context()).getRealSize(point);
            DisplayMetrics displayMetrics = classifierDataFactory.context().getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
            return Math.round(Math.sqrt(Math.pow(((double) point.x) / ((double) displayMetrics.xdpi), 2.0d) + Math.pow(((double) point.y) / ((double) displayMetrics.ydpi), 2.0d)) * 10.0d) / 10.0d;
        }

        public static boolean isTabletMinWidth(ClassifierDataFactory classifierDataFactory) {
            return classifierDataFactory.context().getResources().getConfiguration().smallestScreenWidthDp >= 600;
        }

        public static DeviceClassifier.Orientation getOrientation(ClassifierDataFactory classifierDataFactory) {
            int i = classifierDataFactory.context().getResources().getConfiguration().orientation;
            if (i == 1) {
                return DeviceClassifier.Orientation.PORTRAIT;
            }
            if (i == 2) {
                return DeviceClassifier.Orientation.LANDSCAPE;
            }
            return DeviceClassifier.Orientation.UNDEFINED;
        }

        public static CPUInfo.Data getCpuInfo(ClassifierDataFactory classifierDataFactory) {
            return new CPUInfo().getCpuData();
        }
    }
}
