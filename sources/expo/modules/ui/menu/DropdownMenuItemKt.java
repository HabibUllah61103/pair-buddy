package expo.modules.ui.menu;

import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.MenuDefaults;
import androidx.compose.material3.MenuItemColors;
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
import expo.modules.ui.ModifierRegistry;
import expo.modules.ui.SlotView;
import expo.modules.ui.SlotViewKt;
import expo.modules.ui.UtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DropdownMenuItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"DropdownMenuItemContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/menu/DropdownMenuItemProps;", "onItemPressed", "Lkotlin/Function0;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuItemProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DropdownMenuItemKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DropdownMenuItemContent$lambda$4(FunctionalComposableScope functionalComposableScope, DropdownMenuItemProps dropdownMenuItemProps, Function0 function0, int i, Composer composer, int i2) {
        DropdownMenuItemContent(functionalComposableScope, dropdownMenuItemProps, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void DropdownMenuItemContent(final FunctionalComposableScope functionalComposableScope, final DropdownMenuItemProps props, Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        final Function0<Unit> onItemPressed = function0;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onItemPressed, "onItemPressed");
        Composer composerStartRestartGroup = composer.startRestartGroup(1769408522);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(DropdownMenuItemContent)P(1)41@1500L12,46@1692L83,47@1803L640,44@1545L84,61@2679L29,43@1516L1196:DropdownMenuItem.kt#xj3gtm");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onItemPressed) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1769408522, i3, -1, "expo.modules.ui.menu.DropdownMenuItemContent (DropdownMenuItem.kt:35)");
            }
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "text");
            final SlotView slotViewFindChildSlotView2 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "leadingIcon");
            final SlotView slotViewFindChildSlotView3 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "trailingIcon");
            DropdownMenuItemColors elementColors = props.getElementColors();
            MenuItemColors menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, MenuDefaults.$stable);
            boolean enabled = props.getEnabled();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            MenuDefaults menuDefaults = MenuDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(elementColors.getTextColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : menuItemColorsItemColors.getTextColor();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(elementColors.getLeadingIconColor());
            long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : menuItemColorsItemColors.getLeadingIconColor();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(elementColors.getTrailingIconColor());
            long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : menuItemColorsItemColors.getTrailingIconColor();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(elementColors.getDisabledTextColor());
            long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : menuItemColorsItemColors.getDisabledTextColor();
            Color composeOrNull5 = UtilsKt.getComposeOrNull(elementColors.getDisabledLeadingIconColor());
            long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : menuItemColorsItemColors.getDisabledLeadingIconColor();
            Color composeOrNull6 = UtilsKt.getComposeOrNull(elementColors.getDisabledTrailingIconColor());
            MenuItemColors menuItemColorsM3001itemColors5tl4gsc = menuDefaults.m3001itemColors5tl4gsc(jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, jM6068unboximpl4, jM6068unboximpl5, composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : menuItemColorsItemColors.getDisabledTrailingIconColor(), composerStartRestartGroup, MenuDefaults.$stable << 18, 0);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.startReplaceGroup(-405415886);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*56@2492L54");
            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView2 == null ? null : ComposableLambdaKt.rememberComposableLambda(174601768, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.DropdownMenuItemKt$DropdownMenuItemContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C:DropdownMenuItem.kt#xj3gtm");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(174601768, i4, -1, "expo.modules.ui.menu.DropdownMenuItemContent.<anonymous>.<anonymous> (DropdownMenuItem.kt:56)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView2;
                    composer2.startReplaceGroup(288575422);
                    ComposerKt.sourceInformation(composer2, "*56@2531L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-405412334);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*59@2603L54");
            ComposableLambda composableLambdaRememberComposableLambda2 = slotViewFindChildSlotView3 != null ? ComposableLambdaKt.rememberComposableLambda(2042261751, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.DropdownMenuItemKt$DropdownMenuItemContent$2$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C:DropdownMenuItem.kt#xj3gtm");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2042261751, i4, -1, "expo.modules.ui.menu.DropdownMenuItemContent.<anonymous>.<anonymous> (DropdownMenuItem.kt:59)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView3;
                    composer2.startReplaceGroup(-186510643);
                    ComposerKt.sourceInformation(composer2, "*59@2642L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54) : null;
            composerStartRestartGroup.endReplaceGroup();
            ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-365373894, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.DropdownMenuItemKt.DropdownMenuItemContent.3
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C:DropdownMenuItem.kt#xj3gtm");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-365373894, i4, -1, "expo.modules.ui.menu.DropdownMenuItemContent.<anonymous> (DropdownMenuItem.kt:44)");
                    }
                    SlotView slotView = slotViewFindChildSlotView;
                    if (slotView != null) {
                        composer2.startReplaceGroup(1063006892);
                        ComposerKt.sourceInformation(composer2, "");
                        ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                        composer2.startReplaceGroup(1063007696);
                        ComposerKt.sourceInformation(composer2, "*44@1604L9");
                        slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                        composer2.endReplaceGroup();
                        composer2.endReplaceGroup();
                        Unit unit = Unit.INSTANCE;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DropdownMenuItem.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                onItemPressed = function0;
                objRememberedValue = new Function0() { // from class: expo.modules.ui.menu.DropdownMenuItemKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DropdownMenuItemKt.DropdownMenuItemContent$lambda$3$lambda$2(onItemPressed);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                onItemPressed = function0;
            }
            composerStartRestartGroup.endReplaceGroup();
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda3, (Function0) objRememberedValue, modifierApplyModifiers, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, enabled, menuItemColorsM3001itemColors5tl4gsc, null, null, composerStartRestartGroup, 6, 384);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.menu.DropdownMenuItemKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DropdownMenuItemKt.DropdownMenuItemContent$lambda$4(functionalComposableScope, props, onItemPressed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DropdownMenuItemContent$lambda$3$lambda$2(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }
}
