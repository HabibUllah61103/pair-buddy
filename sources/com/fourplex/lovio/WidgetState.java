package com.fourplex.lovio;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\rJ\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\r0\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u001b"}, d2 = {"Lcom/fourplex/lovio/WidgetState;", "", "<init>", "()V", "preferences", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "context", "Landroid/content/Context;", "getDrawingFile", "Ljava/io/File;", "getMemoryFile", "index", "", "getMemoriesCount", "getCurrentMemoryIndex", "setMemoriesCount", "", NewHtcHomeBadger.COUNT, "getMemoriesMetadata", "", "", "advanceMemoryIndex", "rotateMemoryIndexIfNeeded", "clearMemoryImages", "clearDrawingWidget", "clearRelationshipWidgetData", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetState {
    public static final WidgetState INSTANCE = new WidgetState();

    private WidgetState() {
    }

    public final SharedPreferences preferences(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getSharedPreferences("widget_prefs", 0);
    }

    public final File getDrawingFile(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = preferences(context).getString("last_drawing_image", null);
        if (string == null) {
            return null;
        }
        File file = new File(context.getFilesDir(), string);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public final File getMemoryFile(Context context, int index) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(context.getFilesDir(), "memory_" + index + ".png");
    }

    public final int getMemoriesCount(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return RangesKt.coerceAtLeast(preferences(context).getInt("memories_count", 0), 0);
    }

    public final int getCurrentMemoryIndex(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferencesPreferences = preferences(context);
        int memoriesCount = getMemoriesCount(context);
        int i = sharedPreferencesPreferences.getInt("current_memory_index", 0);
        if (memoriesCount <= 0) {
            if (i != 0) {
                sharedPreferencesPreferences.edit().putInt("current_memory_index", 0).commit();
            }
            return 0;
        }
        int iCoerceIn = RangesKt.coerceIn(i, 0, memoriesCount - 1);
        if (iCoerceIn != i) {
            sharedPreferencesPreferences.edit().putInt("current_memory_index", iCoerceIn).commit();
        }
        return iCoerceIn;
    }

    public final boolean setMemoriesCount(Context context, int count) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferencesPreferences = preferences(context);
        int iCoerceAtLeast = RangesKt.coerceAtLeast(count, 0);
        return sharedPreferencesPreferences.edit().putInt("memories_count", iCoerceAtLeast).putInt("current_memory_index", iCoerceAtLeast != 0 ? RangesKt.coerceIn(sharedPreferencesPreferences.getInt("current_memory_index", 0), 0, iCoerceAtLeast - 1) : 0).commit();
    }

    public final Map<String, Integer> getMemoriesMetadata(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int memoriesCount = getMemoriesCount(context);
        int currentMemoryIndex = getCurrentMemoryIndex(context);
        return MapsKt.mapOf(TuplesKt.to("memories_count", Integer.valueOf(memoriesCount)), TuplesKt.to("current_memory_index", Integer.valueOf(currentMemoryIndex)), TuplesKt.to(NewHtcHomeBadger.COUNT, Integer.valueOf(memoriesCount)), TuplesKt.to("currentIndex", Integer.valueOf(currentMemoryIndex)));
    }

    public final boolean advanceMemoryIndex(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferencesPreferences = preferences(context);
        int memoriesCount = getMemoriesCount(context);
        return sharedPreferencesPreferences.edit().putInt("current_memory_index", memoriesCount <= 1 ? 0 : (getCurrentMemoryIndex(context) + 1) % memoriesCount).putLong("last_memory_rotation_at", System.currentTimeMillis()).commit();
    }

    public final boolean rotateMemoryIndexIfNeeded(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferencesPreferences = preferences(context);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - sharedPreferencesPreferences.getLong("last_memory_rotation_at", 0L) < 60000) {
            return false;
        }
        int memoriesCount = getMemoriesCount(context);
        return sharedPreferencesPreferences.edit().putInt("current_memory_index", memoriesCount > 1 ? (getCurrentMemoryIndex(context) + 1) % memoriesCount : 0).putLong("last_memory_rotation_at", jCurrentTimeMillis).commit();
    }

    public final int clearMemoryImages(Context context) {
        int i;
        Intrinsics.checkNotNullParameter(context, "context");
        File[] fileArrListFiles = context.getFilesDir().listFiles();
        if (fileArrListFiles != null) {
            i = 0;
            for (File file : fileArrListFiles) {
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.startsWith$default(name, "memory_", false, 2, (Object) null)) {
                    String name2 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (StringsKt.endsWith$default(name2, ".png", false, 2, (Object) null) && file.delete()) {
                        i++;
                    }
                }
            }
        } else {
            i = 0;
        }
        preferences(context).edit().putInt("memories_count", 0).putInt("current_memory_index", 0).putLong("last_memory_rotation_at", 0L).commit();
        return i;
    }

    public final boolean clearDrawingWidget(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        File file = new File(context.getFilesDir(), "latest_drawing.png");
        if (file.exists()) {
            file.delete();
        }
        return preferences(context).edit().remove("last_drawing_image").commit();
    }

    public final boolean clearRelationshipWidgetData(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator it = CollectionsKt.listOf((Object[]) new String[]{"avatar_user.png", "avatar_partner.png"}).iterator();
        while (it.hasNext()) {
            File file = new File(context.getFilesDir(), (String) it.next());
            if (file.exists()) {
                file.delete();
            }
        }
        return preferences(context).edit().remove("widget_data").commit();
    }
}
