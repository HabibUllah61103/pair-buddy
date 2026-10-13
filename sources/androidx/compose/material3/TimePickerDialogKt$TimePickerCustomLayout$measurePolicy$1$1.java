package androidx.compose.material3;

import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: TimePickerDialog.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1 implements MeasurePolicy {
    public static final TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1 INSTANCE = new TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1();

    TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure_3p2s80s$lambda$3(boolean z, int i, Placeable placeable, int i2, Placeable placeable2, int i3, int i4, int i5, MeasureScope measureScope, Placeable placeable3, int i6, int i7, int i8, int i9, Placeable.PlacementScope placementScope) {
        if (z) {
            int height = i4 - ((((i + placeable.getHeight()) + i2) + placeable2.getHeight()) + i3);
            int i10 = i4 >= i5 ? measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(16)) : 0;
            Placeable.PlacementScope.place$default(placementScope, placeable3, i6, i6, 0.0f, 4, null);
            int i11 = height / 2;
            int i12 = i + i11;
            Placeable.PlacementScope.place$default(placementScope, placeable, i7, i12, 0.0f, 4, null);
            Placeable.PlacementScope.place$default(placementScope, placeable2, i7, (((i12 + placeable.getHeight()) + i2) - i10) + i11, 0.0f, 4, null);
        } else {
            Placeable.PlacementScope.place$default(placementScope, placeable3, i6, i8, 0.0f, 4, null);
            int width = (i9 - placeable.getWidth()) / 2;
            int height2 = i8 + placeable3.getHeight();
            Placeable.PlacementScope.place$default(placementScope, placeable, width, height2, 0.0f, 4, null);
            Placeable.PlacementScope.place$default(placementScope, placeable2, (i9 - placeable2.getWidth()) / 2, height2 + placeable.getHeight(), 0.0f, 4, null);
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo56measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int width;
        int height;
        List<? extends Measurable> list2 = list;
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), "title")) {
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable2 = list.get(i2);
                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "timePickerContent")) {
                        int size3 = list2.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Measurable measurable3 = list.get(i3);
                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable3), "actions")) {
                                float f = 24;
                                final int i4 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(f));
                                final int i5 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(384));
                                final int i6 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(f));
                                final int i7 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(16));
                                final int i8 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(4));
                                final int i9 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(8));
                                final int i10 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(f));
                                int i11 = measureScope.mo460roundToPx0680j_4(Dp.m8892constructorimpl(f));
                                final Placeable placeableMo7509measureBRTryo0 = measurable2.mo7509measureBRTryo0(Constraints.m8835copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null));
                                boolean z = placeableMo7509measureBRTryo0.getWidth() > placeableMo7509measureBRTryo0.getHeight() && ((float) placeableMo7509measureBRTryo0.getHeight()) >= MathKt.truncate(measureScope.mo466toPx0680j_4(TimePickerKt.getClockDialMinContainerSize()));
                                if (z) {
                                    width = placeableMo7509measureBRTryo0.getWidth();
                                } else {
                                    width = placeableMo7509measureBRTryo0.getWidth();
                                }
                                final int i12 = width + (i4 * 2);
                                final boolean z2 = z;
                                final Placeable placeableMo7509measureBRTryo1 = measurable3.mo7509measureBRTryo0(Constraints.m8835copyZbe2FdA$default(j, 0, placeableMo7509measureBRTryo0.getWidth(), 0, 0, 8, null));
                                final Placeable placeableMo7509measureBRTryo2 = measurable.mo7509measureBRTryo0(Constraints.m8835copyZbe2FdA$default(j, 0, placeableMo7509measureBRTryo0.getWidth(), 0, 0, 8, null));
                                if (z2) {
                                    height = placeableMo7509measureBRTryo0.getHeight() + placeableMo7509measureBRTryo1.getHeight() + i9 + i7 + i8;
                                    if (Constraints.m8840getHasBoundedHeightimpl(j)) {
                                        height = Constraints.m8844getMaxHeightimpl(j);
                                    }
                                } else {
                                    height = placeableMo7509measureBRTryo2.getHeight() + i10 + placeableMo7509measureBRTryo0.getHeight() + placeableMo7509measureBRTryo1.getHeight() + i11;
                                }
                                final int i13 = height;
                                return MeasureScope.layout$default(measureScope, i12, i13, null, new Function1() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1$$ExternalSyntheticLambda0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1.measure_3p2s80s$lambda$3(z2, i7, placeableMo7509measureBRTryo0, i8, placeableMo7509measureBRTryo1, i9, i13, i5, measureScope, placeableMo7509measureBRTryo2, i6, i4, i10, i12, (Placeable.PlacementScope) obj);
                                    }
                                }, 4, null);
                            }
                            i3++;
                            measureScope = measureScope;
                        }
                        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                        throw new KotlinNothingValueException();
                    }
                    i2++;
                    measureScope = measureScope;
                }
                ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                throw new KotlinNothingValueException();
            }
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        throw new KotlinNothingValueException();
    }
}
