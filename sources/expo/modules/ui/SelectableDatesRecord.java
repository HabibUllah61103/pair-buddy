package expo.modules.ui;

import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;

/* JADX INFO: compiled from: DatePickerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Lexpo/modules/ui/SelectableDatesRecord;", "Lexpo/modules/kotlin/records/Record;", "<init>", "()V", "start", "", "getStart$annotations", "getStart", "()Ljava/lang/Long;", "Ljava/lang/Long;", "end", "getEnd$annotations", "getEnd", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SelectableDatesRecord implements Record {
    public static final int $stable = 0;
    private final Long end;
    private final Long start;

    @Field
    public static /* synthetic */ void getEnd$annotations() {
    }

    @Field
    public static /* synthetic */ void getStart$annotations() {
    }

    public final Long getStart() {
        return this.start;
    }

    public final Long getEnd() {
        return this.end;
    }
}
