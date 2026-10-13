package jp.wasabeef.glide.transformations.internal;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes6.dex */
public final class Utils {
    private Utils() {
    }

    public static int toDp(int px) {
        return px * ((int) Resources.getSystem().getDisplayMetrics().density);
    }
}
