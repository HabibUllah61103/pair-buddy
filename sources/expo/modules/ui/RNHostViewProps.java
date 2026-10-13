package expo.modules.ui;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import expo.modules.kotlin.views.ComposeProps;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RNHostView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lexpo/modules/ui/RNHostViewProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "matchContents", "Landroidx/compose/runtime/MutableState;", "", "<init>", "(Landroidx/compose/runtime/MutableState;)V", "getMatchContents", "()Landroidx/compose/runtime/MutableState;", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class RNHostViewProps implements ComposeProps {
    public static final int $stable = 0;
    private final MutableState<Boolean> matchContents;

    /* JADX WARN: Multi-variable type inference failed */
    public RNHostViewProps() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RNHostViewProps copy$default(RNHostViewProps rNHostViewProps, MutableState mutableState, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableState = rNHostViewProps.matchContents;
        }
        return rNHostViewProps.copy(mutableState);
    }

    public final MutableState<Boolean> component1() {
        return this.matchContents;
    }

    public final RNHostViewProps copy(MutableState<Boolean> matchContents) {
        Intrinsics.checkNotNullParameter(matchContents, "matchContents");
        return new RNHostViewProps(matchContents);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RNHostViewProps) && Intrinsics.areEqual(this.matchContents, ((RNHostViewProps) other).matchContents);
    }

    public int hashCode() {
        return this.matchContents.hashCode();
    }

    public String toString() {
        return "RNHostViewProps(matchContents=" + this.matchContents + ")";
    }

    public RNHostViewProps(MutableState<Boolean> matchContents) {
        Intrinsics.checkNotNullParameter(matchContents, "matchContents");
        this.matchContents = matchContents;
    }

    public /* synthetic */ RNHostViewProps(MutableState mutableState, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null) : mutableState);
    }

    public final MutableState<Boolean> getMatchContents() {
        return this.matchContents;
    }
}
