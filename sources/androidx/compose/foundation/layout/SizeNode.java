package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Size.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ#\u0010 \u001a\u00020!*\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001cH\u0016¢\u0006\u0004\b&\u0010'J\u001c\u0010(\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0016J\u001c\u0010-\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010.\u001a\u00020)H\u0016J\u001c\u0010/\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0016J\u001c\u00100\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010.\u001a\u00020)H\u0016R\u001c\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0015\u0010\r\"\u0004\b\u0016\u0010\u000fR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u001c*\u00020\u001d8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u00061"}, d2 = {"Landroidx/compose/foundation/layout/SizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", ViewProps.MIN_WIDTH, "Landroidx/compose/ui/unit/Dp;", ViewProps.MIN_HEIGHT, ViewProps.MAX_WIDTH, ViewProps.MAX_HEIGHT, "enforceIncoming", "", "<init>", "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getMinWidth-D9Ej5fM", "()F", "setMinWidth-0680j_4", "(F)V", "F", "getMinHeight-D9Ej5fM", "setMinHeight-0680j_4", "getMaxWidth-D9Ej5fM", "setMaxWidth-0680j_4", "getMaxHeight-D9Ej5fM", "setMaxHeight-0680j_4", "getEnforceIncoming", "()Z", "setEnforceIncoming", "(Z)V", "targetConstraints", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/unit/Density;", "getTargetConstraints-OenEA2s", "(Landroidx/compose/ui/unit/Density;)J", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicWidth", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "height", "minIntrinsicHeight", "width", "maxIntrinsicWidth", "maxIntrinsicHeight", "foundation-layout"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    private boolean enforceIncoming;
    private float maxHeight;
    private float maxWidth;
    private float minHeight;
    private float minWidth;

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, z);
    }

    private SizeNode(float f, float f2, float f3, float f4, boolean z) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
    }

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dp.INSTANCE.m8912getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.INSTANCE.m8912getUnspecifiedD9Ej5fM() : f2, (i & 4) != 0 ? Dp.INSTANCE.m8912getUnspecifiedD9Ej5fM() : f3, (i & 8) != 0 ? Dp.INSTANCE.m8912getUnspecifiedD9Ej5fM() : f4, z, null);
    }

    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinWidth() {
        return this.minWidth;
    }

    /* JADX INFO: renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m994setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinHeight() {
        return this.minHeight;
    }

    /* JADX INFO: renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m993setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    /* JADX INFO: renamed from: getMaxWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMaxWidth() {
        return this.maxWidth;
    }

    /* JADX INFO: renamed from: setMaxWidth-0680j_4, reason: not valid java name */
    public final void m992setMaxWidth0680j_4(float f) {
        this.maxWidth = f;
    }

    /* JADX INFO: renamed from: getMaxHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMaxHeight() {
        return this.maxHeight;
    }

    /* JADX INFO: renamed from: setMaxHeight-0680j_4, reason: not valid java name */
    public final void m991setMaxHeight0680j_4(float f) {
        this.maxHeight = f;
    }

    public final boolean getEnforceIncoming() {
        return this.enforceIncoming;
    }

    public final void setEnforceIncoming(boolean z) {
        this.enforceIncoming = z;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX INFO: renamed from: getTargetConstraints-OenEA2s, reason: not valid java name */
    private final long m986getTargetConstraintsOenEA2s(Density density) {
        int iMo460roundToPx0680j_4;
        int iMo460roundToPx0680j_5;
        int iMo460roundToPx0680j_6;
        int i = 0;
        if (Float.isNaN(this.maxWidth)) {
            iMo460roundToPx0680j_4 = Integer.MAX_VALUE;
        } else {
            iMo460roundToPx0680j_4 = density.mo460roundToPx0680j_4(this.maxWidth);
            if (iMo460roundToPx0680j_4 < 0) {
                iMo460roundToPx0680j_4 = 0;
            }
        }
        if (Float.isNaN(this.maxHeight)) {
            iMo460roundToPx0680j_5 = Integer.MAX_VALUE;
        } else {
            iMo460roundToPx0680j_5 = density.mo460roundToPx0680j_4(this.maxHeight);
            if (iMo460roundToPx0680j_5 < 0) {
                iMo460roundToPx0680j_5 = 0;
            }
        }
        if (Float.isNaN(this.minWidth)) {
            iMo460roundToPx0680j_6 = 0;
        } else {
            iMo460roundToPx0680j_6 = density.mo460roundToPx0680j_4(this.minWidth);
            if (iMo460roundToPx0680j_6 < 0) {
                iMo460roundToPx0680j_6 = 0;
            }
            if (iMo460roundToPx0680j_6 > iMo460roundToPx0680j_4) {
                iMo460roundToPx0680j_6 = iMo460roundToPx0680j_4;
            }
            if (iMo460roundToPx0680j_6 == Integer.MAX_VALUE) {
                iMo460roundToPx0680j_6 = 0;
            }
        }
        if (!Float.isNaN(this.minHeight)) {
            int iMo460roundToPx0680j_7 = density.mo460roundToPx0680j_4(this.minHeight);
            if (iMo460roundToPx0680j_7 < 0) {
                iMo460roundToPx0680j_7 = 0;
            }
            if (iMo460roundToPx0680j_7 > iMo460roundToPx0680j_5) {
                iMo460roundToPx0680j_7 = iMo460roundToPx0680j_5;
            }
            if (iMo460roundToPx0680j_7 != Integer.MAX_VALUE) {
                i = iMo460roundToPx0680j_7;
            }
        }
        return ConstraintsKt.Constraints(iMo460roundToPx0680j_6, iMo460roundToPx0680j_4, i, iMo460roundToPx0680j_5);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo84measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iM8847getMinWidthimpl;
        int iM8845getMaxWidthimpl;
        int iM8846getMinHeightimpl;
        int iM8844getMaxHeightimpl;
        long jConstraints;
        long jM986getTargetConstraintsOenEA2s = m986getTargetConstraintsOenEA2s(measureScope);
        if (this.enforceIncoming) {
            jConstraints = ConstraintsKt.m8860constrainN9IONVI(j, jM986getTargetConstraintsOenEA2s);
        } else {
            if (!Float.isNaN(this.minWidth)) {
                iM8847getMinWidthimpl = Constraints.m8847getMinWidthimpl(jM986getTargetConstraintsOenEA2s);
            } else {
                iM8847getMinWidthimpl = Constraints.m8847getMinWidthimpl(j);
                int iM8845getMaxWidthimpl2 = Constraints.m8845getMaxWidthimpl(jM986getTargetConstraintsOenEA2s);
                if (iM8847getMinWidthimpl > iM8845getMaxWidthimpl2) {
                    iM8847getMinWidthimpl = iM8845getMaxWidthimpl2;
                }
            }
            if (!Float.isNaN(this.maxWidth)) {
                iM8845getMaxWidthimpl = Constraints.m8845getMaxWidthimpl(jM986getTargetConstraintsOenEA2s);
            } else {
                iM8845getMaxWidthimpl = Constraints.m8845getMaxWidthimpl(j);
                int iM8847getMinWidthimpl2 = Constraints.m8847getMinWidthimpl(jM986getTargetConstraintsOenEA2s);
                if (iM8845getMaxWidthimpl < iM8847getMinWidthimpl2) {
                    iM8845getMaxWidthimpl = iM8847getMinWidthimpl2;
                }
            }
            if (!Float.isNaN(this.minHeight)) {
                iM8846getMinHeightimpl = Constraints.m8846getMinHeightimpl(jM986getTargetConstraintsOenEA2s);
            } else {
                iM8846getMinHeightimpl = Constraints.m8846getMinHeightimpl(j);
                int iM8844getMaxHeightimpl2 = Constraints.m8844getMaxHeightimpl(jM986getTargetConstraintsOenEA2s);
                if (iM8846getMinHeightimpl > iM8844getMaxHeightimpl2) {
                    iM8846getMinHeightimpl = iM8844getMaxHeightimpl2;
                }
            }
            if (!Float.isNaN(this.maxHeight)) {
                iM8844getMaxHeightimpl = Constraints.m8844getMaxHeightimpl(jM986getTargetConstraintsOenEA2s);
            } else {
                iM8844getMaxHeightimpl = Constraints.m8844getMaxHeightimpl(j);
                int iM8846getMinHeightimpl2 = Constraints.m8846getMinHeightimpl(jM986getTargetConstraintsOenEA2s);
                if (iM8844getMaxHeightimpl < iM8846getMinHeightimpl2) {
                    iM8844getMaxHeightimpl = iM8846getMinHeightimpl2;
                }
            }
            jConstraints = ConstraintsKt.Constraints(iM8847getMinWidthimpl, iM8845getMaxWidthimpl, iM8846getMinHeightimpl, iM8844getMaxHeightimpl);
        }
        final Placeable placeableMo7509measureBRTryo0 = measurable.mo7509measureBRTryo0(jConstraints);
        return MeasureScope.layout$default(measureScope, placeableMo7509measureBRTryo0.getWidth(), placeableMo7509measureBRTryo0.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.layout.SizeNode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SizeNode.measure_3p2s80s$lambda$1(placeableMo7509measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure_3p2s80s$lambda$1(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM986getTargetConstraintsOenEA2s = m986getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8843getHasFixedWidthimpl(jM986getTargetConstraintsOenEA2s)) {
            return Constraints.m8845getMaxWidthimpl(jM986getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m8861constrainHeightK40F9xA(jM986getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m8862constrainWidthK40F9xA(jM986getTargetConstraintsOenEA2s, intrinsicMeasurable.minIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM986getTargetConstraintsOenEA2s = m986getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8842getHasFixedHeightimpl(jM986getTargetConstraintsOenEA2s)) {
            return Constraints.m8844getMaxHeightimpl(jM986getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m8862constrainWidthK40F9xA(jM986getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m8861constrainHeightK40F9xA(jM986getTargetConstraintsOenEA2s, intrinsicMeasurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM986getTargetConstraintsOenEA2s = m986getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8843getHasFixedWidthimpl(jM986getTargetConstraintsOenEA2s)) {
            return Constraints.m8845getMaxWidthimpl(jM986getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m8861constrainHeightK40F9xA(jM986getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m8862constrainWidthK40F9xA(jM986getTargetConstraintsOenEA2s, intrinsicMeasurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM986getTargetConstraintsOenEA2s = m986getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8842getHasFixedHeightimpl(jM986getTargetConstraintsOenEA2s)) {
            return Constraints.m8844getMaxHeightimpl(jM986getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m8862constrainWidthK40F9xA(jM986getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m8861constrainHeightK40F9xA(jM986getTargetConstraintsOenEA2s, intrinsicMeasurable.maxIntrinsicHeight(i));
    }
}
