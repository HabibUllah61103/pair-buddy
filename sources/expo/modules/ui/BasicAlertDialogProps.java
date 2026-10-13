package expo.modules.ui;

import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BasicAlertDialogView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012$\b\u0002\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J%\u0010\u0012\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\nHÆ\u0003J9\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032$\b\u0002\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\nHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR-\u0010\u0004\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0002`\t0\u0005j\u0002`\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lexpo/modules/ui/BasicAlertDialogProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "properties", "Lexpo/modules/ui/ExpoDialogProperties;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/ExpoDialogProperties;Ljava/util/List;)V", "getProperties", "()Lexpo/modules/ui/ExpoDialogProperties;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BasicAlertDialogProps implements ComposeProps {
    public static final int $stable = 8;
    private final List<Map<String, Object>> modifiers;
    private final ExpoDialogProperties properties;

    /* JADX WARN: Multi-variable type inference failed */
    public BasicAlertDialogProps() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BasicAlertDialogProps copy$default(BasicAlertDialogProps basicAlertDialogProps, ExpoDialogProperties expoDialogProperties, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            expoDialogProperties = basicAlertDialogProps.properties;
        }
        if ((i & 2) != 0) {
            list = basicAlertDialogProps.modifiers;
        }
        return basicAlertDialogProps.copy(expoDialogProperties, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ExpoDialogProperties getProperties() {
        return this.properties;
    }

    public final List<Map<String, Object>> component2() {
        return this.modifiers;
    }

    public final BasicAlertDialogProps copy(ExpoDialogProperties properties, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new BasicAlertDialogProps(properties, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BasicAlertDialogProps)) {
            return false;
        }
        BasicAlertDialogProps basicAlertDialogProps = (BasicAlertDialogProps) other;
        return Intrinsics.areEqual(this.properties, basicAlertDialogProps.properties) && Intrinsics.areEqual(this.modifiers, basicAlertDialogProps.modifiers);
    }

    public int hashCode() {
        return (this.properties.hashCode() * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "BasicAlertDialogProps(properties=" + this.properties + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BasicAlertDialogProps(ExpoDialogProperties properties, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.properties = properties;
        this.modifiers = modifiers;
    }

    public /* synthetic */ BasicAlertDialogProps(ExpoDialogProperties expoDialogProperties, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ExpoDialogProperties(false, false, false, false, 15, null) : expoDialogProperties, (i & 2) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final ExpoDialogProperties getProperties() {
        return this.properties;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
