package expo.modules.ui;

import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.MultiChoiceSegmentedButtonRowScope;
import androidx.compose.material3.SegmentedButtonDefaults;
import androidx.compose.material3.SegmentedButtonKt;
import androidx.compose.material3.SingleChoiceSegmentedButtonRowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SegmentedButtonView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001aA\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"SegmentedButtonContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/SegmentedButtonProps;", ViewProps.ON_CLICK, "Lkotlin/Function0;", "onCheckedChange", "Lkotlin/Function1;", "Lexpo/modules/ui/GenericEventPayload1;", "", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SegmentedButtonProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SegmentedButtonViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SegmentedButtonContent$lambda$1(FunctionalComposableScope functionalComposableScope, SegmentedButtonProps segmentedButtonProps, Function0 function0, Function1 function1, int i, Composer composer, int i2) {
        SegmentedButtonContent(functionalComposableScope, segmentedButtonProps, function0, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SegmentedButtonContent$lambda$6(FunctionalComposableScope functionalComposableScope, SegmentedButtonProps segmentedButtonProps, Function0 function0, Function1 function1, int i, Composer composer, int i2) {
        SegmentedButtonContent(functionalComposableScope, segmentedButtonProps, function0, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void SegmentedButtonContent(final FunctionalComposableScope functionalComposableScope, final SegmentedButtonProps props, final Function0<Unit> onClick, final Function1<? super GenericEventPayload1<Boolean>, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(-148025820);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(SegmentedButtonContent)P(2,1)52@2017L858,67@2915L39,68@2989L83:SegmentedButtonView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onClick) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 2048 : 1024;
        }
        if ((i2 & 1171) != 1170 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-148025820, i2, -1, "expo.modules.ui.SegmentedButtonContent (SegmentedButtonView.kt:45)");
            }
            SegmentedButtonColors colors = props.getColors();
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "label");
            ViewParent parent = functionalComposableScope.getView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            int iIndexOfChild = viewGroup != null ? viewGroup.indexOfChild(functionalComposableScope.getView()) : 0;
            int childCount = viewGroup != null ? viewGroup.getChildCount() : 1;
            int i3 = i2;
            SegmentedButtonDefaults segmentedButtonDefaults = SegmentedButtonDefaults.INSTANCE;
            long compose = UtilsKt.getCompose(colors.getActiveBorderColor());
            long compose2 = UtilsKt.getCompose(colors.getActiveContentColor());
            long compose3 = UtilsKt.getCompose(colors.getInactiveBorderColor());
            androidx.compose.material3.SegmentedButtonColors segmentedButtonColorsM3385colorsXqyqHi0 = segmentedButtonDefaults.m3385colorsXqyqHi0(UtilsKt.getCompose(colors.getActiveContainerColor()), compose2, compose, UtilsKt.getCompose(colors.getInactiveContainerColor()), UtilsKt.getCompose(colors.getInactiveContentColor()), compose3, UtilsKt.getCompose(colors.getDisabledActiveContainerColor()), UtilsKt.getCompose(colors.getDisabledActiveContentColor()), UtilsKt.getCompose(colors.getDisabledActiveBorderColor()), UtilsKt.getCompose(colors.getDisabledInactiveContainerColor()), UtilsKt.getCompose(colors.getDisabledInactiveContentColor()), UtilsKt.getCompose(colors.getDisabledInactiveBorderColor()), composerStartRestartGroup, 0, 384, 0);
            Shape shapeItemShape = SegmentedButtonDefaults.INSTANCE.itemShape(iIndexOfChild, childCount, null, composerStartRestartGroup, 3072, 4);
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.startReplaceGroup(-518842574);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*70@3136L96");
            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView == null ? null : ComposableLambdaKt.rememberComposableLambda(314958992, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.SegmentedButtonViewKt$SegmentedButtonContent$label$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C:SegmentedButtonView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(314958992, i4, -1, "expo.modules.ui.SegmentedButtonContent.<anonymous>.<anonymous> (SegmentedButtonView.kt:71)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView;
                    composer2.startReplaceGroup(2027881976);
                    ComposerKt.sourceInformation(composer2, "*73@3199L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            if (composableLambdaRememberComposableLambda == null) {
                composableLambdaRememberComposableLambda = ComposableSingletons$SegmentedButtonViewKt.INSTANCE.getLambda$1431986096$expo_ui_release();
            }
            Function2<Composer, Integer, Unit> function2 = composableLambdaRememberComposableLambda;
            RowScope rowScope = functionalComposableScope.getComposableScope().getRowScope();
            SingleChoiceSegmentedButtonRowScope singleChoiceSegmentedButtonRowScope = rowScope instanceof SingleChoiceSegmentedButtonRowScope ? (SingleChoiceSegmentedButtonRowScope) rowScope : null;
            RowScope rowScope2 = functionalComposableScope.getComposableScope().getRowScope();
            MultiChoiceSegmentedButtonRowScope multiChoiceSegmentedButtonRowScope = rowScope2 instanceof MultiChoiceSegmentedButtonRowScope ? (MultiChoiceSegmentedButtonRowScope) rowScope2 : null;
            if (singleChoiceSegmentedButtonRowScope == null && multiChoiceSegmentedButtonRowScope == null) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.SegmentedButtonViewKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return SegmentedButtonViewKt.SegmentedButtonContent$lambda$1(functionalComposableScope, props, onClick, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            if (singleChoiceSegmentedButtonRowScope != null) {
                composerStartRestartGroup.startReplaceGroup(1096324721);
                ComposerKt.sourceInformation(composerStartRestartGroup, "*91@3733L227");
                SegmentedButtonKt.SegmentedButton(singleChoiceSegmentedButtonRowScope, props.getSelected(), onClick, shapeItemShape, modifierApplyModifiers, props.getEnabled(), segmentedButtonColorsM3385colorsXqyqHi0, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, (Function2<? super Composer, ? super Integer, Unit>) null, function2, composerStartRestartGroup, i3 & 896, 0, 960);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else if (multiChoiceSegmentedButtonRowScope != null) {
                composerStartRestartGroup.startReplaceGroup(1096622662);
                ComposerKt.sourceInformation(composerStartRestartGroup, "*105@4107L45,103@4031L271");
                boolean checked = props.getChecked();
                boolean enabled = props.getEnabled();
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SegmentedButtonView.kt#9igjgp");
                boolean z = (i3 & 7168) == 2048;
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function1() { // from class: expo.modules.ui.SegmentedButtonViewKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SegmentedButtonViewKt.SegmentedButtonContent$lambda$5$lambda$4$lambda$3(onCheckedChange, ((Boolean) obj).booleanValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                SegmentedButtonKt.SegmentedButton(multiChoiceSegmentedButtonRowScope, checked, (Function1<? super Boolean, Unit>) objRememberedValue, shapeItemShape, modifierApplyModifiers, enabled, segmentedButtonColorsM3385colorsXqyqHi0, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, (Function2<? super Composer, ? super Integer, Unit>) null, function2, composerStartRestartGroup, 0, 0, 960);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1096922494);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new Function2() { // from class: expo.modules.ui.SegmentedButtonViewKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SegmentedButtonViewKt.SegmentedButtonContent$lambda$6(functionalComposableScope, props, onClick, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SegmentedButtonContent$lambda$5$lambda$4$lambda$3(Function1 function1, boolean z) {
        function1.invoke(new GenericEventPayload1(Boolean.valueOf(z)));
        return Unit.INSTANCE;
    }
}
