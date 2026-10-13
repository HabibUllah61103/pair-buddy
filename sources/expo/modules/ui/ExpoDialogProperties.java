package expo.modules.ui;

import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: AlertDialogView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\fR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lexpo/modules/ui/ExpoDialogProperties;", "Lexpo/modules/kotlin/records/Record;", "dismissOnBackPress", "", "dismissOnClickOutside", "usePlatformDefaultWidth", "decorFitsSystemWindows", "<init>", "(ZZZZ)V", "getDismissOnBackPress$annotations", "()V", "getDismissOnBackPress", "()Z", "getDismissOnClickOutside$annotations", "getDismissOnClickOutside", "getUsePlatformDefaultWidth$annotations", "getUsePlatformDefaultWidth", "getDecorFitsSystemWindows$annotations", "getDecorFitsSystemWindows", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ExpoDialogProperties implements Record {
    public static final int $stable = 0;
    private final boolean decorFitsSystemWindows;
    private final boolean dismissOnBackPress;
    private final boolean dismissOnClickOutside;
    private final boolean usePlatformDefaultWidth;

    public ExpoDialogProperties() {
        this(false, false, false, false, 15, null);
    }

    public static /* synthetic */ ExpoDialogProperties copy$default(ExpoDialogProperties expoDialogProperties, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = expoDialogProperties.dismissOnBackPress;
        }
        if ((i & 2) != 0) {
            z2 = expoDialogProperties.dismissOnClickOutside;
        }
        if ((i & 4) != 0) {
            z3 = expoDialogProperties.usePlatformDefaultWidth;
        }
        if ((i & 8) != 0) {
            z4 = expoDialogProperties.decorFitsSystemWindows;
        }
        return expoDialogProperties.copy(z, z2, z3, z4);
    }

    @Field
    public static /* synthetic */ void getDecorFitsSystemWindows$annotations() {
    }

    @Field
    public static /* synthetic */ void getDismissOnBackPress$annotations() {
    }

    @Field
    public static /* synthetic */ void getDismissOnClickOutside$annotations() {
    }

    @Field
    public static /* synthetic */ void getUsePlatformDefaultWidth$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getDismissOnBackPress() {
        return this.dismissOnBackPress;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getDismissOnClickOutside() {
        return this.dismissOnClickOutside;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getUsePlatformDefaultWidth() {
        return this.usePlatformDefaultWidth;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getDecorFitsSystemWindows() {
        return this.decorFitsSystemWindows;
    }

    public final ExpoDialogProperties copy(boolean dismissOnBackPress, boolean dismissOnClickOutside, boolean usePlatformDefaultWidth, boolean decorFitsSystemWindows) {
        return new ExpoDialogProperties(dismissOnBackPress, dismissOnClickOutside, usePlatformDefaultWidth, decorFitsSystemWindows);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExpoDialogProperties)) {
            return false;
        }
        ExpoDialogProperties expoDialogProperties = (ExpoDialogProperties) other;
        return this.dismissOnBackPress == expoDialogProperties.dismissOnBackPress && this.dismissOnClickOutside == expoDialogProperties.dismissOnClickOutside && this.usePlatformDefaultWidth == expoDialogProperties.usePlatformDefaultWidth && this.decorFitsSystemWindows == expoDialogProperties.decorFitsSystemWindows;
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.dismissOnBackPress) * 31) + Boolean.hashCode(this.dismissOnClickOutside)) * 31) + Boolean.hashCode(this.usePlatformDefaultWidth)) * 31) + Boolean.hashCode(this.decorFitsSystemWindows);
    }

    public String toString() {
        return "ExpoDialogProperties(dismissOnBackPress=" + this.dismissOnBackPress + ", dismissOnClickOutside=" + this.dismissOnClickOutside + ", usePlatformDefaultWidth=" + this.usePlatformDefaultWidth + ", decorFitsSystemWindows=" + this.decorFitsSystemWindows + ")";
    }

    public ExpoDialogProperties(boolean z, boolean z2, boolean z3, boolean z4) {
        this.dismissOnBackPress = z;
        this.dismissOnClickOutside = z2;
        this.usePlatformDefaultWidth = z3;
        this.decorFitsSystemWindows = z4;
    }

    public /* synthetic */ ExpoDialogProperties(boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3, (i & 8) != 0 ? true : z4);
    }

    public final boolean getDismissOnBackPress() {
        return this.dismissOnBackPress;
    }

    public final boolean getDismissOnClickOutside() {
        return this.dismissOnClickOutside;
    }

    public final boolean getUsePlatformDefaultWidth() {
        return this.usePlatformDefaultWidth;
    }

    public final boolean getDecorFitsSystemWindows() {
        return this.decorFitsSystemWindows;
    }
}
