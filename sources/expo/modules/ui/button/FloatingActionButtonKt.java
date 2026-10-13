package expo.modules.ui.button;

import android.graphics.Color;
import androidx.compose.material3.FloatingActionButtonDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.ModifierRegistry;
import expo.modules.ui.SlotView;
import expo.modules.ui.SlotViewKt;
import expo.modules.ui.UtilsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FloatingActionButton.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"FloatingActionButtonContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/button/FloatingActionButtonProps;", ViewProps.ON_CLICK, "Lkotlin/Function0;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/FloatingActionButtonProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FloatingActionButtonKt {

    /* JADX INFO: compiled from: FloatingActionButton.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FloatingActionButtonVariant.values().length];
            try {
                iArr[FloatingActionButtonVariant.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FloatingActionButtonVariant.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FloatingActionButtonVariant.EXTENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FloatingActionButtonVariant.MEDIUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FloatingActionButtonContent$lambda$2(FunctionalComposableScope functionalComposableScope, FloatingActionButtonProps floatingActionButtonProps, Function0 function0, int i, Composer composer, int i2) {
        FloatingActionButtonContent(functionalComposableScope, floatingActionButtonProps, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void FloatingActionButtonContent(final FunctionalComposableScope functionalComposableScope, final FloatingActionButtonProps props, Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        final Function0<Unit> onClick = function0;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1829926430);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FloatingActionButtonContent)P(1)38@1425L83:FloatingActionButton.kt#kazlex");
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
        int i3 = i2;
        if ((i3 & 147) == 146 && composerStartRestartGroup.getSkipping()) {
            composerStartRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1829926430, i3, -1, "expo.modules.ui.button.FloatingActionButtonContent (FloatingActionButton.kt:36)");
            }
            Color containerColor = props.getContainerColor();
            androidx.compose.ui.graphics.Color colorM6048boximpl = containerColor != null ? androidx.compose.ui.graphics.Color.m6048boximpl(UtilsKt.getCompose(containerColor)) : null;
            composerStartRestartGroup.startReplaceGroup(-1917670098);
            ComposerKt.sourceInformation(composerStartRestartGroup, "37@1376L14");
            long containerColor2 = colorM6048boximpl == null ? FloatingActionButtonDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, FloatingActionButtonDefaults.$stable) : colorM6048boximpl.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "icon");
            composerStartRestartGroup.startReplaceGroup(-1917660176);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*42@1633L96");
            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView == null ? null : ComposableLambdaKt.rememberComposableLambda(-1754245384, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.FloatingActionButtonKt$FloatingActionButtonContent$iconContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C:FloatingActionButton.kt#kazlex");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1754245384, i4, -1, "expo.modules.ui.button.FloatingActionButtonContent.<anonymous>.<anonymous> (FloatingActionButton.kt:43)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView;
                    composer2.startReplaceGroup(2092334688);
                    ComposerKt.sourceInformation(composer2, "*45@1696L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            if (composableLambdaRememberComposableLambda == null) {
                composableLambdaRememberComposableLambda = ComposableSingletons$FloatingActionButtonKt.INSTANCE.getLambda$2023503970$expo_ui_release();
            }
            int i4 = WhenMappings.$EnumSwitchMapping$0[props.getVariant().ordinal()];
            if (i4 == 1) {
                composerStartRestartGroup.startReplaceGroup(-1917654247);
                ComposerKt.sourceInformation(composerStartRestartGroup, "52@1807L151");
                onClick = function0;
                androidx.compose.material3.FloatingActionButtonKt.m2650SmallFloatingActionButtonXz6DiA(onClick, modifierApplyModifiers, null, containerColor2, 0L, null, null, composableLambdaRememberComposableLambda, composerStartRestartGroup, (i3 >> 6) & 14, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID);
                composerStartRestartGroup.endReplaceGroup();
            } else if (i4 != 2) {
                if (i4 == 3) {
                    Function2<Composer, Integer, Unit> function2 = composableLambdaRememberComposableLambda;
                    composerStartRestartGroup.startReplaceGroup(682657444);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "75@2474L224");
                    final SlotView slotViewFindChildSlotView2 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "text");
                    composerStartRestartGroup.startReplaceGroup(-1917637872);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "*67@2333L120");
                    ComposableLambda composableLambdaRememberComposableLambda2 = slotViewFindChildSlotView2 != null ? ComposableLambdaKt.rememberComposableLambda(-880721783, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.FloatingActionButtonKt$FloatingActionButtonContent$textContent$1$1
                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer2, int i5) {
                            ComposerKt.sourceInformation(composer2, "C:FloatingActionButton.kt#kazlex");
                            if ((i5 & 3) == 2 && composer2.getSkipping()) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-880721783, i5, -1, "expo.modules.ui.button.FloatingActionButtonContent.<anonymous>.<anonymous> (FloatingActionButton.kt:68)");
                            }
                            ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                            SlotView slotView = slotViewFindChildSlotView2;
                            composer2.startReplaceGroup(-265074503);
                            ComposerKt.sourceInformation(composer2, "*70@2408L9");
                            slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                            composer2.endReplaceGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, composerStartRestartGroup, 54) : null;
                    composerStartRestartGroup.endReplaceGroup();
                    if (composableLambdaRememberComposableLambda2 == null) {
                        composableLambdaRememberComposableLambda2 = ComposableSingletons$FloatingActionButtonKt.INSTANCE.getLambda$84818774$expo_ui_release();
                    }
                    androidx.compose.material3.FloatingActionButtonKt.m2637ExtendedFloatingActionButtonElI57k(composableLambdaRememberComposableLambda2, function2, function0, modifierApplyModifiers, props.getExpanded(), null, containerColor2, 0L, null, null, composerStartRestartGroup, i3 & 896, 928);
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    if (i4 != 4) {
                        composerStartRestartGroup.startReplaceGroup(-1917655292);
                        composerStartRestartGroup.endReplaceGroup();
                        throw new NoWhenBranchMatchedException();
                    }
                    composerStartRestartGroup.startReplaceGroup(-1917624172);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "84@2747L146");
                    androidx.compose.material3.FloatingActionButtonKt.m2640FloatingActionButtonXz6DiA(onClick, modifierApplyModifiers, null, containerColor2, 0L, null, null, composableLambdaRememberComposableLambda, composerStartRestartGroup, (i3 >> 6) & 14, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID);
                    composerStartRestartGroup.endReplaceGroup();
                }
                onClick = function0;
            } else {
                composerStartRestartGroup.startReplaceGroup(-1917648071);
                ComposerKt.sourceInformation(composerStartRestartGroup, "58@2000L151");
                onClick = function0;
                androidx.compose.material3.FloatingActionButtonKt.m2644LargeFloatingActionButtonXz6DiA(onClick, modifierApplyModifiers, null, containerColor2, 0L, null, null, composableLambdaRememberComposableLambda, composerStartRestartGroup, (i3 >> 6) & 14, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.FloatingActionButtonKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return FloatingActionButtonKt.FloatingActionButtonContent$lambda$2(functionalComposableScope, props, onClick, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
