package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModifierRegistry.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lexpo/modules/ui/SelectableParams;", "Lexpo/modules/kotlin/records/Record;", "selected", "", ViewProps.ROLE, "", "<init>", "(ZLjava/lang/String;)V", "getSelected$annotations", "()V", "getSelected", "()Z", "getRole$annotations", "getRole", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SelectableParams implements Record {
    public static final int $stable = 0;
    private final String role;
    private final boolean selected;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectableParams() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ SelectableParams copy$default(SelectableParams selectableParams, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = selectableParams.selected;
        }
        if ((i & 2) != 0) {
            str = selectableParams.role;
        }
        return selectableParams.copy(z, str);
    }

    @Field
    public static /* synthetic */ void getRole$annotations() {
    }

    @Field
    public static /* synthetic */ void getSelected$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getRole() {
        return this.role;
    }

    public final SelectableParams copy(boolean selected, String role) {
        return new SelectableParams(selected, role);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SelectableParams)) {
            return false;
        }
        SelectableParams selectableParams = (SelectableParams) other;
        return this.selected == selectableParams.selected && Intrinsics.areEqual(this.role, selectableParams.role);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.selected) * 31;
        String str = this.role;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "SelectableParams(selected=" + this.selected + ", role=" + this.role + ")";
    }

    public SelectableParams(boolean z, String str) {
        this.selected = z;
        this.role = str;
    }

    public /* synthetic */ SelectableParams(boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : str);
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final String getRole() {
        return this.role;
    }
}
