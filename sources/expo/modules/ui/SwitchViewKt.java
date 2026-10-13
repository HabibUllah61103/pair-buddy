package expo.modules.ui;

import androidx.compose.material3.SwitchDefaults;
import androidx.compose.material3.SwitchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SwitchView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"SwitchContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/SwitchProps;", "onCheckedChange", "Lkotlin/Function1;", "", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SwitchProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SwitchViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SwitchContent$lambda$1(FunctionalComposableScope functionalComposableScope, SwitchProps switchProps, Function1 function1, int i, Composer composer, int i2) {
        SwitchContent(functionalComposableScope, switchProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void SwitchContent(final FunctionalComposableScope functionalComposableScope, final SwitchProps props, final Function1<? super Boolean, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        long jM6068unboximpl;
        long jM6068unboximpl2;
        long jM6068unboximpl3;
        long jM6068unboximpl4;
        long jM6068unboximpl5;
        long jM6068unboximpl6;
        long jM6068unboximpl7;
        long jM6068unboximpl8;
        long jM6068unboximpl9;
        long jM6068unboximpl10;
        long jM6068unboximpl11;
        long jM6068unboximpl12;
        long jM6068unboximpl13;
        long jM6068unboximpl14;
        long jM6068unboximpl15;
        long jM6068unboximpl16;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(2013740342);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(SwitchContent)P(1)53@1910L83,64@2221L2252,50@1804L2673:SwitchView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2013740342, i3, -1, "expo.modules.ui.SwitchContent (SwitchView.kt:47)");
            }
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "thumbContent");
            boolean value = props.getValue();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            boolean enabled = props.getEnabled();
            composerStartRestartGroup.startReplaceGroup(-1825767212);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*56@2077L108");
            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView == null ? null : ComposableLambdaKt.rememberComposableLambda(-1203318188, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.SwitchViewKt$SwitchContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C:SwitchView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1203318188, i4, -1, "expo.modules.ui.SwitchContent.<anonymous>.<anonymous> (SwitchView.kt:57)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView;
                    composer2.startReplaceGroup(-1042574528);
                    ComposerKt.sourceInformation(composer2, "*59@2146L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            SwitchDefaults switchDefaults = SwitchDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getCheckedThumbColor());
            composerStartRestartGroup.startReplaceGroup(-1825761161);
            ComposerKt.sourceInformation(composerStartRestartGroup, "66@2326L8");
            if (composeOrNull != null) {
                jM6068unboximpl = composeOrNull.m6068unboximpl();
            } else {
                jM6068unboximpl = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getCheckedThumbColor();
            }
            long j = jM6068unboximpl;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getCheckedTrackColor());
            composerStartRestartGroup.startReplaceGroup(-1825757161);
            ComposerKt.sourceInformation(composerStartRestartGroup, "68@2451L8");
            if (composeOrNull2 != null) {
                jM6068unboximpl2 = composeOrNull2.m6068unboximpl();
            } else {
                jM6068unboximpl2 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getCheckedTrackColor();
            }
            long j2 = jM6068unboximpl2;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getColors().getCheckedBorderColor());
            composerStartRestartGroup.startReplaceGroup(-1825753127);
            ComposerKt.sourceInformation(composerStartRestartGroup, "70@2578L8");
            if (composeOrNull3 != null) {
                jM6068unboximpl3 = composeOrNull3.m6068unboximpl();
            } else {
                jM6068unboximpl3 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getCheckedBorderColor();
            }
            long j3 = jM6068unboximpl3;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(props.getColors().getCheckedIconColor());
            composerStartRestartGroup.startReplaceGroup(-1825749099);
            ComposerKt.sourceInformation(composerStartRestartGroup, "72@2702L8");
            if (composeOrNull4 != null) {
                jM6068unboximpl4 = composeOrNull4.m6068unboximpl();
            } else {
                jM6068unboximpl4 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getCheckedIconColor();
            }
            long j4 = jM6068unboximpl4;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull5 = UtilsKt.getComposeOrNull(props.getColors().getUncheckedThumbColor());
            composerStartRestartGroup.startReplaceGroup(-1825745093);
            ComposerKt.sourceInformation(composerStartRestartGroup, "74@2830L8");
            if (composeOrNull5 != null) {
                jM6068unboximpl5 = composeOrNull5.m6068unboximpl();
            } else {
                jM6068unboximpl5 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getUncheckedThumbColor();
            }
            long j5 = jM6068unboximpl5;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull6 = UtilsKt.getComposeOrNull(props.getColors().getUncheckedTrackColor());
            composerStartRestartGroup.startReplaceGroup(-1825740901);
            ComposerKt.sourceInformation(composerStartRestartGroup, "76@2961L8");
            if (composeOrNull6 != null) {
                jM6068unboximpl6 = composeOrNull6.m6068unboximpl();
            } else {
                jM6068unboximpl6 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getUncheckedTrackColor();
            }
            long j6 = jM6068unboximpl6;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull7 = UtilsKt.getComposeOrNull(props.getColors().getUncheckedBorderColor());
            composerStartRestartGroup.startReplaceGroup(-1825736675);
            ComposerKt.sourceInformation(composerStartRestartGroup, "78@3094L8");
            if (composeOrNull7 != null) {
                jM6068unboximpl7 = composeOrNull7.m6068unboximpl();
            } else {
                jM6068unboximpl7 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getUncheckedBorderColor();
            }
            long j7 = jM6068unboximpl7;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull8 = UtilsKt.getComposeOrNull(props.getColors().getUncheckedIconColor());
            composerStartRestartGroup.startReplaceGroup(-1825732455);
            ComposerKt.sourceInformation(composerStartRestartGroup, "80@3224L8");
            if (composeOrNull8 != null) {
                jM6068unboximpl8 = composeOrNull8.m6068unboximpl();
            } else {
                jM6068unboximpl8 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getUncheckedIconColor();
            }
            long j8 = jM6068unboximpl8;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull9 = UtilsKt.getComposeOrNull(props.getColors().getDisabledCheckedBorderColor());
            composerStartRestartGroup.startReplaceGroup(-1825728087);
            ComposerKt.sourceInformation(composerStartRestartGroup, "82@3368L8");
            if (composeOrNull9 != null) {
                jM6068unboximpl9 = composeOrNull9.m6068unboximpl();
            } else {
                jM6068unboximpl9 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledCheckedBorderColor();
            }
            long j9 = jM6068unboximpl9;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull10 = UtilsKt.getComposeOrNull(props.getColors().getDisabledCheckedThumbColor());
            composerStartRestartGroup.startReplaceGroup(-1825723257);
            ComposerKt.sourceInformation(composerStartRestartGroup, "84@3518L8");
            if (composeOrNull10 != null) {
                jM6068unboximpl10 = composeOrNull10.m6068unboximpl();
            } else {
                jM6068unboximpl10 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledCheckedThumbColor();
            }
            long j10 = jM6068unboximpl10;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull11 = UtilsKt.getComposeOrNull(props.getColors().getDisabledCheckedTrackColor());
            composerStartRestartGroup.startReplaceGroup(-1825718489);
            ComposerKt.sourceInformation(composerStartRestartGroup, "86@3667L8");
            if (composeOrNull11 != null) {
                jM6068unboximpl11 = composeOrNull11.m6068unboximpl();
            } else {
                jM6068unboximpl11 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledCheckedTrackColor();
            }
            long j11 = jM6068unboximpl11;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull12 = UtilsKt.getComposeOrNull(props.getColors().getDisabledCheckedIconColor());
            composerStartRestartGroup.startReplaceGroup(-1825713755);
            ComposerKt.sourceInformation(composerStartRestartGroup, "88@3814L8");
            if (composeOrNull12 != null) {
                jM6068unboximpl12 = composeOrNull12.m6068unboximpl();
            } else {
                jM6068unboximpl12 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledCheckedIconColor();
            }
            long j12 = jM6068unboximpl12;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull13 = UtilsKt.getComposeOrNull(props.getColors().getDisabledUncheckedBorderColor());
            composerStartRestartGroup.startReplaceGroup(-1825708947);
            ComposerKt.sourceInformation(composerStartRestartGroup, "90@3968L8");
            if (composeOrNull13 != null) {
                jM6068unboximpl13 = composeOrNull13.m6068unboximpl();
            } else {
                jM6068unboximpl13 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledUncheckedBorderColor();
            }
            long j13 = jM6068unboximpl13;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull14 = UtilsKt.getComposeOrNull(props.getColors().getDisabledUncheckedThumbColor());
            composerStartRestartGroup.startReplaceGroup(-1825703925);
            ComposerKt.sourceInformation(composerStartRestartGroup, "92@4124L8");
            if (composeOrNull14 != null) {
                jM6068unboximpl14 = composeOrNull14.m6068unboximpl();
            } else {
                jM6068unboximpl14 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledUncheckedThumbColor();
            }
            long j14 = jM6068unboximpl14;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull15 = UtilsKt.getComposeOrNull(props.getColors().getDisabledUncheckedTrackColor());
            composerStartRestartGroup.startReplaceGroup(-1825698965);
            ComposerKt.sourceInformation(composerStartRestartGroup, "94@4279L8");
            if (composeOrNull15 != null) {
                jM6068unboximpl15 = composeOrNull15.m6068unboximpl();
            } else {
                jM6068unboximpl15 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledUncheckedTrackColor();
            }
            long j15 = jM6068unboximpl15;
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull16 = UtilsKt.getComposeOrNull(props.getColors().getDisabledUncheckedIconColor());
            composerStartRestartGroup.startReplaceGroup(-1825694039);
            ComposerKt.sourceInformation(composerStartRestartGroup, "96@4432L8");
            if (composeOrNull16 != null) {
                jM6068unboximpl16 = composeOrNull16.m6068unboximpl();
            } else {
                jM6068unboximpl16 = SwitchDefaults.INSTANCE.colors(composerStartRestartGroup, SwitchDefaults.$stable).getDisabledUncheckedIconColor();
            }
            composerStartRestartGroup.endReplaceGroup();
            SwitchKt.Switch(value, onCheckedChange, modifierApplyModifiers, composableLambdaRememberComposableLambda, enabled, switchDefaults.m3602colorsV1nXRL4(j, j2, j3, j4, j5, j6, j7, j8, j10, j11, j9, j12, j14, j15, j13, jM6068unboximpl16, composerStartRestartGroup, 0, SwitchDefaults.$stable << 18, 0), null, composerStartRestartGroup, (i3 >> 3) & 112, 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.SwitchViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SwitchViewKt.SwitchContent$lambda$1(functionalComposableScope, props, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
