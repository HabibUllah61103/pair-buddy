package expo.modules.ui;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventCallback;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: SliderView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006²\u0006\u0010\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u008a\u0084\u0002²\u0006\u0010\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\bX\u008a\u0084\u0002²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u008e\u0002²\u0006\n\u0010\r\u001a\u00020\u000eX\u008a\u008e\u0002²\u0006\n\u0010\u000f\u001a\u00020\fX\u008a\u008e\u0002"}, d2 = {"SliderContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/SliderProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SliderProps;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release", "onValueChange", "Lexpo/modules/kotlin/viewevent/ViewEventCallback;", "Lexpo/modules/ui/SliderValueChangedEvent;", "onValueChangeFinished", "localValue", "", "isDragging", "", "prevPropsValue"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SliderViewKt {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property0(new PropertyReference0Impl(SliderViewKt.class, "onValueChange", "<v#0>", 1)), Reflection.property0(new PropertyReference0Impl(SliderViewKt.class, "onValueChangeFinished", "<v#1>", 1))};

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SliderContent$lambda$18(FunctionalComposableScope functionalComposableScope, SliderProps sliderProps, int i, Composer composer, int i2) {
        SliderContent(functionalComposableScope, sliderProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void SliderContent(final FunctionalComposableScope functionalComposableScope, SliderProps sliderProps, Composer composer, final int i) {
        int i2;
        Composer composer2;
        final SliderProps props = sliderProps;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(347902402);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(SliderContent)54@1569L74,55@1675L55,56@1757L39,58@1818L76,59@1915L34,61@2043L51,73@2398L312,119@3789L83,87@2902L102,92@3034L66,97@3141L306,108@3461L294,81@2714L1162:SliderView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = i | ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(347902402, i2, -1, "expo.modules.ui.SliderContent (SliderView.kt:53)");
            }
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                ViewEventDelegate viewEventDelegate = new ViewEventDelegate(functionalComposableScope.getView(), null);
                composerStartRestartGroup.updateRememberedValue(viewEventDelegate);
                objRememberedValue = viewEventDelegate;
            }
            final ViewEventDelegate viewEventDelegate2 = (ViewEventDelegate) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                ViewEventDelegate viewEventDelegate3 = new ViewEventDelegate(functionalComposableScope.getView(), null);
                composerStartRestartGroup.updateRememberedValue(viewEventDelegate3);
                objRememberedValue2 = viewEventDelegate3;
            }
            final ViewEventDelegate viewEventDelegate4 = (ViewEventDelegate) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = InteractionSourceKt.MutableInteractionSource();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = PrimitiveSnapshotStateKt.mutableFloatStateOf(RangesKt.coerceIn(props.getValue(), props.getMin(), props.getMax()));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            final MutableFloatState mutableFloatState = (MutableFloatState) objRememberedValue4;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            final MutableState mutableState = (MutableState) objRememberedValue5;
            composerStartRestartGroup.endReplaceGroup();
            float fCoerceIn = RangesKt.coerceIn(props.getValue(), props.getMin(), props.getMax());
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue6 = PrimitiveSnapshotStateKt.mutableFloatStateOf(fCoerceIn);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            MutableFloatState mutableFloatState2 = (MutableFloatState) objRememberedValue6;
            composerStartRestartGroup.endReplaceGroup();
            if (!(fCoerceIn == SliderContent$lambda$12(mutableFloatState2))) {
                mutableFloatState2.setFloatValue(fCoerceIn);
                if (!SliderContent$lambda$9(mutableState)) {
                    mutableFloatState.setFloatValue(fCoerceIn);
                }
            }
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "thumb");
            final SlotView slotViewFindChildSlotView2 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "track");
            final androidx.compose.material3.SliderColors sliderColorsM3459colorsq0g_0yA = SliderDefaults.INSTANCE.m3459colorsq0g_0yA(UtilsKt.getCompose(props.getColors().getThumbColor()), UtilsKt.getCompose(props.getColors().getActiveTrackColor()), UtilsKt.getCompose(props.getColors().getActiveTickColor()), UtilsKt.getCompose(props.getColors().getInactiveTrackColor()), UtilsKt.getCompose(props.getColors().getInactiveTickColor()), 0L, 0L, 0L, 0L, 0L, composerStartRestartGroup, 0, 6, 992);
            float fSliderContent$lambda$6 = SliderContent$lambda$6(mutableFloatState);
            ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo = RangesKt.rangeTo(sliderProps.getMin(), sliderProps.getMax());
            int steps = sliderProps.getSteps();
            boolean enabled = sliderProps.getEnabled();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(sliderProps.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(-1746271574);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(viewEventDelegate2);
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue7 = new Function1() { // from class: expo.modules.ui.SliderViewKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SliderViewKt.SliderContent$lambda$15$lambda$14(mutableState, mutableFloatState, viewEventDelegate2, ((Float) obj).floatValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            Function1 function1 = (Function1) objRememberedValue7;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SliderView.kt#9igjgp");
            boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(viewEventDelegate4);
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue8 = new Function0() { // from class: expo.modules.ui.SliderViewKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return SliderViewKt.SliderContent$lambda$17$lambda$16(mutableState, viewEventDelegate4);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            composerStartRestartGroup.endReplaceGroup();
            props = sliderProps;
            SliderKt.Slider(fSliderContent$lambda$6, function1, modifierApplyModifiers, enabled, (Function0) objRememberedValue8, sliderColorsM3459colorsq0g_0yA, mutableInteractionSource, steps, ComposableLambdaKt.rememberComposableLambda(-1003691522, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: expo.modules.ui.SliderViewKt.SliderContent.3
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState, Composer composer3, Integer num) {
                    invoke(sliderState, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SliderState sliderState, Composer composer3, int i3) {
                    Intrinsics.checkNotNullParameter(sliderState, "sliderState");
                    ComposerKt.sourceInformation(composer3, "C:SliderView.kt#v15e7d");
                    if ((i3 & 17) == 16 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1003691522, i3, -1, "expo.modules.ui.SliderContent.<anonymous> (SliderView.kt:98)");
                    }
                    if (slotViewFindChildSlotView != null) {
                        composer3.startReplaceGroup(588234901);
                        ComposerKt.sourceInformation(composer3, "");
                        ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                        SlotView slotView = slotViewFindChildSlotView;
                        composer3.startReplaceGroup(1820091743);
                        ComposerKt.sourceInformation(composer3, "*99@3249L9");
                        slotView.Content(composableScope, composer3, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                        composer3.endReplaceGroup();
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(588321887);
                        ComposerKt.sourceInformation(composer3, "101@3301L132");
                        SliderDefaults.INSTANCE.m3453Thumb9LiSoMs(mutableInteractionSource, null, sliderColorsM3459colorsq0g_0yA, props.getEnabled(), 0L, composer3, 196614, 18);
                        composer3.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(2007364607, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: expo.modules.ui.SliderViewKt.SliderContent.4
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState, Composer composer3, Integer num) {
                    invoke(sliderState, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SliderState sliderState, Composer composer3, int i3) {
                    int i4;
                    Intrinsics.checkNotNullParameter(sliderState, "sliderState");
                    ComposerKt.sourceInformation(composer3, "C:SliderView.kt#v15e7d");
                    if ((i3 & 6) == 0) {
                        i4 = ((i3 & 8) == 0 ? composer3.changed(sliderState) : composer3.changedInstance(sliderState) ? 4 : 2) | i3;
                    } else {
                        i4 = i3;
                    }
                    if ((i4 & 19) == 18 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2007364607, i4, -1, "expo.modules.ui.SliderContent.<anonymous> (SliderView.kt:109)");
                    }
                    if (slotViewFindChildSlotView2 != null) {
                        composer3.startReplaceGroup(-1725570316);
                        ComposerKt.sourceInformation(composer3, "");
                        ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                        SlotView slotView = slotViewFindChildSlotView2;
                        composer3.startReplaceGroup(637074208);
                        ComposerKt.sourceInformation(composer3, "*110@3569L9");
                        slotView.Content(composableScope, composer3, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                        composer3.endReplaceGroup();
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(-1725483702);
                        ComposerKt.sourceInformation(composer3, "112@3621L120");
                        SliderDefaults.INSTANCE.m3456Track4EFweAY(sliderState, (Modifier) null, props.getEnabled(), sliderColorsM3459colorsq0g_0yA, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, composer3, 100663296 | SliderState.$stable | (i4 & 14), 242);
                        composer3.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), closedFloatingPointRangeRangeTo, composerStartRestartGroup, 907542528, 0, 0);
            composer2 = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.SliderViewKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SliderViewKt.SliderContent$lambda$18(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final ViewEventCallback<SliderValueChangedEvent> SliderContent$lambda$1(ViewEventDelegate<SliderValueChangedEvent> viewEventDelegate) {
        return viewEventDelegate.getValue($$delegatedProperties[0]);
    }

    private static final ViewEventCallback<Unit> SliderContent$lambda$3(ViewEventDelegate<Unit> viewEventDelegate) {
        return viewEventDelegate.getValue($$delegatedProperties[1]);
    }

    private static final float SliderContent$lambda$6(MutableFloatState mutableFloatState) {
        return mutableFloatState.getFloatValue();
    }

    private static final void SliderContent$lambda$10(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean SliderContent$lambda$9(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final float SliderContent$lambda$12(MutableFloatState mutableFloatState) {
        return mutableFloatState.getFloatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SliderContent$lambda$15$lambda$14(MutableState mutableState, MutableFloatState mutableFloatState, ViewEventDelegate viewEventDelegate, float f) {
        SliderContent$lambda$10(mutableState, true);
        mutableFloatState.setFloatValue(f);
        SliderContent$lambda$1(viewEventDelegate).invoke(new SliderValueChangedEvent(f));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SliderContent$lambda$17$lambda$16(MutableState mutableState, ViewEventDelegate viewEventDelegate) {
        SliderContent$lambda$10(mutableState, false);
        SliderContent$lambda$3(viewEventDelegate).invoke(Unit.INSTANCE);
        return Unit.INSTANCE;
    }
}
