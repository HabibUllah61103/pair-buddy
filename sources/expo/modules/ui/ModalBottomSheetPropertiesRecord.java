package expo.modules.ui;

import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: BottomSheetView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lexpo/modules/ui/ModalBottomSheetPropertiesRecord;", "Lexpo/modules/kotlin/records/Record;", "shouldDismissOnBackPress", "", "shouldDismissOnClickOutside", "<init>", "(ZZ)V", "getShouldDismissOnBackPress$annotations", "()V", "getShouldDismissOnBackPress", "()Z", "getShouldDismissOnClickOutside$annotations", "getShouldDismissOnClickOutside", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ModalBottomSheetPropertiesRecord implements Record {
    public static final int $stable = 0;
    private final boolean shouldDismissOnBackPress;
    private final boolean shouldDismissOnClickOutside;

    /* JADX WARN: Illegal instructions before constructor call */
    public ModalBottomSheetPropertiesRecord() {
        boolean z = false;
        this(z, z, 3, null);
    }

    public static /* synthetic */ ModalBottomSheetPropertiesRecord copy$default(ModalBottomSheetPropertiesRecord modalBottomSheetPropertiesRecord, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = modalBottomSheetPropertiesRecord.shouldDismissOnBackPress;
        }
        if ((i & 2) != 0) {
            z2 = modalBottomSheetPropertiesRecord.shouldDismissOnClickOutside;
        }
        return modalBottomSheetPropertiesRecord.copy(z, z2);
    }

    @Field
    public static /* synthetic */ void getShouldDismissOnBackPress$annotations() {
    }

    @Field
    public static /* synthetic */ void getShouldDismissOnClickOutside$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getShouldDismissOnBackPress() {
        return this.shouldDismissOnBackPress;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getShouldDismissOnClickOutside() {
        return this.shouldDismissOnClickOutside;
    }

    public final ModalBottomSheetPropertiesRecord copy(boolean shouldDismissOnBackPress, boolean shouldDismissOnClickOutside) {
        return new ModalBottomSheetPropertiesRecord(shouldDismissOnBackPress, shouldDismissOnClickOutside);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ModalBottomSheetPropertiesRecord)) {
            return false;
        }
        ModalBottomSheetPropertiesRecord modalBottomSheetPropertiesRecord = (ModalBottomSheetPropertiesRecord) other;
        return this.shouldDismissOnBackPress == modalBottomSheetPropertiesRecord.shouldDismissOnBackPress && this.shouldDismissOnClickOutside == modalBottomSheetPropertiesRecord.shouldDismissOnClickOutside;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.shouldDismissOnBackPress) * 31) + Boolean.hashCode(this.shouldDismissOnClickOutside);
    }

    public String toString() {
        return "ModalBottomSheetPropertiesRecord(shouldDismissOnBackPress=" + this.shouldDismissOnBackPress + ", shouldDismissOnClickOutside=" + this.shouldDismissOnClickOutside + ")";
    }

    public ModalBottomSheetPropertiesRecord(boolean z, boolean z2) {
        this.shouldDismissOnBackPress = z;
        this.shouldDismissOnClickOutside = z2;
    }

    public /* synthetic */ ModalBottomSheetPropertiesRecord(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2);
    }

    public final boolean getShouldDismissOnBackPress() {
        return this.shouldDismissOnBackPress;
    }

    public final boolean getShouldDismissOnClickOutside() {
        return this.shouldDismissOnClickOutside;
    }
}
