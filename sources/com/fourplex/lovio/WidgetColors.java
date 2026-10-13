package com.fourplex.lovio;

import android.graphics.Color;
import kotlin.Metadata;

/* JADX INFO: compiled from: WidgetSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/fourplex/lovio/WidgetColors;", "", "<init>", "()V", "white", "", "getWhite", "()I", "coral", "getCoral", "orange", "getOrange", "cyan", "getCyan", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WidgetColors {
    public static final WidgetColors INSTANCE = new WidgetColors();
    private static final int white = Color.parseColor("#FFFFFF");
    private static final int coral = Color.parseColor("#FF3B5C");
    private static final int orange = Color.parseColor("#FF9F43");
    private static final int cyan = Color.parseColor("#00D2D3");

    private WidgetColors() {
    }

    public final int getWhite() {
        return white;
    }

    public final int getCoral() {
        return coral;
    }

    public final int getOrange() {
        return orange;
    }

    public final int getCyan() {
        return cyan;
    }
}
