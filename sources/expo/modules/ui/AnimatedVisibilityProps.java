package expo.modules.ui;

import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimatedVisibilityView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012$\b\u0002\u0010\t\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\u0005j\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J%\u0010\u001a\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\u0005j\u0002`\u000eHÆ\u0003J]\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052$\b\u0002\u0010\t\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\u0005j\u0002`\u000eHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R-\u0010\t\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\u0005j\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014¨\u0006!"}, d2 = {"Lexpo/modules/ui/AnimatedVisibilityProps;", "Lexpo/modules/kotlin/views/ComposeProps;", ViewProps.VISIBLE, "", "enterTransition", "", "Lexpo/modules/ui/EnterTransitionRecord;", "exitTransition", "Lexpo/modules/ui/ExitTransitionRecord;", "modifiers", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V", "getVisible", "()Z", "getEnterTransition", "()Ljava/util/List;", "getExitTransition", "getModifiers", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AnimatedVisibilityProps implements ComposeProps {
    public static final int $stable = 8;
    private final List<EnterTransitionRecord> enterTransition;
    private final List<ExitTransitionRecord> exitTransition;
    private final List<Map<String, Object>> modifiers;
    private final boolean visible;

    public AnimatedVisibilityProps() {
        this(false, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AnimatedVisibilityProps copy$default(AnimatedVisibilityProps animatedVisibilityProps, boolean z, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = animatedVisibilityProps.visible;
        }
        if ((i & 2) != 0) {
            list = animatedVisibilityProps.enterTransition;
        }
        if ((i & 4) != 0) {
            list2 = animatedVisibilityProps.exitTransition;
        }
        if ((i & 8) != 0) {
            list3 = animatedVisibilityProps.modifiers;
        }
        return animatedVisibilityProps.copy(z, list, list2, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getVisible() {
        return this.visible;
    }

    public final List<EnterTransitionRecord> component2() {
        return this.enterTransition;
    }

    public final List<ExitTransitionRecord> component3() {
        return this.exitTransition;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final AnimatedVisibilityProps copy(boolean visible, List<EnterTransitionRecord> enterTransition, List<ExitTransitionRecord> exitTransition, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new AnimatedVisibilityProps(visible, enterTransition, exitTransition, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnimatedVisibilityProps)) {
            return false;
        }
        AnimatedVisibilityProps animatedVisibilityProps = (AnimatedVisibilityProps) other;
        return this.visible == animatedVisibilityProps.visible && Intrinsics.areEqual(this.enterTransition, animatedVisibilityProps.enterTransition) && Intrinsics.areEqual(this.exitTransition, animatedVisibilityProps.exitTransition) && Intrinsics.areEqual(this.modifiers, animatedVisibilityProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.visible) * 31;
        List<EnterTransitionRecord> list = this.enterTransition;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<ExitTransitionRecord> list2 = this.exitTransition;
        return ((iHashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "AnimatedVisibilityProps(visible=" + this.visible + ", enterTransition=" + this.enterTransition + ", exitTransition=" + this.exitTransition + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedVisibilityProps(boolean z, List<EnterTransitionRecord> list, List<ExitTransitionRecord> list2, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.visible = z;
        this.enterTransition = list;
        this.exitTransition = list2;
        this.modifiers = modifiers;
    }

    public final boolean getVisible() {
        return this.visible;
    }

    public final List<EnterTransitionRecord> getEnterTransition() {
        return this.enterTransition;
    }

    public final List<ExitTransitionRecord> getExitTransition() {
        return this.exitTransition;
    }

    public /* synthetic */ AnimatedVisibilityProps(boolean z, List list, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : list2, (i & 8) != 0 ? CollectionsKt.emptyList() : list3);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
