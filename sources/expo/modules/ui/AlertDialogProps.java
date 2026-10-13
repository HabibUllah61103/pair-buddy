package expo.modules.ui;

import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AlertDialogView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J%\u0010\u001d\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003JT\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006&"}, d2 = {"Lexpo/modules/ui/AlertDialogProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "colors", "Lexpo/modules/ui/AlertDialogColors;", "tonalElevation", "", "properties", "Lexpo/modules/ui/ExpoDialogProperties;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Lexpo/modules/ui/AlertDialogColors;Ljava/lang/Double;Lexpo/modules/ui/ExpoDialogProperties;Ljava/util/List;)V", "getColors", "()Lexpo/modules/ui/AlertDialogColors;", "getTonalElevation", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getProperties", "()Lexpo/modules/ui/ExpoDialogProperties;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "(Lexpo/modules/ui/AlertDialogColors;Ljava/lang/Double;Lexpo/modules/ui/ExpoDialogProperties;Ljava/util/List;)Lexpo/modules/ui/AlertDialogProps;", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AlertDialogProps implements ComposeProps {
    public static final int $stable = 8;
    private final AlertDialogColors colors;
    private final List<Map<String, Object>> modifiers;
    private final ExpoDialogProperties properties;
    private final Double tonalElevation;

    public AlertDialogProps() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AlertDialogProps copy$default(AlertDialogProps alertDialogProps, AlertDialogColors alertDialogColors, Double d, ExpoDialogProperties expoDialogProperties, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            alertDialogColors = alertDialogProps.colors;
        }
        if ((i & 2) != 0) {
            d = alertDialogProps.tonalElevation;
        }
        if ((i & 4) != 0) {
            expoDialogProperties = alertDialogProps.properties;
        }
        if ((i & 8) != 0) {
            list = alertDialogProps.modifiers;
        }
        return alertDialogProps.copy(alertDialogColors, d, expoDialogProperties, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AlertDialogColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Double getTonalElevation() {
        return this.tonalElevation;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ExpoDialogProperties getProperties() {
        return this.properties;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final AlertDialogProps copy(AlertDialogColors colors, Double tonalElevation, ExpoDialogProperties properties, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new AlertDialogProps(colors, tonalElevation, properties, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AlertDialogProps)) {
            return false;
        }
        AlertDialogProps alertDialogProps = (AlertDialogProps) other;
        return Intrinsics.areEqual(this.colors, alertDialogProps.colors) && Intrinsics.areEqual((Object) this.tonalElevation, (Object) alertDialogProps.tonalElevation) && Intrinsics.areEqual(this.properties, alertDialogProps.properties) && Intrinsics.areEqual(this.modifiers, alertDialogProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        Double d = this.tonalElevation;
        return ((((iHashCode + (d == null ? 0 : d.hashCode())) * 31) + this.properties.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "AlertDialogProps(colors=" + this.colors + ", tonalElevation=" + this.tonalElevation + ", properties=" + this.properties + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AlertDialogProps(AlertDialogColors colors, Double d, ExpoDialogProperties properties, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.colors = colors;
        this.tonalElevation = d;
        this.properties = properties;
        this.modifiers = modifiers;
    }

    public /* synthetic */ AlertDialogProps(AlertDialogColors alertDialogColors, Double d, ExpoDialogProperties expoDialogProperties, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new AlertDialogColors(null, null, null, null, 15, null) : alertDialogColors, (i & 2) != 0 ? null : d, (i & 4) != 0 ? new ExpoDialogProperties(false, false, false, false, 15, null) : expoDialogProperties, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final AlertDialogColors getColors() {
        return this.colors;
    }

    public final Double getTonalElevation() {
        return this.tonalElevation;
    }

    public final ExpoDialogProperties getProperties() {
        return this.properties;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
