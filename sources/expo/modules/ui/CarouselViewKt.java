package expo.modules.ui;

import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.carousel.CarouselDefaults;
import androidx.compose.material3.carousel.CarouselItemScope;
import androidx.compose.material3.carousel.CarouselKt;
import androidx.compose.material3.carousel.CarouselState;
import androidx.compose.material3.carousel.CarouselStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.types.Either;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: CarouselView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u001a\u0019\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u000b\u001a\u0019\u0010\f\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u000e\u001a\u0019\u0010\u000f\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"paddingValuesFromEither", "Landroidx/compose/foundation/layout/PaddingValues;", "either", "Lexpo/modules/kotlin/types/Either;", "", "Lexpo/modules/ui/PaddingValuesRecord;", "HorizontalCenteredHeroCarouselContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/HorizontalCenteredHeroCarouselProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalCenteredHeroCarouselProps;Landroidx/compose/runtime/Composer;I)V", "HorizontalMultiBrowseCarouselContent", "Lexpo/modules/ui/HorizontalMultiBrowseCarouselProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalMultiBrowseCarouselProps;Landroidx/compose/runtime/Composer;I)V", "HorizontalUncontainedCarouselContent", "Lexpo/modules/ui/HorizontalUncontainedCarouselProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/HorizontalUncontainedCarouselProps;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CarouselViewKt {

    /* JADX INFO: compiled from: CarouselView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FlingBehaviorType.values().length];
            try {
                iArr[FlingBehaviorType.SINGLE_ADVANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FlingBehaviorType.NO_SNAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HorizontalCenteredHeroCarouselContent$lambda$2(FunctionalComposableScope functionalComposableScope, HorizontalCenteredHeroCarouselProps horizontalCenteredHeroCarouselProps, int i, Composer composer, int i2) {
        HorizontalCenteredHeroCarouselContent(functionalComposableScope, horizontalCenteredHeroCarouselProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HorizontalMultiBrowseCarouselContent$lambda$5(FunctionalComposableScope functionalComposableScope, HorizontalMultiBrowseCarouselProps horizontalMultiBrowseCarouselProps, int i, Composer composer, int i2) {
        HorizontalMultiBrowseCarouselContent(functionalComposableScope, horizontalMultiBrowseCarouselProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HorizontalUncontainedCarouselContent$lambda$8(FunctionalComposableScope functionalComposableScope, HorizontalUncontainedCarouselProps horizontalUncontainedCarouselProps, int i, Composer composer, int i2) {
        HorizontalUncontainedCarouselContent(functionalComposableScope, horizontalUncontainedCarouselProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void HorizontalCenteredHeroCarouselContent(final FunctionalComposableScope functionalComposableScope, final HorizontalCenteredHeroCarouselProps props, Composer composer, final int i) {
        int i2;
        CarouselState carouselState;
        TargetedFlingBehavior targetedFlingBehavior;
        float fM4112getMinSmallItemSizeD9Ej5fM;
        float fM4111getMaxSmallItemSizeD9Ej5fM;
        float fM8912getUnspecifiedD9Ej5fM;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(687070273);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(HorizontalCenteredHeroCarouselContent)70@2577L13,70@2552L38,81@3196L83,89@3608L58,79@3105L561:CarouselView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(687070273, i2, -1, "expo.modules.ui.HorizontalCenteredHeroCarouselContent (CarouselView.kt:68)");
            }
            PaddingValues paddingValuesPaddingValuesFromEither = paddingValuesFromEither(props.getContentPadding());
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):CarouselView.kt#9igjgp");
            boolean z = (i2 & 14) == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(functionalComposableScope));
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.CarouselViewKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Integer.valueOf(CarouselViewKt.HorizontalCenteredHeroCarouselContent$lambda$1$lambda$0(functionalComposableScope));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            CarouselState carouselStateRememberCarouselState = CarouselStateKt.rememberCarouselState(0, (Function0) objRememberedValue, composerStartRestartGroup, 6, 0);
            FlingBehaviorType flingBehavior = props.getFlingBehavior();
            if (flingBehavior == null) {
                flingBehavior = FlingBehaviorType.SINGLE_ADVANCE;
            }
            int i3 = WhenMappings.$EnumSwitchMapping$0[flingBehavior.ordinal()];
            if (i3 == 1) {
                composerStartRestartGroup.startReplaceGroup(-1150416366);
                ComposerKt.sourceInformation(composerStartRestartGroup, "72@2758L49");
                TargetedFlingBehavior targetedFlingBehaviorSingleAdvanceFlingBehavior = CarouselDefaults.INSTANCE.singleAdvanceFlingBehavior(carouselStateRememberCarouselState, null, composerStartRestartGroup, CarouselState.$stable | (CarouselDefaults.$stable << 6), 2);
                carouselState = carouselStateRememberCarouselState;
                composerStartRestartGroup.endReplaceGroup();
                targetedFlingBehavior = targetedFlingBehaviorSingleAdvanceFlingBehavior;
            } else {
                if (i3 != 2) {
                    composerStartRestartGroup.startReplaceGroup(-1150420072);
                    composerStartRestartGroup.endReplaceGroup();
                    throw new NoWhenBranchMatchedException();
                }
                composerStartRestartGroup.startReplaceGroup(-1150413194);
                ComposerKt.sourceInformation(composerStartRestartGroup, "73@2858L21");
                TargetedFlingBehavior targetedFlingBehaviorNoSnapFlingBehavior = CarouselDefaults.INSTANCE.noSnapFlingBehavior(composerStartRestartGroup, CarouselDefaults.$stable);
                composerStartRestartGroup.endReplaceGroup();
                carouselState = carouselStateRememberCarouselState;
                targetedFlingBehavior = targetedFlingBehaviorNoSnapFlingBehavior;
            }
            Float minSmallItemWidth = props.getMinSmallItemWidth();
            if (minSmallItemWidth == null) {
                fM4112getMinSmallItemSizeD9Ej5fM = CarouselDefaults.INSTANCE.m4112getMinSmallItemSizeD9Ej5fM();
            } else {
                fM4112getMinSmallItemSizeD9Ej5fM = Dp.m8892constructorimpl(minSmallItemWidth.floatValue());
            }
            float f = fM4112getMinSmallItemSizeD9Ej5fM;
            Float maxSmallItemWidth = props.getMaxSmallItemWidth();
            if (maxSmallItemWidth == null) {
                fM4111getMaxSmallItemSizeD9Ej5fM = CarouselDefaults.INSTANCE.m4111getMaxSmallItemSizeD9Ej5fM();
            } else {
                fM4111getMaxSmallItemSizeD9Ej5fM = Dp.m8892constructorimpl(maxSmallItemWidth.floatValue());
            }
            float fM8906unboximpl = ((Dp) RangesKt.coerceAtLeast(Dp.m8890boximpl(fM4111getMaxSmallItemSizeD9Ej5fM), Dp.m8890boximpl(f))).m8906unboximpl();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Float maxItemWidth = props.getMaxItemWidth();
            if (maxItemWidth == null) {
                fM8912getUnspecifiedD9Ej5fM = Dp.INSTANCE.m8912getUnspecifiedD9Ej5fM();
            } else {
                fM8912getUnspecifiedD9Ej5fM = Dp.m8892constructorimpl(maxItemWidth.floatValue());
            }
            float f2 = fM8912getUnspecifiedD9Ej5fM;
            Float itemSpacing = props.getItemSpacing();
            float fM8892constructorimpl = Dp.m8892constructorimpl(itemSpacing != null ? itemSpacing.floatValue() : 0.0f);
            Boolean userScrollEnabled = props.getUserScrollEnabled();
            CarouselKt.m4121HorizontalCenteredHeroCarouselp2lB3Bg(carouselState, modifierApplyModifiers, f2, fM8892constructorimpl, targetedFlingBehavior, userScrollEnabled != null ? userScrollEnabled.booleanValue() : true, f, fM8906unboximpl, paddingValuesPaddingValuesFromEither, ComposableLambdaKt.rememberComposableLambda(2138721725, true, new Function4<CarouselItemScope, Integer, Composer, Integer, Unit>() { // from class: expo.modules.ui.CarouselViewKt.HorizontalCenteredHeroCarouselContent.1
                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Unit invoke(CarouselItemScope carouselItemScope, Integer num, Composer composer2, Integer num2) {
                    invoke(carouselItemScope, num.intValue(), composer2, num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(CarouselItemScope HorizontalCenteredHeroCarousel, int i4, Composer composer2, int i5) {
                    Intrinsics.checkNotNullParameter(HorizontalCenteredHeroCarousel, "$this$HorizontalCenteredHeroCarousel");
                    ComposerKt.sourceInformation(composer2, "C90@3627L35:CarouselView.kt#v15e7d");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2138721725, i5, -1, "expo.modules.ui.HorizontalCenteredHeroCarouselContent.<anonymous> (CarouselView.kt:90)");
                    }
                    functionalComposableScope.Child(new ComposableScope(null, null, null, null, 15, null), i4, composer2, (i5 & 112) | ComposableScope.$stable | (FunctionalComposableScope.$stable << 6));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368 | CarouselState.$stable, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.CarouselViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CarouselViewKt.HorizontalCenteredHeroCarouselContent$lambda$2(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int HorizontalCenteredHeroCarouselContent$lambda$1$lambda$0(FunctionalComposableScope functionalComposableScope) {
        return functionalComposableScope.getView().getChildCount();
    }

    public static final void HorizontalMultiBrowseCarouselContent(final FunctionalComposableScope functionalComposableScope, final HorizontalMultiBrowseCarouselProps props, Composer composer, final int i) {
        int i2;
        CarouselState carouselState;
        TargetedFlingBehavior targetedFlingBehavior;
        float fM4112getMinSmallItemSizeD9Ej5fM;
        float fM4111getMaxSmallItemSizeD9Ej5fM;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(1850455875);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(HorizontalMultiBrowseCarouselContent)109@4369L13,109@4344L38,121@5041L83,128@5392L58,118@4897L553:CarouselView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1850455875, i2, -1, "expo.modules.ui.HorizontalMultiBrowseCarouselContent (CarouselView.kt:107)");
            }
            PaddingValues paddingValuesPaddingValuesFromEither = paddingValuesFromEither(props.getContentPadding());
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):CarouselView.kt#9igjgp");
            boolean z = (i2 & 14) == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(functionalComposableScope));
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.CarouselViewKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Integer.valueOf(CarouselViewKt.HorizontalMultiBrowseCarouselContent$lambda$4$lambda$3(functionalComposableScope));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            CarouselState carouselStateRememberCarouselState = CarouselStateKt.rememberCarouselState(0, (Function0) objRememberedValue, composerStartRestartGroup, 6, 0);
            FlingBehaviorType flingBehavior = props.getFlingBehavior();
            if (flingBehavior == null) {
                flingBehavior = FlingBehaviorType.SINGLE_ADVANCE;
            }
            int i3 = WhenMappings.$EnumSwitchMapping$0[flingBehavior.ordinal()];
            if (i3 == 1) {
                composerStartRestartGroup.startReplaceGroup(171650132);
                ComposerKt.sourceInformation(composerStartRestartGroup, "111@4550L49");
                TargetedFlingBehavior targetedFlingBehaviorSingleAdvanceFlingBehavior = CarouselDefaults.INSTANCE.singleAdvanceFlingBehavior(carouselStateRememberCarouselState, null, composerStartRestartGroup, CarouselState.$stable | (CarouselDefaults.$stable << 6), 2);
                carouselState = carouselStateRememberCarouselState;
                composerStartRestartGroup.endReplaceGroup();
                targetedFlingBehavior = targetedFlingBehaviorSingleAdvanceFlingBehavior;
            } else {
                if (i3 != 2) {
                    composerStartRestartGroup.startReplaceGroup(171646426);
                    composerStartRestartGroup.endReplaceGroup();
                    throw new NoWhenBranchMatchedException();
                }
                composerStartRestartGroup.startReplaceGroup(171653304);
                ComposerKt.sourceInformation(composerStartRestartGroup, "112@4650L21");
                TargetedFlingBehavior targetedFlingBehaviorNoSnapFlingBehavior = CarouselDefaults.INSTANCE.noSnapFlingBehavior(composerStartRestartGroup, CarouselDefaults.$stable);
                composerStartRestartGroup.endReplaceGroup();
                carouselState = carouselStateRememberCarouselState;
                targetedFlingBehavior = targetedFlingBehaviorNoSnapFlingBehavior;
            }
            Float minSmallItemWidth = props.getMinSmallItemWidth();
            if (minSmallItemWidth == null) {
                fM4112getMinSmallItemSizeD9Ej5fM = CarouselDefaults.INSTANCE.m4112getMinSmallItemSizeD9Ej5fM();
            } else {
                fM4112getMinSmallItemSizeD9Ej5fM = Dp.m8892constructorimpl(minSmallItemWidth.floatValue());
            }
            float f = fM4112getMinSmallItemSizeD9Ej5fM;
            Float maxSmallItemWidth = props.getMaxSmallItemWidth();
            if (maxSmallItemWidth == null) {
                fM4111getMaxSmallItemSizeD9Ej5fM = CarouselDefaults.INSTANCE.m4111getMaxSmallItemSizeD9Ej5fM();
            } else {
                fM4111getMaxSmallItemSizeD9Ej5fM = Dp.m8892constructorimpl(maxSmallItemWidth.floatValue());
            }
            float fM8906unboximpl = ((Dp) RangesKt.coerceAtLeast(Dp.m8890boximpl(fM4111getMaxSmallItemSizeD9Ej5fM), Dp.m8890boximpl(f))).m8906unboximpl();
            float fM8892constructorimpl = Dp.m8892constructorimpl(props.getPreferredItemWidth());
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Float itemSpacing = props.getItemSpacing();
            float fM8892constructorimpl2 = Dp.m8892constructorimpl(itemSpacing != null ? itemSpacing.floatValue() : 0.0f);
            Boolean userScrollEnabled = props.getUserScrollEnabled();
            CarouselKt.m4122HorizontalMultiBrowseCarousel3tcCNu0(carouselState, fM8892constructorimpl, modifierApplyModifiers, fM8892constructorimpl2, targetedFlingBehavior, userScrollEnabled != null ? userScrollEnabled.booleanValue() : true, f, fM8906unboximpl, paddingValuesPaddingValuesFromEither, ComposableLambdaKt.rememberComposableLambda(1104852090, true, new Function4<CarouselItemScope, Integer, Composer, Integer, Unit>() { // from class: expo.modules.ui.CarouselViewKt.HorizontalMultiBrowseCarouselContent.1
                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Unit invoke(CarouselItemScope carouselItemScope, Integer num, Composer composer2, Integer num2) {
                    invoke(carouselItemScope, num.intValue(), composer2, num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(CarouselItemScope HorizontalMultiBrowseCarousel, int i4, Composer composer2, int i5) {
                    Intrinsics.checkNotNullParameter(HorizontalMultiBrowseCarousel, "$this$HorizontalMultiBrowseCarousel");
                    ComposerKt.sourceInformation(composer2, "C129@5411L35:CarouselView.kt#v15e7d");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1104852090, i5, -1, "expo.modules.ui.HorizontalMultiBrowseCarouselContent.<anonymous> (CarouselView.kt:129)");
                    }
                    functionalComposableScope.Child(new ComposableScope(null, null, null, null, 15, null), i4, composer2, (i5 & 112) | ComposableScope.$stable | (FunctionalComposableScope.$stable << 6));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368 | CarouselState.$stable, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.CarouselViewKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CarouselViewKt.HorizontalMultiBrowseCarouselContent$lambda$5(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int HorizontalMultiBrowseCarouselContent$lambda$4$lambda$3(FunctionalComposableScope functionalComposableScope) {
        return functionalComposableScope.getView().getChildCount();
    }

    public static final void HorizontalUncontainedCarouselContent(final FunctionalComposableScope functionalComposableScope, final HorizontalUncontainedCarouselProps props, Composer composer, final int i) {
        int i2;
        CarouselState carouselState;
        TargetedFlingBehavior targetedFlingBehavior;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1386204957);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(HorizontalUncontainedCarouselContent)146@6064L13,146@6039L38,156@6582L83,161@6847L58,153@6456L449:CarouselView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1386204957, i2, -1, "expo.modules.ui.HorizontalUncontainedCarouselContent (CarouselView.kt:144)");
            }
            PaddingValues paddingValuesPaddingValuesFromEither = paddingValuesFromEither(props.getContentPadding());
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):CarouselView.kt#9igjgp");
            boolean z = (i2 & 14) == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(functionalComposableScope));
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.CarouselViewKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Integer.valueOf(CarouselViewKt.HorizontalUncontainedCarouselContent$lambda$7$lambda$6(functionalComposableScope));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            CarouselState carouselStateRememberCarouselState = CarouselStateKt.rememberCarouselState(0, (Function0) objRememberedValue, composerStartRestartGroup, 6, 0);
            FlingBehaviorType flingBehavior = props.getFlingBehavior();
            if (flingBehavior == null) {
                flingBehavior = FlingBehaviorType.NO_SNAP;
            }
            int i3 = WhenMappings.$EnumSwitchMapping$0[flingBehavior.ordinal()];
            if (i3 == 1) {
                composerStartRestartGroup.startReplaceGroup(-703084492);
                ComposerKt.sourceInformation(composerStartRestartGroup, "149@6327L49");
                TargetedFlingBehavior targetedFlingBehaviorSingleAdvanceFlingBehavior = CarouselDefaults.INSTANCE.singleAdvanceFlingBehavior(carouselStateRememberCarouselState, null, composerStartRestartGroup, CarouselState.$stable | (CarouselDefaults.$stable << 6), 2);
                carouselState = carouselStateRememberCarouselState;
                composerStartRestartGroup.endReplaceGroup();
                targetedFlingBehavior = targetedFlingBehaviorSingleAdvanceFlingBehavior;
            } else {
                if (i3 != 2) {
                    composerStartRestartGroup.startReplaceGroup(-703087981);
                    composerStartRestartGroup.endReplaceGroup();
                    throw new NoWhenBranchMatchedException();
                }
                composerStartRestartGroup.startReplaceGroup(-703081320);
                ComposerKt.sourceInformation(composerStartRestartGroup, "150@6427L21");
                TargetedFlingBehavior targetedFlingBehaviorNoSnapFlingBehavior = CarouselDefaults.INSTANCE.noSnapFlingBehavior(composerStartRestartGroup, CarouselDefaults.$stable);
                composerStartRestartGroup.endReplaceGroup();
                carouselState = carouselStateRememberCarouselState;
                targetedFlingBehavior = targetedFlingBehaviorNoSnapFlingBehavior;
            }
            float fM8892constructorimpl = Dp.m8892constructorimpl(props.getItemWidth());
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            Float itemSpacing = props.getItemSpacing();
            float fM8892constructorimpl2 = Dp.m8892constructorimpl(itemSpacing != null ? itemSpacing.floatValue() : 0.0f);
            Boolean userScrollEnabled = props.getUserScrollEnabled();
            CarouselKt.m4123HorizontalUncontainedCarouselVUP9l70(carouselState, fM8892constructorimpl, modifierApplyModifiers, fM8892constructorimpl2, targetedFlingBehavior, userScrollEnabled != null ? userScrollEnabled.booleanValue() : true, paddingValuesPaddingValuesFromEither, ComposableLambdaKt.rememberComposableLambda(690856115, true, new Function4<CarouselItemScope, Integer, Composer, Integer, Unit>() { // from class: expo.modules.ui.CarouselViewKt.HorizontalUncontainedCarouselContent.1
                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Unit invoke(CarouselItemScope carouselItemScope, Integer num, Composer composer2, Integer num2) {
                    invoke(carouselItemScope, num.intValue(), composer2, num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(CarouselItemScope HorizontalUncontainedCarousel, int i4, Composer composer2, int i5) {
                    Intrinsics.checkNotNullParameter(HorizontalUncontainedCarousel, "$this$HorizontalUncontainedCarousel");
                    ComposerKt.sourceInformation(composer2, "C162@6866L35:CarouselView.kt#v15e7d");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(690856115, i5, -1, "expo.modules.ui.HorizontalUncontainedCarouselContent.<anonymous> (CarouselView.kt:162)");
                    }
                    functionalComposableScope.Child(new ComposableScope(null, null, null, null, 15, null), i4, composer2, (i5 & 112) | ComposableScope.$stable | (FunctionalComposableScope.$stable << 6));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 12582912 | CarouselState.$stable, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.CarouselViewKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CarouselViewKt.HorizontalUncontainedCarouselContent$lambda$8(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int HorizontalUncontainedCarouselContent$lambda$7$lambda$6(FunctionalComposableScope functionalComposableScope) {
        return functionalComposableScope.getView().getChildCount();
    }

    public static final PaddingValues paddingValuesFromEither(Either<Float, PaddingValuesRecord> either) {
        if (either == null) {
            return PaddingKt.m923PaddingValues0680j_4(Dp.m8892constructorimpl(0));
        }
        if (either.isFirstType(Reflection.getOrCreateKotlinClass(Float.TYPE))) {
            return PaddingKt.m923PaddingValues0680j_4(Dp.m8892constructorimpl(either.getFirstType(Reflection.getOrCreateKotlinClass(Float.TYPE)).floatValue()));
        }
        if (either.isSecondType(Reflection.getOrCreateKotlinClass(PaddingValuesRecord.class))) {
            return either.getSecondType(Reflection.getOrCreateKotlinClass(PaddingValuesRecord.class)).toPaddingValues();
        }
        throw new IllegalStateException();
    }
}
