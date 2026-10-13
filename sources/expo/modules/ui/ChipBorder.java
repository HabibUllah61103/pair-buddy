package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;

/* JADX INFO: compiled from: ChipView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lexpo/modules/ui/ChipBorder;", "Lexpo/modules/kotlin/records/Record;", "<init>", "()V", "width", "", "getWidth$annotations", "getWidth", "()F", "color", "Landroid/graphics/Color;", "getColor$annotations", "getColor", "()Landroid/graphics/Color;", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChipBorder implements Record {
    public static final int $stable = 8;
    private final Color color;
    private final float width = 1.0f;

    @Field
    public static /* synthetic */ void getColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getWidth$annotations() {
    }

    public final float getWidth() {
        return this.width;
    }

    public final Color getColor() {
        return this.color;
    }
}
