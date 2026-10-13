package com.superwall.sdk.misc;

import android.graphics.Color;
import kotlin.Metadata;

/* JADX INFO: compiled from: Color+Helpers.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0002\b\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0002¨\u0006\u0006"}, d2 = {"isDarkColor", "", "", "isLightColor", "readableOverlayColor", "inverseReadableOverlayColor", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class Color_HelpersKt {
    public static final boolean isDarkColor(int i) {
        return ((((double) 0.2126f) * (((double) Color.red(i)) / 255.0d)) + (((double) 0.7152f) * (((double) Color.green(i)) / 255.0d))) + (((double) 0.0722f) * (((double) Color.blue(i)) / 255.0d)) < 0.5d;
    }

    public static final boolean isLightColor(int i) {
        return !isDarkColor(i);
    }

    public static final int readableOverlayColor(int i) {
        return isDarkColor(i) ? -1 : -16777216;
    }

    public static final int inverseReadableOverlayColor(int i) {
        return isDarkColor(i) ? -16777216 : -1;
    }
}
