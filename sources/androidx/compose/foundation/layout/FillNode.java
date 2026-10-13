package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: Size.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u0011\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Landroidx/compose/foundation/layout/FillNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "direction", "Landroidx/compose/foundation/layout/Direction;", "fraction", "", "<init>", "(Landroidx/compose/foundation/layout/Direction;F)V", "getDirection", "()Landroidx/compose/foundation/layout/Direction;", "setDirection", "(Landroidx/compose/foundation/layout/Direction;)V", "getFraction", "()F", "setFraction", "(F)V", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "foundation-layout"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class FillNode extends Modifier.Node implements LayoutModifierNode {
    private Direction direction;
    private float fraction;

    public FillNode(Direction direction, float f) {
        this.direction = direction;
        this.fraction = f;
    }

    public final Direction getDirection() {
        return this.direction;
    }

    public final float getFraction() {
        return this.fraction;
    }

    public final void setDirection(Direction direction) {
        this.direction = direction;
    }

    public final void setFraction(float f) {
        this.fraction = f;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo84measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iM8847getMinWidthimpl;
        int iM8845getMaxWidthimpl;
        int iM8844getMaxHeightimpl;
        int iM8844getMaxHeightimpl2;
        if (!Constraints.m8841getHasBoundedWidthimpl(j) || this.direction == Direction.Vertical) {
            iM8847getMinWidthimpl = Constraints.m8847getMinWidthimpl(j);
            iM8845getMaxWidthimpl = Constraints.m8845getMaxWidthimpl(j);
        } else {
            int iRound = Math.round(Constraints.m8845getMaxWidthimpl(j) * this.fraction);
            int iM8847getMinWidthimpl2 = Constraints.m8847getMinWidthimpl(j);
            iM8847getMinWidthimpl = Constraints.m8845getMaxWidthimpl(j);
            if (iRound < iM8847getMinWidthimpl2) {
                iRound = iM8847getMinWidthimpl2;
            }
            if (iRound <= iM8847getMinWidthimpl) {
                iM8847getMinWidthimpl = iRound;
            }
            iM8845getMaxWidthimpl = iM8847getMinWidthimpl;
        }
        if (!Constraints.m8840getHasBoundedHeightimpl(j) || this.direction == Direction.Horizontal) {
            int iM8846getMinHeightimpl = Constraints.m8846getMinHeightimpl(j);
            iM8844getMaxHeightimpl = Constraints.m8844getMaxHeightimpl(j);
            iM8844getMaxHeightimpl2 = iM8846getMinHeightimpl;
        } else {
            int iRound2 = Math.round(Constraints.m8844getMaxHeightimpl(j) * this.fraction);
            int iM8846getMinHeightimpl2 = Constraints.m8846getMinHeightimpl(j);
            iM8844getMaxHeightimpl2 = Constraints.m8844getMaxHeightimpl(j);
            if (iRound2 < iM8846getMinHeightimpl2) {
                iRound2 = iM8846getMinHeightimpl2;
            }
            if (iRound2 <= iM8844getMaxHeightimpl2) {
                iM8844getMaxHeightimpl2 = iRound2;
            }
            iM8844getMaxHeightimpl = iM8844getMaxHeightimpl2;
        }
        final Placeable placeableMo7509measureBRTryo0 = measurable.mo7509measureBRTryo0(ConstraintsKt.Constraints(iM8847getMinWidthimpl, iM8845getMaxWidthimpl, iM8844getMaxHeightimpl2, iM8844getMaxHeightimpl));
        return MeasureScope.layout$default(measureScope, placeableMo7509measureBRTryo0.getWidth(), placeableMo7509measureBRTryo0.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FillNode.measure_3p2s80s$lambda$0(placeableMo7509measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }
}
