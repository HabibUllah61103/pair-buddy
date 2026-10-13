package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PullToRefreshBoxView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012$\b\u0002\u0010\u0005\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J%\u0010\u0019\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000bHÆ\u0003JG\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032$\b\u0002\u0010\u0005\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\tHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\bHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R8\u0010\u0005\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\n0\u0006j\u0002`\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lexpo/modules/ui/PullToRefreshIndicatorProps;", "Lexpo/modules/kotlin/records/Record;", "color", "Landroid/graphics/Color;", "containerColor", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;Ljava/util/List;)V", "getColor$annotations", "()V", "getColor", "()Landroid/graphics/Color;", "getContainerColor$annotations", "getContainerColor", "getModifiers$annotations", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PullToRefreshIndicatorProps implements Record {
    public static final int $stable = 8;
    private final Color color;
    private final Color containerColor;
    private final List<Map<String, Object>> modifiers;

    public PullToRefreshIndicatorProps() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PullToRefreshIndicatorProps copy$default(PullToRefreshIndicatorProps pullToRefreshIndicatorProps, Color color, Color color2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            color = pullToRefreshIndicatorProps.color;
        }
        if ((i & 2) != 0) {
            color2 = pullToRefreshIndicatorProps.containerColor;
        }
        if ((i & 4) != 0) {
            list = pullToRefreshIndicatorProps.modifiers;
        }
        return pullToRefreshIndicatorProps.copy(color, color2, list);
    }

    @Field
    public static /* synthetic */ void getColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getModifiers$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final List<Map<String, Object>> component3() {
        return this.modifiers;
    }

    public final PullToRefreshIndicatorProps copy(Color color, Color containerColor, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new PullToRefreshIndicatorProps(color, containerColor, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PullToRefreshIndicatorProps)) {
            return false;
        }
        PullToRefreshIndicatorProps pullToRefreshIndicatorProps = (PullToRefreshIndicatorProps) other;
        return Intrinsics.areEqual(this.color, pullToRefreshIndicatorProps.color) && Intrinsics.areEqual(this.containerColor, pullToRefreshIndicatorProps.containerColor) && Intrinsics.areEqual(this.modifiers, pullToRefreshIndicatorProps.modifiers);
    }

    public int hashCode() {
        Color color = this.color;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.containerColor;
        return ((iHashCode + (color2 != null ? color2.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "PullToRefreshIndicatorProps(color=" + this.color + ", containerColor=" + this.containerColor + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PullToRefreshIndicatorProps(Color color, Color color2, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.color = color;
        this.containerColor = color2;
        this.modifiers = modifiers;
    }

    public final Color getColor() {
        return this.color;
    }

    public final Color getContainerColor() {
        return this.containerColor;
    }

    public /* synthetic */ PullToRefreshIndicatorProps(Color color, Color color2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : color2, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
