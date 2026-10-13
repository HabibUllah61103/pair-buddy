package expo.modules.ui;

import androidx.compose.material3.ListItemDefaults;
import androidx.compose.material3.ListItemKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ListItemView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"ListItemContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/ListItemProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ListItemProps;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ListItemViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ListItemContent$lambda$4(FunctionalComposableScope functionalComposableScope, ListItemProps listItemProps, int i, Composer composer, int i2) {
        ListItemContent(functionalComposableScope, listItemProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void ListItemContent(final FunctionalComposableScope functionalComposableScope, final ListItemProps props, Composer composer, final int i) {
        int i2;
        float fM2917getElevationD9Ej5fM;
        float fM2917getElevationD9Ej5fM2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1333864526);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ListItemContent)32@1146L83,34@1270L8,35@1311L697,57@2387L122,56@2355L946:ListItemView.kt#v15e7d");
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
                ComposerKt.traceEventStart(-1333864526, i2, -1, "expo.modules.ui.ListItemContent (ListItemView.kt:31)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            androidx.compose.material3.ListItemColors listItemColorsColors = ListItemDefaults.INSTANCE.colors(composerStartRestartGroup, ListItemDefaults.$stable);
            ListItemDefaults listItemDefaults = ListItemDefaults.INSTANCE;
            ListItemColors colors = props.getColors();
            Color composeOrNull = UtilsKt.getComposeOrNull(colors != null ? colors.getContainerColor() : null);
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : listItemColorsColors.getContainerColor();
            ListItemColors colors2 = props.getColors();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(colors2 != null ? colors2.getContentColor() : null);
            long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : listItemColorsColors.getContentColor();
            ListItemColors colors3 = props.getColors();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(colors3 != null ? colors3.getLeadingContentColor() : null);
            long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : listItemColorsColors.getLeadingContentColor();
            ListItemColors colors4 = props.getColors();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(colors4 != null ? colors4.getTrailingContentColor() : null);
            long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : listItemColorsColors.getTrailingContentColor();
            ListItemColors colors5 = props.getColors();
            Color composeOrNull5 = UtilsKt.getComposeOrNull(colors5 != null ? colors5.getSupportingContentColor() : null);
            long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : listItemColorsColors.getSupportingContentColor();
            ListItemColors colors6 = props.getColors();
            Color composeOrNull6 = UtilsKt.getComposeOrNull(colors6 != null ? colors6.getOverlineContentColor() : null);
            androidx.compose.material3.ListItemColors listItemColorsM2915colorsLIdIuno = listItemDefaults.m2915colorsLIdIuno(jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, jM6068unboximpl4, composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : listItemColorsColors.m2897getOverlineContentColor0d7_KjU(), jM6068unboximpl5, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerStartRestartGroup, 0, 0, ListItemDefaults.$stable << 12, 16777152);
            composerStartRestartGroup = composerStartRestartGroup;
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "headlineContent");
            final SlotView slotViewFindChildSlotView2 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "overlineContent");
            final SlotView slotViewFindChildSlotView3 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "supportingContent");
            final SlotView slotViewFindChildSlotView4 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "leadingContent");
            final SlotView slotViewFindChildSlotView5 = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "trailingContent");
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1634643600, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ListItemViewKt.ListItemContent.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    ComposerKt.sourceInformation(composer2, "C:ListItemView.kt#v15e7d");
                    if ((i3 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1634643600, i3, -1, "expo.modules.ui.ListItemContent.<anonymous> (ListItemView.kt:58)");
                    }
                    SlotView slotView = slotViewFindChildSlotView;
                    if (slotView != null) {
                        composer2.startReplaceGroup(-1065529388);
                        ComposerKt.sourceInformation(composer2, "");
                        ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                        composer2.startReplaceGroup(-1065528282);
                        ComposerKt.sourceInformation(composer2, "*60@2474L9");
                        slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                        composer2.endReplaceGroup();
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.startReplaceGroup(-1943505702);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*66@2588L86");
            ComposableLambda composableLambdaRememberComposableLambda2 = slotViewFindChildSlotView2 == null ? null : ComposableLambdaKt.rememberComposableLambda(678565717, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ListItemViewKt$ListItemContent$2$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    ComposerKt.sourceInformation(composer2, "C:ListItemView.kt#v15e7d");
                    if ((i3 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(678565717, i3, -1, "expo.modules.ui.ListItemContent.<anonymous>.<anonymous> (ListItemView.kt:67)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView2;
                    composer2.startReplaceGroup(-733373461);
                    ComposerKt.sourceInformation(composer2, "*68@2645L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1943500902);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*73@2738L86");
            ComposableLambda composableLambdaRememberComposableLambda3 = slotViewFindChildSlotView3 == null ? null : ComposableLambdaKt.rememberComposableLambda(-1224894378, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ListItemViewKt$ListItemContent$3$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    ComposerKt.sourceInformation(composer2, "C:ListItemView.kt#v15e7d");
                    if ((i3 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1224894378, i3, -1, "expo.modules.ui.ListItemContent.<anonymous>.<anonymous> (ListItemView.kt:74)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView3;
                    composer2.startReplaceGroup(-302456660);
                    ComposerKt.sourceInformation(composer2, "*75@2795L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1943496294);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*80@2882L86");
            ComposableLambda composableLambdaRememberComposableLambda4 = slotViewFindChildSlotView4 == null ? null : ComposableLambdaKt.rememberComposableLambda(1166612823, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ListItemViewKt$ListItemContent$4$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    ComposerKt.sourceInformation(composer2, "C:ListItemView.kt#v15e7d");
                    if ((i3 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1166612823, i3, -1, "expo.modules.ui.ListItemContent.<anonymous>.<anonymous> (ListItemView.kt:81)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView4;
                    composer2.startReplaceGroup(128460141);
                    ComposerKt.sourceInformation(composer2, "*82@2939L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1943491622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*87@3028L86");
            ComposableLambda composableLambdaRememberComposableLambda5 = slotViewFindChildSlotView5 != null ? ComposableLambdaKt.rememberComposableLambda(-736847272, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ListItemViewKt$ListItemContent$5$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    ComposerKt.sourceInformation(composer2, "C:ListItemView.kt#v15e7d");
                    if ((i3 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-736847272, i3, -1, "expo.modules.ui.ListItemContent.<anonymous>.<anonymous> (ListItemView.kt:88)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView5;
                    composer2.startReplaceGroup(559376942);
                    ComposerKt.sourceInformation(composer2, "*89@3085L9");
                    slotView.Content(composableScope, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54) : null;
            composerStartRestartGroup.endReplaceGroup();
            Float tonalElevation = props.getTonalElevation();
            if (tonalElevation == null) {
                fM2917getElevationD9Ej5fM = ListItemDefaults.INSTANCE.m2917getElevationD9Ej5fM();
            } else {
                fM2917getElevationD9Ej5fM = Dp.m8892constructorimpl(tonalElevation.floatValue());
            }
            float f = fM2917getElevationD9Ej5fM;
            Float shadowElevation = props.getShadowElevation();
            if (shadowElevation == null) {
                fM2917getElevationD9Ej5fM2 = ListItemDefaults.INSTANCE.m2917getElevationD9Ej5fM();
            } else {
                fM2917getElevationD9Ej5fM2 = Dp.m8892constructorimpl(shadowElevation.floatValue());
            }
            float f2 = fM2917getElevationD9Ej5fM2;
            ListItemKt.m2941ListItemHXNGIdc(composableLambdaRememberComposableLambda, modifierApplyModifiers, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda5, listItemColorsM2915colorsLIdIuno, f, f2, composerStartRestartGroup, 6, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ListItemViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListItemViewKt.ListItemContent$lambda$4(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
