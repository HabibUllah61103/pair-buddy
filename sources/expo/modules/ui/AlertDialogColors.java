package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AlertDialogView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\fR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\f¨\u0006 "}, d2 = {"Lexpo/modules/ui/AlertDialogColors;", "Lexpo/modules/kotlin/records/Record;", "containerColor", "Landroid/graphics/Color;", "iconContentColor", "titleContentColor", "textContentColor", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V", "getContainerColor$annotations", "()V", "getContainerColor", "()Landroid/graphics/Color;", "getIconContentColor$annotations", "getIconContentColor", "getTitleContentColor$annotations", "getTitleContentColor", "getTextContentColor$annotations", "getTextContentColor", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AlertDialogColors implements Record {
    public static final int $stable = 8;
    private final Color containerColor;
    private final Color iconContentColor;
    private final Color textContentColor;
    private final Color titleContentColor;

    public AlertDialogColors() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ AlertDialogColors copy$default(AlertDialogColors alertDialogColors, Color color, Color color2, Color color3, Color color4, int i, Object obj) {
        if ((i & 1) != 0) {
            color = alertDialogColors.containerColor;
        }
        if ((i & 2) != 0) {
            color2 = alertDialogColors.iconContentColor;
        }
        if ((i & 4) != 0) {
            color3 = alertDialogColors.titleContentColor;
        }
        if ((i & 8) != 0) {
            color4 = alertDialogColors.textContentColor;
        }
        return alertDialogColors.copy(color, color2, color3, color4);
    }

    @Field
    public static /* synthetic */ void getContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getIconContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTextContentColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTitleContentColor$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getContainerColor() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getIconContentColor() {
        return this.iconContentColor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getTitleContentColor() {
        return this.titleContentColor;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Color getTextContentColor() {
        return this.textContentColor;
    }

    public final AlertDialogColors copy(Color containerColor, Color iconContentColor, Color titleContentColor, Color textContentColor) {
        return new AlertDialogColors(containerColor, iconContentColor, titleContentColor, textContentColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AlertDialogColors)) {
            return false;
        }
        AlertDialogColors alertDialogColors = (AlertDialogColors) other;
        return Intrinsics.areEqual(this.containerColor, alertDialogColors.containerColor) && Intrinsics.areEqual(this.iconContentColor, alertDialogColors.iconContentColor) && Intrinsics.areEqual(this.titleContentColor, alertDialogColors.titleContentColor) && Intrinsics.areEqual(this.textContentColor, alertDialogColors.textContentColor);
    }

    public int hashCode() {
        Color color = this.containerColor;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.iconContentColor;
        int iHashCode2 = (iHashCode + (color2 == null ? 0 : color2.hashCode())) * 31;
        Color color3 = this.titleContentColor;
        int iHashCode3 = (iHashCode2 + (color3 == null ? 0 : color3.hashCode())) * 31;
        Color color4 = this.textContentColor;
        return iHashCode3 + (color4 != null ? color4.hashCode() : 0);
    }

    public String toString() {
        return "AlertDialogColors(containerColor=" + this.containerColor + ", iconContentColor=" + this.iconContentColor + ", titleContentColor=" + this.titleContentColor + ", textContentColor=" + this.textContentColor + ")";
    }

    public AlertDialogColors(Color color, Color color2, Color color3, Color color4) {
        this.containerColor = color;
        this.iconContentColor = color2;
        this.titleContentColor = color3;
        this.textContentColor = color4;
    }

    public /* synthetic */ AlertDialogColors(Color color, Color color2, Color color3, Color color4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : color2, (i & 4) != 0 ? null : color3, (i & 8) != 0 ? null : color4);
    }

    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final Color getIconContentColor() {
        return this.iconContentColor;
    }

    public final Color getTitleContentColor() {
        return this.titleContentColor;
    }

    public final Color getTextContentColor() {
        return this.textContentColor;
    }
}
