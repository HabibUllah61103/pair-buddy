package expo.modules.ui;

import androidx.compose.material3.AlertDialogDefaults;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AlertDialogView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"AlertDialogContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/AlertDialogProps;", "onDismissRequest", "Lkotlin/Function0;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AlertDialogProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AlertDialogViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AlertDialogContent$lambda$6(FunctionalComposableScope functionalComposableScope, AlertDialogProps alertDialogProps, Function0 function0, int i, Composer composer, int i2) {
        AlertDialogContent(functionalComposableScope, alertDialogProps, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void AlertDialogContent(final FunctionalComposableScope functionalComposableScope, final AlertDialogProps props, final Function0<Unit> onDismissRequest, Composer composer, final int i) {
        int i2;
        long jM6068unboximpl;
        long jM6068unboximpl2;
        long jM6068unboximpl3;
        long jM6068unboximpl4;
        float fM1962getTonalElevationD9Ej5fM;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Composer composerStartRestartGroup = composer.startRestartGroup(790970353);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(AlertDialogContent)P(1)50@1791L83,46@1664L22,47@1708L49,45@1628L1385:AlertDialogView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDismissRequest) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(790970353, i3, -1, "expo.modules.ui.AlertDialogContent (AlertDialogView.kt:38)");
            }
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "title");
            final SlotView slotViewFindChildSlotView2 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "text");
            final SlotView slotViewFindChildSlotView3 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "confirmButton");
            final SlotView slotViewFindChildSlotView4 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "dismissButton");
            final SlotView slotViewFindChildSlotView5 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "icon");
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            composerStartRestartGroup.startReplaceGroup(-86679050);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*52@1931L19");
            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView4 == null ? null : ComposableLambdaKt.rememberComposableLambda(-360490510, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.AlertDialogViewKt$AlertDialogContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C52@1936L12:AlertDialogView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-360490510, i4, -1, "expo.modules.ui.AlertDialogContent.<anonymous>.<anonymous> (AlertDialogView.kt:52)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView4, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-86676938);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*55@1997L19");
            ComposableLambda composableLambdaRememberComposableLambda2 = slotViewFindChildSlotView == null ? null : ComposableLambdaKt.rememberComposableLambda(-978804267, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.AlertDialogViewKt$AlertDialogContent$2$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C55@2002L12:AlertDialogView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-978804267, i4, -1, "expo.modules.ui.AlertDialogContent.<anonymous>.<anonymous> (AlertDialogView.kt:55)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-86674890);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*58@2061L19");
            ComposableLambda composableLambdaRememberComposableLambda3 = slotViewFindChildSlotView2 == null ? null : ComposableLambdaKt.rememberComposableLambda(22481447, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.AlertDialogViewKt$AlertDialogContent$3$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C58@2066L12:AlertDialogView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(22481447, i4, -1, "expo.modules.ui.AlertDialogContent.<anonymous>.<anonymous> (AlertDialogView.kt:58)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView2, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-86672842);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*61@2125L19");
            ComposableLambda composableLambdaRememberComposableLambda4 = slotViewFindChildSlotView5 != null ? ComposableLambdaKt.rememberComposableLambda(-1944065508, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.AlertDialogViewKt$AlertDialogContent$4$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C61@2130L12:AlertDialogView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944065508, i4, -1, "expo.modules.ui.AlertDialogContent.<anonymous>.<anonymous> (AlertDialogView.kt:61)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView5, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54) : null;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            composerStartRestartGroup.startReplaceGroup(-86670874);
            ComposerKt.sourceInformation(composerStartRestartGroup, "64@2244L14");
            if (composeOrNull != null) {
                jM6068unboximpl = composeOrNull.m6068unboximpl();
            } else {
                jM6068unboximpl = AlertDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, AlertDialogDefaults.$stable);
            }
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getIconContentColor());
            composerStartRestartGroup.startReplaceGroup(-86667350);
            ComposerKt.sourceInformation(composerStartRestartGroup, "66@2356L16");
            if (composeOrNull2 != null) {
                jM6068unboximpl2 = composeOrNull2.m6068unboximpl();
            } else {
                jM6068unboximpl2 = AlertDialogDefaults.INSTANCE.getIconContentColor(composerStartRestartGroup, AlertDialogDefaults.$stable);
            }
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getColors().getTitleContentColor());
            composerStartRestartGroup.startReplaceGroup(-86663668);
            ComposerKt.sourceInformation(composerStartRestartGroup, "68@2472L17");
            if (composeOrNull3 != null) {
                jM6068unboximpl3 = composeOrNull3.m6068unboximpl();
            } else {
                jM6068unboximpl3 = AlertDialogDefaults.INSTANCE.getTitleContentColor(composerStartRestartGroup, AlertDialogDefaults.$stable);
            }
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(props.getColors().getTextContentColor());
            composerStartRestartGroup.startReplaceGroup(-86659958);
            ComposerKt.sourceInformation(composerStartRestartGroup, "70@2587L16");
            if (composeOrNull4 != null) {
                jM6068unboximpl4 = composeOrNull4.m6068unboximpl();
            } else {
                jM6068unboximpl4 = AlertDialogDefaults.INSTANCE.getTextContentColor(composerStartRestartGroup, AlertDialogDefaults.$stable);
            }
            composerStartRestartGroup.endReplaceGroup();
            Double tonalElevation = props.getTonalElevation();
            if (tonalElevation == null) {
                fM1962getTonalElevationD9Ej5fM = AlertDialogDefaults.INSTANCE.m1962getTonalElevationD9Ej5fM();
            } else {
                fM1962getTonalElevationD9Ej5fM = Dp.m8892constructorimpl((float) tonalElevation.doubleValue());
            }
            DialogProperties dialogProperties = new DialogProperties(props.getProperties().getDismissOnBackPress(), props.getProperties().getDismissOnClickOutside(), null, props.getProperties().getUsePlatformDefaultWidth(), props.getProperties().getDecorFitsSystemWindows(), null, 36, null);
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):AlertDialogView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.AlertDialogViewKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AlertDialogViewKt.AlertDialogContent$lambda$5$lambda$4(onDismissRequest);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            AndroidAlertDialog_androidKt.m1976AlertDialogOix01E0((Function0) objRememberedValue, ComposableLambdaKt.rememberComposableLambda(636702777, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.AlertDialogViewKt.AlertDialogContent.6
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C48@1739L12:AlertDialogView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(636702777, i4, -1, "expo.modules.ui.AlertDialogContent.<anonymous> (AlertDialogView.kt:48)");
                    }
                    SlotView slotView = slotViewFindChildSlotView3;
                    if (slotView != null) {
                        SlotViewKt.renderSlot(slotView, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), modifierApplyModifiers, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, null, jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, jM6068unboximpl4, fM1962getTonalElevationD9Ej5fM, dialogProperties, composerStartRestartGroup, 48, 0, 128);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.AlertDialogViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AlertDialogViewKt.AlertDialogContent$lambda$6(functionalComposableScope, props, onDismissRequest, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AlertDialogContent$lambda$5$lambda$4(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }
}
