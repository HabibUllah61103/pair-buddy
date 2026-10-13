package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;

/* JADX INFO: compiled from: ProgressView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\rR \u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0013\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lexpo/modules/ui/DrawStopIndicatorConfig;", "Lexpo/modules/kotlin/records/Record;", "<init>", "()V", "color", "Landroid/graphics/Color;", "getColor$annotations", "getColor", "()Landroid/graphics/Color;", "strokeCap", "", "getStrokeCap$annotations", "getStrokeCap", "()Ljava/lang/String;", "stopSize", "", "getStopSize$annotations", "getStopSize", "()Ljava/lang/Float;", "Ljava/lang/Float;", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DrawStopIndicatorConfig implements Record {
    public static final int $stable = 8;
    private final Color color;
    private final Float stopSize;
    private final String strokeCap;

    @Field
    public static /* synthetic */ void getColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getStopSize$annotations() {
    }

    @Field
    public static /* synthetic */ void getStrokeCap$annotations() {
    }

    public final Color getColor() {
        return this.color;
    }

    public final String getStrokeCap() {
        return this.strokeCap;
    }

    public final Float getStopSize() {
        return this.stopSize;
    }
}
