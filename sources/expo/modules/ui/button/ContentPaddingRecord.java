package expo.modules.ui.button;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;

/* JADX INFO: compiled from: Button.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\bR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u000e\u0010\u0003\u001a\u0004\b\u000f\u0010\bR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u0011\u0010\u0003\u001a\u0004\b\u0012\u0010\b¨\u0006\u0013"}, d2 = {"Lexpo/modules/ui/button/ContentPaddingRecord;", "Lexpo/modules/kotlin/records/Record;", "<init>", "()V", "start", "", "getStart$annotations", "getStart", "()Ljava/lang/Double;", "Ljava/lang/Double;", ViewProps.TOP, "getTop$annotations", "getTop", "end", "getEnd$annotations", "getEnd", ViewProps.BOTTOM, "getBottom$annotations", "getBottom", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContentPaddingRecord implements Record {
    public static final int $stable = 0;
    private final Double bottom;
    private final Double end;
    private final Double start;
    private final Double top;

    @Field
    public static /* synthetic */ void getBottom$annotations() {
    }

    @Field
    public static /* synthetic */ void getEnd$annotations() {
    }

    @Field
    public static /* synthetic */ void getStart$annotations() {
    }

    @Field
    public static /* synthetic */ void getTop$annotations() {
    }

    public final Double getStart() {
        return this.start;
    }

    public final Double getTop() {
        return this.top;
    }

    public final Double getEnd() {
        return this.end;
    }

    public final Double getBottom() {
        return this.bottom;
    }
}
