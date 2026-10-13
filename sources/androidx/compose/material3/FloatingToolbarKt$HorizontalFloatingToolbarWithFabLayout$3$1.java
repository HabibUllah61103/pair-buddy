package androidx.compose.material3;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: FloatingToolbar.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class FloatingToolbarKt$HorizontalFloatingToolbarWithFabLayout$3$1 implements MeasurePolicy {

    /* JADX INFO: renamed from: $$v$c$androidx-compose-material3-FloatingToolbarHorizontalFabPosition$-fabPosition$0, reason: not valid java name */
    final /* synthetic */ int f95x1152620b;

    /* JADX INFO: renamed from: $$v$c$androidx-compose-ui-unit-Dp$-collapsedShadowElevation$0, reason: not valid java name */
    final /* synthetic */ float f96$$v$c$androidxcomposeuiunitDp$collapsedShadowElevation$0;

    /* JADX INFO: renamed from: $$v$c$androidx-compose-ui-unit-Dp$-expandedShadowElevation$0, reason: not valid java name */
    final /* synthetic */ float f97$$v$c$androidxcomposeuiunitDp$expandedShadowElevation$0;

    /* JADX INFO: renamed from: $$v$c$androidx-compose-ui-unit-Dp$-toolbarToFabGap$0, reason: not valid java name */
    final /* synthetic */ float f98$$v$c$androidxcomposeuiunitDp$toolbarToFabGap$0;
    final /* synthetic */ State<Float> $expandedProgress;
    final /* synthetic */ Shape $toolbarShape;

    FloatingToolbarKt$HorizontalFloatingToolbarWithFabLayout$3$1(State<Float> state, float f, int i, float f2, float f3, Shape shape) {
        this.$expandedProgress = state;
        this.f98$$v$c$androidxcomposeuiunitDp$toolbarToFabGap$0 = f;
        this.f95x1152620b = i;
        this.f96$$v$c$androidxcomposeuiunitDp$collapsedShadowElevation$0 = f2;
        this.f97$$v$c$androidxcomposeuiunitDp$expandedShadowElevation$0 = f3;
        this.$toolbarShape = shape;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo56measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        Measurable measurable = list.get(0);
        Measurable measurable2 = list.get(1);
        int i = measureScope.mo460roundToPx0680j_4(FloatingToolbarKt.lerp(FloatingToolbarDefaults.INSTANCE.getFabSizeRange$material3(), 1.0f - this.$expandedProgress.getValue().floatValue()));
        final Placeable placeableMo7509measureBRTryo0 = measurable2.mo7509measureBRTryo0(Constraints.m8834copyZbe2FdA(j, i, i, i, i));
        int iMaxIntrinsicWidth = measurable.maxIntrinsicWidth(measureScope.mo460roundToPx0680j_4(FloatingToolbarDefaults.INSTANCE.m2675getContainerSizeD9Ej5fM()));
        final Placeable placeableMo7509measureBRTryo1 = measurable.mo7509measureBRTryo0(Constraints.m8835copyZbe2FdA$default(j, 0, RangesKt.coerceIn((int) (iMaxIntrinsicWidth * this.$expandedProgress.getValue().floatValue()), 0, Constraints.m8845getMaxWidthimpl(j)), RangesKt.coerceIn(measureScope.mo460roundToPx0680j_4(FloatingToolbarDefaults.INSTANCE.m2675getContainerSizeD9Ej5fM()), 0, Constraints.m8846getMinHeightimpl(j)), 0, 9, null));
        int i2 = measureScope.mo460roundToPx0680j_4(this.f98$$v$c$androidxcomposeuiunitDp$toolbarToFabGap$0) + iMaxIntrinsicWidth + measureScope.mo460roundToPx0680j_4(((Dp) FloatingToolbarDefaults.INSTANCE.getFabSizeRange$material3().getStart()).m8906unboximpl());
        int iM8846getMinHeightimpl = Constraints.m8846getMinHeightimpl(j);
        final int height = (iM8846getMinHeightimpl - placeableMo7509measureBRTryo1.getHeight()) / 2;
        final int height2 = (iM8846getMinHeightimpl - placeableMo7509measureBRTryo0.getHeight()) / 2;
        final int width = FloatingToolbarHorizontalFabPosition.m2702equalsimpl0(this.f95x1152620b, FloatingToolbarHorizontalFabPosition.INSTANCE.m2706getEndEdPuMIg()) ? i2 - placeableMo7509measureBRTryo0.getWidth() : 0;
        final int width2 = FloatingToolbarHorizontalFabPosition.m2702equalsimpl0(this.f95x1152620b, FloatingToolbarHorizontalFabPosition.INSTANCE.m2706getEndEdPuMIg()) ? iMaxIntrinsicWidth - placeableMo7509measureBRTryo1.getWidth() : i2 - iMaxIntrinsicWidth;
        final float f = this.f96$$v$c$androidxcomposeuiunitDp$collapsedShadowElevation$0;
        final float f2 = this.f97$$v$c$androidxcomposeuiunitDp$expandedShadowElevation$0;
        final State<Float> state = this.$expandedProgress;
        final Shape shape = this.$toolbarShape;
        return MeasureScope.layout$default(measureScope, i2, iM8846getMinHeightimpl, null, new Function1() { // from class: androidx.compose.material3.FloatingToolbarKt$HorizontalFloatingToolbarWithFabLayout$3$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FloatingToolbarKt$HorizontalFloatingToolbarWithFabLayout$3$1.measure_3p2s80s$lambda$0(f, f2, state, placeableMo7509measureBRTryo1, width2, height, placeableMo7509measureBRTryo0, width, height2, shape, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure_3p2s80s$lambda$0(float f, float f2, State state, Placeable placeable, int i, int i2, Placeable placeable2, int i3, int i4, final Shape shape, Placeable.PlacementScope placementScope) {
        final float fM8935lerpMdfbLM = DpKt.m8935lerpMdfbLM(f, f2, RangesKt.coerceAtMost(((Number) state.getValue()).floatValue(), 1.0f));
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable, i, i2, 0.0f, new Function1() { // from class: androidx.compose.material3.FloatingToolbarKt$HorizontalFloatingToolbarWithFabLayout$3$1$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FloatingToolbarKt$HorizontalFloatingToolbarWithFabLayout$3$1.measure_3p2s80s$lambda$0$0(fM8935lerpMdfbLM, shape, (GraphicsLayerScope) obj);
            }
        }, 4, (Object) null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i3, i4, 0.0f, 4, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure_3p2s80s$lambda$0$0(float f, Shape shape, GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setShadowElevation(graphicsLayerScope.mo466toPx0680j_4(f));
        graphicsLayerScope.setShape(shape);
        graphicsLayerScope.setClip(true);
        return Unit.INSTANCE;
    }
}
