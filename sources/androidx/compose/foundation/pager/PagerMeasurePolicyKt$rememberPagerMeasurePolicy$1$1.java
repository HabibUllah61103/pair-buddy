package androidx.compose.foundation.pager;

import androidx.collection.IntObjectMapKt;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PagerMeasurePolicy.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {

    /* JADX INFO: renamed from: $$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0, reason: not valid java name */
    final /* synthetic */ float f53$$v$c$androidxcomposeuiunitDp$pageSpacing$0;
    final /* synthetic */ int $beyondViewportPageCount;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ CoroutineScope $coroutineScope;
    final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    final /* synthetic */ Function0<PagerLazyLayoutItemProvider> $itemProviderLambda;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ Function0<Integer> $pageCount;
    final /* synthetic */ PageSize $pageSize;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ SnapPosition $snapPosition;
    final /* synthetic */ PagerState $state;
    final /* synthetic */ Alignment.Vertical $verticalAlignment;

    PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1(PagerState pagerState, Orientation orientation, PaddingValues paddingValues, boolean z, float f, PageSize pageSize, Function0<PagerLazyLayoutItemProvider> function0, Function0<Integer> function1, Alignment.Vertical vertical, Alignment.Horizontal horizontal, int i, SnapPosition snapPosition, CoroutineScope coroutineScope) {
        this.$state = pagerState;
        this.$orientation = orientation;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z;
        this.f53$$v$c$androidxcomposeuiunitDp$pageSpacing$0 = f;
        this.$pageSize = pageSize;
        this.$itemProviderLambda = function0;
        this.$pageCount = function1;
        this.$verticalAlignment = vertical;
        this.$horizontalAlignment = horizontal;
        this.$beyondViewportPageCount = i;
        this.$snapPosition = snapPosition;
        this.$coroutineScope = coroutineScope;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw */
    public final MeasureResult mo1045measure0kLqBqw(final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j) {
        int i;
        int i2;
        int i3;
        int iM8845getMaxWidthimpl;
        long jM9014constructorimpl;
        ObservableScopeInvalidator.m1148attachToScopeimpl(this.$state.m1235getMeasurementScopeInvalidatorzYiylxw$foundation());
        boolean z = this.$orientation == Orientation.Vertical;
        CheckScrollableContainerConstraintsKt.m335checkScrollableContainerConstraintsK40F9xA(j, z ? Orientation.Vertical : Orientation.Horizontal);
        if (z) {
            i = lazyLayoutMeasureScope.mo460roundToPx0680j_4(this.$contentPadding.mo875calculateLeftPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection()));
        } else {
            i = lazyLayoutMeasureScope.mo460roundToPx0680j_4(PaddingKt.calculateStartPadding(this.$contentPadding, lazyLayoutMeasureScope.getLayoutDirection()));
        }
        if (z) {
            i2 = lazyLayoutMeasureScope.mo460roundToPx0680j_4(this.$contentPadding.mo876calculateRightPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection()));
        } else {
            i2 = lazyLayoutMeasureScope.mo460roundToPx0680j_4(PaddingKt.calculateEndPadding(this.$contentPadding, lazyLayoutMeasureScope.getLayoutDirection()));
        }
        int i4 = lazyLayoutMeasureScope.mo460roundToPx0680j_4(this.$contentPadding.getTop());
        int i5 = lazyLayoutMeasureScope.mo460roundToPx0680j_4(this.$contentPadding.getBottom());
        int i6 = i2;
        final int i7 = i4 + i5;
        final int i8 = i + i6;
        int i9 = z ? i7 : i8;
        if (z && !this.$reverseLayout) {
            i3 = i4;
        } else if (z && this.$reverseLayout) {
            i3 = i5;
        } else {
            i3 = (z || this.$reverseLayout) ? i6 : i;
        }
        int i10 = i9 - i3;
        long jM8864offsetNN6EwU = ConstraintsKt.m8864offsetNN6EwU(j, -i8, -i7);
        LazyLayoutMeasureScope lazyLayoutMeasureScope2 = lazyLayoutMeasureScope;
        this.$state.setDensity$foundation(lazyLayoutMeasureScope2);
        int i11 = lazyLayoutMeasureScope.mo460roundToPx0680j_4(this.f53$$v$c$androidxcomposeuiunitDp$pageSpacing$0);
        if (z) {
            iM8845getMaxWidthimpl = Constraints.m8844getMaxHeightimpl(j) - i7;
        } else {
            iM8845getMaxWidthimpl = Constraints.m8845getMaxWidthimpl(j) - i8;
        }
        if (!this.$reverseLayout || iM8845getMaxWidthimpl > 0) {
            jM9014constructorimpl = IntOffset.m9014constructorimpl((((long) i) << 32) | (((long) i4) & 4294967295L));
        } else {
            if (!z) {
                i += iM8845getMaxWidthimpl;
            }
            if (z) {
                i4 += iM8845getMaxWidthimpl;
            }
            jM9014constructorimpl = IntOffset.m9014constructorimpl((((long) i4) & 4294967295L) | (((long) i) << 32));
        }
        int iCoerceAtLeast = RangesKt.coerceAtLeast(this.$pageSize.calculateMainAxisPageSize(lazyLayoutMeasureScope2, iM8845getMaxWidthimpl, i11), 0);
        this.$state.m1239setPremeasureConstraintsBRTryo0$foundation(ConstraintsKt.Constraints$default(0, this.$orientation == Orientation.Vertical ? Constraints.m8845getMaxWidthimpl(jM8864offsetNN6EwU) : iCoerceAtLeast, 0, this.$orientation != Orientation.Vertical ? Constraints.m8844getMaxHeightimpl(jM8864offsetNN6EwU) : iCoerceAtLeast, 5, null));
        PagerLazyLayoutItemProvider pagerLazyLayoutItemProviderInvoke = this.$itemProviderLambda.invoke();
        int i12 = iM8845getMaxWidthimpl + i3 + i10;
        Snapshot.Companion companion = Snapshot.INSTANCE;
        long j2 = jM9014constructorimpl;
        PagerState pagerState = this.$state;
        SnapPosition snapPosition = this.$snapPosition;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        Function1<Object, Unit> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            int iMatchScrollPositionWithKey$foundation = pagerState.matchScrollPositionWithKey$foundation(pagerLazyLayoutItemProviderInvoke, pagerState.getCurrentPage());
            int currentPage = pagerState.getCurrentPage();
            float currentPageOffsetFraction = pagerState.getCurrentPageOffsetFraction();
            int pageCount = pagerState.getPageCount();
            int i13 = iM8845getMaxWidthimpl;
            int iCurrentPageOffset = PagerKt.currentPageOffset(snapPosition, i12, iCoerceAtLeast, i11, i3, i10, currentPage, currentPageOffsetFraction, pageCount);
            Unit unit = Unit.INSTANCE;
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            PagerMeasureResult pagerMeasureResultM1231measurePager7L1iB3k = PagerMeasureKt.m1231measurePager7L1iB3k(lazyLayoutMeasureScope, this.$pageCount.invoke().intValue(), pagerLazyLayoutItemProviderInvoke, i13, i3, i10, i11, iMatchScrollPositionWithKey$foundation, iCurrentPageOffset, jM8864offsetNN6EwU, this.$orientation, this.$verticalAlignment, this.$horizontalAlignment, this.$reverseLayout, j2, iCoerceAtLeast, this.$beyondViewportPageCount, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(pagerLazyLayoutItemProviderInvoke, this.$state.getPinnedPages(), this.$state.getBeyondBoundsInfo()), this.$snapPosition, this.$state.m1236getPlacementScopeInvalidatorzYiylxw$foundation(), this.$coroutineScope, lazyLayoutMeasureScope2, new Function3() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1.measure_0kLqBqw$lambda$2(lazyLayoutMeasureScope, j, i8, i7, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (Function1) obj3);
                }
            }, IntObjectMapKt.mutableIntObjectMapOf());
            PagerState.applyMeasureResult$foundation$default(this.$state, pagerMeasureResultM1231measurePager7L1iB3k, lazyLayoutMeasureScope.isLookingAhead(), false, 4, null);
            PagerMeasurePolicyKt.keepAroundItems(lazyLayoutMeasureScope, this.$state.getCacheWindowLogic(), pagerMeasureResultM1231measurePager7L1iB3k.getVisiblePagesInfo());
            return pagerMeasureResultM1231measurePager7L1iB3k;
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult measure_0kLqBqw$lambda$2(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j, int i, int i2, int i3, int i4, Function1 function1) {
        return lazyLayoutMeasureScope.layout(ConstraintsKt.m8862constrainWidthK40F9xA(j, i3 + i), ConstraintsKt.m8861constrainHeightK40F9xA(j, i4 + i2), MapsKt.emptyMap(), function1);
    }
}
