package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ModifierRegistry.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lexpo/modules/ui/ToggleableParams;", "Lexpo/modules/kotlin/records/Record;", RNConstants.ARG_VALUE, "", ViewProps.ROLE, "Lexpo/modules/ui/SemanticRoleType;", "<init>", "(ZLexpo/modules/ui/SemanticRoleType;)V", "getValue$annotations", "()V", "getValue", "()Z", "getRole$annotations", "getRole", "()Lexpo/modules/ui/SemanticRoleType;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ToggleableParams implements Record {
    public static final int $stable = 0;
    private final SemanticRoleType role;
    private final boolean value;

    /* JADX WARN: Multi-variable type inference failed */
    public ToggleableParams() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ToggleableParams copy$default(ToggleableParams toggleableParams, boolean z, SemanticRoleType semanticRoleType, int i, Object obj) {
        if ((i & 1) != 0) {
            z = toggleableParams.value;
        }
        if ((i & 2) != 0) {
            semanticRoleType = toggleableParams.role;
        }
        return toggleableParams.copy(z, semanticRoleType);
    }

    @Field
    public static /* synthetic */ void getRole$annotations() {
    }

    @Field
    public static /* synthetic */ void getValue$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SemanticRoleType getRole() {
        return this.role;
    }

    public final ToggleableParams copy(boolean value, SemanticRoleType role) {
        return new ToggleableParams(value, role);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ToggleableParams)) {
            return false;
        }
        ToggleableParams toggleableParams = (ToggleableParams) other;
        return this.value == toggleableParams.value && this.role == toggleableParams.role;
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.value) * 31;
        SemanticRoleType semanticRoleType = this.role;
        return iHashCode + (semanticRoleType == null ? 0 : semanticRoleType.hashCode());
    }

    public String toString() {
        return "ToggleableParams(value=" + this.value + ", role=" + this.role + ")";
    }

    public ToggleableParams(boolean z, SemanticRoleType semanticRoleType) {
        this.value = z;
        this.role = semanticRoleType;
    }

    public /* synthetic */ ToggleableParams(boolean z, SemanticRoleType semanticRoleType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : semanticRoleType);
    }

    public final boolean getValue() {
        return this.value;
    }

    public final SemanticRoleType getRole() {
        return this.role;
    }
}
