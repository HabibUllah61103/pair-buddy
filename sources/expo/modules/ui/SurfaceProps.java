package expo.modules.ui;

import android.graphics.Color;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SurfaceView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B¡\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012$\b\u0002\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u00101\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u00102\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u00104\u001a\u00020\rHÆ\u0003J\t\u00105\u001a\u00020\rHÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010)J\u0010\u00107\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010)J%\u00108\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017HÆ\u0003J¨\u0001\u00109\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r2$\b\u0002\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017HÆ\u0001¢\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020\r2\b\u0010<\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010=\u001a\u00020>HÖ\u0001J\t\u0010?\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b \u0010\u001eR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u000e\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b'\u0010&R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010*\u001a\u0004\b+\u0010)R-\u0010\u0011\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013j\u0002`\u00160\u0012j\u0002`\u0017¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-¨\u0006@"}, d2 = {"Lexpo/modules/ui/SurfaceProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "color", "Landroid/graphics/Color;", "contentColor", "tonalElevation", "", "shadowElevation", "shape", "Lexpo/modules/ui/ShapeRecord;", "border", "Lexpo/modules/ui/SurfaceBorder;", "clickable", "", ViewProps.ENABLED, "selected", "checked", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V", "getColor", "()Landroid/graphics/Color;", "getContentColor", "getTonalElevation", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getShadowElevation", "getShape", "()Lexpo/modules/ui/ShapeRecord;", "getBorder", "()Lexpo/modules/ui/SurfaceBorder;", "getClickable", "()Z", "getEnabled", "getSelected", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getChecked", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/ShapeRecord;Lexpo/modules/ui/SurfaceBorder;ZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lexpo/modules/ui/SurfaceProps;", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SurfaceProps implements ComposeProps {
    public static final int $stable = 8;
    private final SurfaceBorder border;
    private final Boolean checked;
    private final boolean clickable;
    private final Color color;
    private final Color contentColor;
    private final boolean enabled;
    private final List<Map<String, Object>> modifiers;
    private final Boolean selected;
    private final Float shadowElevation;
    private final ShapeRecord shape;
    private final Float tonalElevation;

    public SurfaceProps() {
        this(null, null, null, null, null, null, false, false, null, null, null, 2047, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SurfaceProps copy$default(SurfaceProps surfaceProps, Color color, Color color2, Float f, Float f2, ShapeRecord shapeRecord, SurfaceBorder surfaceBorder, boolean z, boolean z2, Boolean bool, Boolean bool2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            color = surfaceProps.color;
        }
        if ((i & 2) != 0) {
            color2 = surfaceProps.contentColor;
        }
        if ((i & 4) != 0) {
            f = surfaceProps.tonalElevation;
        }
        if ((i & 8) != 0) {
            f2 = surfaceProps.shadowElevation;
        }
        if ((i & 16) != 0) {
            shapeRecord = surfaceProps.shape;
        }
        if ((i & 32) != 0) {
            surfaceBorder = surfaceProps.border;
        }
        if ((i & 64) != 0) {
            z = surfaceProps.clickable;
        }
        if ((i & 128) != 0) {
            z2 = surfaceProps.enabled;
        }
        if ((i & 256) != 0) {
            bool = surfaceProps.selected;
        }
        if ((i & 512) != 0) {
            bool2 = surfaceProps.checked;
        }
        if ((i & 1024) != 0) {
            list = surfaceProps.modifiers;
        }
        Boolean bool3 = bool2;
        List list2 = list;
        boolean z3 = z2;
        Boolean bool4 = bool;
        SurfaceBorder surfaceBorder2 = surfaceBorder;
        boolean z4 = z;
        ShapeRecord shapeRecord2 = shapeRecord;
        Float f3 = f;
        return surfaceProps.copy(color, color2, f3, f2, shapeRecord2, surfaceBorder2, z4, z3, bool4, bool3, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Boolean getChecked() {
        return this.checked;
    }

    public final List<Map<String, Object>> component11() {
        return this.modifiers;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getContentColor() {
        return this.contentColor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getTonalElevation() {
        return this.tonalElevation;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getShadowElevation() {
        return this.shadowElevation;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ShapeRecord getShape() {
        return this.shape;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final SurfaceBorder getBorder() {
        return this.border;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getClickable() {
        return this.clickable;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getSelected() {
        return this.selected;
    }

    public final SurfaceProps copy(Color color, Color contentColor, Float tonalElevation, Float shadowElevation, ShapeRecord shape, SurfaceBorder border, boolean clickable, boolean enabled, Boolean selected, Boolean checked, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new SurfaceProps(color, contentColor, tonalElevation, shadowElevation, shape, border, clickable, enabled, selected, checked, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SurfaceProps)) {
            return false;
        }
        SurfaceProps surfaceProps = (SurfaceProps) other;
        return Intrinsics.areEqual(this.color, surfaceProps.color) && Intrinsics.areEqual(this.contentColor, surfaceProps.contentColor) && Intrinsics.areEqual((Object) this.tonalElevation, (Object) surfaceProps.tonalElevation) && Intrinsics.areEqual((Object) this.shadowElevation, (Object) surfaceProps.shadowElevation) && Intrinsics.areEqual(this.shape, surfaceProps.shape) && Intrinsics.areEqual(this.border, surfaceProps.border) && this.clickable == surfaceProps.clickable && this.enabled == surfaceProps.enabled && Intrinsics.areEqual(this.selected, surfaceProps.selected) && Intrinsics.areEqual(this.checked, surfaceProps.checked) && Intrinsics.areEqual(this.modifiers, surfaceProps.modifiers);
    }

    public int hashCode() {
        Color color = this.color;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.contentColor;
        int iHashCode2 = (iHashCode + (color2 == null ? 0 : color2.hashCode())) * 31;
        Float f = this.tonalElevation;
        int iHashCode3 = (iHashCode2 + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.shadowElevation;
        int iHashCode4 = (iHashCode3 + (f2 == null ? 0 : f2.hashCode())) * 31;
        ShapeRecord shapeRecord = this.shape;
        int iHashCode5 = (iHashCode4 + (shapeRecord == null ? 0 : shapeRecord.hashCode())) * 31;
        SurfaceBorder surfaceBorder = this.border;
        int iHashCode6 = (((((iHashCode5 + (surfaceBorder == null ? 0 : surfaceBorder.hashCode())) * 31) + Boolean.hashCode(this.clickable)) * 31) + Boolean.hashCode(this.enabled)) * 31;
        Boolean bool = this.selected;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.checked;
        return ((iHashCode7 + (bool2 != null ? bool2.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "SurfaceProps(color=" + this.color + ", contentColor=" + this.contentColor + ", tonalElevation=" + this.tonalElevation + ", shadowElevation=" + this.shadowElevation + ", shape=" + this.shape + ", border=" + this.border + ", clickable=" + this.clickable + ", enabled=" + this.enabled + ", selected=" + this.selected + ", checked=" + this.checked + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SurfaceProps(Color color, Color color2, Float f, Float f2, ShapeRecord shapeRecord, SurfaceBorder surfaceBorder, boolean z, boolean z2, Boolean bool, Boolean bool2, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.color = color;
        this.contentColor = color2;
        this.tonalElevation = f;
        this.shadowElevation = f2;
        this.shape = shapeRecord;
        this.border = surfaceBorder;
        this.clickable = z;
        this.enabled = z2;
        this.selected = bool;
        this.checked = bool2;
        this.modifiers = modifiers;
    }

    public final Color getColor() {
        return this.color;
    }

    public final Color getContentColor() {
        return this.contentColor;
    }

    public final Float getTonalElevation() {
        return this.tonalElevation;
    }

    public final Float getShadowElevation() {
        return this.shadowElevation;
    }

    public final ShapeRecord getShape() {
        return this.shape;
    }

    public final SurfaceBorder getBorder() {
        return this.border;
    }

    public final boolean getClickable() {
        return this.clickable;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final Boolean getSelected() {
        return this.selected;
    }

    public final Boolean getChecked() {
        return this.checked;
    }

    public /* synthetic */ SurfaceProps(Color color, Color color2, Float f, Float f2, ShapeRecord shapeRecord, SurfaceBorder surfaceBorder, boolean z, boolean z2, Boolean bool, Boolean bool2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : color2, (i & 4) != 0 ? null : f, (i & 8) != 0 ? null : f2, (i & 16) != 0 ? null : shapeRecord, (i & 32) != 0 ? null : surfaceBorder, (i & 64) != 0 ? false : z, (i & 128) != 0 ? true : z2, (i & 256) != 0 ? null : bool, (i & 512) != 0 ? null : bool2, (i & 1024) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
