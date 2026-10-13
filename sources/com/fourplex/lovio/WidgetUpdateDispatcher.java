package com.fourplex.lovio;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ&\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00052\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ(\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u000e\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00062\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u0011H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/fourplex/lovio/WidgetUpdateDispatcher;", "", "<init>", "()V", "memoryWidgetClasses", "", "Ljava/lang/Class;", "Landroid/appwidget/AppWidgetProvider;", "allWidgetClasses", "reloadAllWidgets", "", "context", "Landroid/content/Context;", "refreshOnly", "", "reloadKinds", "kinds", "", "refreshMemoryWidgets", "sendAppWidgetUpdate", "receiverClass", "classesForKind", "kind", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetUpdateDispatcher {
    public static final WidgetUpdateDispatcher INSTANCE = new WidgetUpdateDispatcher();
    private static final List<Class<? extends AppWidgetProvider>> memoryWidgetClasses = CollectionsKt.listOf((Object[]) new Class[]{MemoriesWidget.class, CombinedWidget.class});
    private static final List<Class<? extends AppWidgetProvider>> allWidgetClasses = CollectionsKt.listOf((Object[]) new Class[]{DrawingWidget.class, MemoriesWidget.class, CombinedWidget.class, DaysTogetherCoralWidget.class, DaysTogetherBlueWidget.class, DaysTogetherWhiteWidget.class, DaysTogetherLockSmallWidget.class, DaysTogetherCountdownWidget.class, DistanceWidgetMedium.class});

    private WidgetUpdateDispatcher() {
    }

    public static /* synthetic */ void reloadAllWidgets$default(WidgetUpdateDispatcher widgetUpdateDispatcher, Context context, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        widgetUpdateDispatcher.reloadAllWidgets(context, z);
    }

    public final void reloadAllWidgets(Context context, boolean refreshOnly) {
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = allWidgetClasses.iterator();
        while (it.hasNext()) {
            INSTANCE.sendAppWidgetUpdate(context, (Class) it.next(), refreshOnly);
        }
    }

    public static /* synthetic */ void reloadKinds$default(WidgetUpdateDispatcher widgetUpdateDispatcher, Context context, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        widgetUpdateDispatcher.reloadKinds(context, list, z);
    }

    public final void reloadKinds(Context context, List<String> kinds, boolean refreshOnly) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(kinds, "kinds");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = kinds.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, classesForKind((String) it.next()));
        }
        Iterator it2 = CollectionsKt.distinct(arrayList).iterator();
        while (it2.hasNext()) {
            INSTANCE.sendAppWidgetUpdate(context, (Class) it2.next(), refreshOnly);
        }
    }

    public final void refreshMemoryWidgets(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = memoryWidgetClasses.iterator();
        while (it.hasNext()) {
            INSTANCE.sendAppWidgetUpdate(context, (Class) it.next(), true);
        }
    }

    public static /* synthetic */ void sendAppWidgetUpdate$default(WidgetUpdateDispatcher widgetUpdateDispatcher, Context context, Class cls, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        widgetUpdateDispatcher.sendAppWidgetUpdate(context, cls, z);
    }

    public final void sendAppWidgetUpdate(Context context, Class<? extends AppWidgetProvider> receiverClass, boolean refreshOnly) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(receiverClass, "receiverClass");
        int[] appWidgetIds = AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, receiverClass));
        Intrinsics.checkNotNull(appWidgetIds);
        if (appWidgetIds.length == 0) {
            return;
        }
        Intent intent = new Intent(context, receiverClass);
        intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
        intent.putExtra("appWidgetIds", appWidgetIds);
        intent.putExtra(WidgetSupportKt.EXTRA_REFRESH_ONLY, refreshOnly);
        context.sendBroadcast(intent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        if (r3.equals("AnniversaryWidgetWhite") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        if (r3.equals("AnniversaryWidgetCoral") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        if (r3.equals("DaysTogetherBlueWidget") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004f, code lost:
    
        if (r3.equals("DaysTogetherWhiteWidget") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0059, code lost:
    
        return kotlin.collections.CollectionsKt.listOf(com.fourplex.lovio.DaysTogetherWhiteWidget.class);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
    
        if (r3.equals("DaysTogetherCoralWidget") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006a, code lost:
    
        return kotlin.collections.CollectionsKt.listOf(com.fourplex.lovio.DaysTogetherCoralWidget.class);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0082, code lost:
    
        if (r3.equals("AnniversaryWidgetBlue") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
    
        return kotlin.collections.CollectionsKt.listOf(com.fourplex.lovio.DaysTogetherBlueWidget.class);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00bd, code lost:
    
        if (r3.equals("DistanceWidget") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d6, code lost:
    
        if (r3.equals("DistanceWidgetMedium") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00df, code lost:
    
        return kotlin.collections.CollectionsKt.listOf(com.fourplex.lovio.DistanceWidgetMedium.class);
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.Class<? extends android.appwidget.AppWidgetProvider>> classesForKind(java.lang.String r3) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fourplex.lovio.WidgetUpdateDispatcher.classesForKind(java.lang.String):java.util.List");
    }
}
