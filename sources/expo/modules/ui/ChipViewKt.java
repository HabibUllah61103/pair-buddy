package expo.modules.ui;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.AssistChipDefaults;
import androidx.compose.material3.ChipColors;
import androidx.compose.material3.ChipElevation;
import androidx.compose.material3.ChipKt;
import androidx.compose.material3.FilterChipDefaults;
import androidx.compose.material3.InputChipDefaults;
import androidx.compose.material3.SelectableChipColors;
import androidx.compose.material3.SelectableChipElevation;
import androidx.compose.material3.SuggestionChipDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
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

/* JADX INFO: compiled from: ChipView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a&\u0010\u0000\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001¢\u0006\u0002\b\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010\u0007\u001a-\u0010\b\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00020\fH\u0007¢\u0006\u0002\u0010\u000e\u001a-\u0010\u000f\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\t\u001a\u00020\u00102\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00020\fH\u0007¢\u0006\u0002\u0010\u0011\u001a-\u0010\u0012\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\t\u001a\u00020\u00132\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00020\fH\u0007¢\u0006\u0002\u0010\u0014\u001a-\u0010\u0015\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\t\u001a\u00020\u00162\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00020\fH\u0007¢\u0006\u0002\u0010\u0017¨\u0006\u0018"}, d2 = {"slotContent", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "slotName", "", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Ljava/lang/String;)Lkotlin/jvm/functions/Function2;", "AssistChipContent", "props", "Lexpo/modules/ui/AssistChipProps;", "onPress", "Lkotlin/Function1;", "Lexpo/modules/ui/ChipPressedEvent;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/AssistChipProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "FilterChipContent", "Lexpo/modules/ui/FilterChipProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/FilterChipProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "InputChipContent", "Lexpo/modules/ui/InputChipProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/InputChipProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "SuggestionChipContent", "Lexpo/modules/ui/SuggestionChipProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SuggestionChipProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ChipViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AssistChipContent$lambda$3(FunctionalComposableScope functionalComposableScope, AssistChipProps assistChipProps, Function1 function1, int i, Composer composer, int i2) {
        AssistChipContent(functionalComposableScope, assistChipProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilterChipContent$lambda$6(FunctionalComposableScope functionalComposableScope, FilterChipProps filterChipProps, Function1 function1, int i, Composer composer, int i2) {
        FilterChipContent(functionalComposableScope, filterChipProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit InputChipContent$lambda$9(FunctionalComposableScope functionalComposableScope, InputChipProps inputChipProps, Function1 function1, int i, Composer composer, int i2) {
        InputChipContent(functionalComposableScope, inputChipProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SuggestionChipContent$lambda$12(FunctionalComposableScope functionalComposableScope, SuggestionChipProps suggestionChipProps, Function1 function1, int i, Composer composer, int i2) {
        SuggestionChipContent(functionalComposableScope, suggestionChipProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    private static final Function2<Composer, Integer, Unit> slotContent(FunctionalComposableScope functionalComposableScope, String str) {
        final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), str);
        if (slotViewFindChildSlotView != null) {
            return ComposableLambdaKt.composableLambdaInstance(-672806421, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ChipViewKt$slotContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    ComposerKt.sourceInformation(composer, "C:ChipView.kt#v15e7d");
                    if ((i & 3) == 2 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-672806421, i, -1, "expo.modules.ui.slotContent.<anonymous>.<anonymous> (ChipView.kt:67)");
                    }
                    ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
                    SlotView slotView = slotViewFindChildSlotView;
                    composer.startReplaceGroup(1973092505);
                    ComposerKt.sourceInformation(composer, "*69@2510L9");
                    slotView.Content(composableScope, composer, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                    composer.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            });
        }
        return null;
    }

    public static final void AssistChipContent(final FunctionalComposableScope functionalComposableScope, final AssistChipProps props, final Function1<? super ChipPressedEvent, Unit> onPress, Composer composer, final int i) {
        int i2;
        ChipElevation chipElevationM2044assistChipElevationaqJV_2Y;
        BorderStroke borderStrokeM2042assistChipBorderh1eTWw;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onPress, "onPress");
        Composer composerStartRestartGroup = composer.startRestartGroup(-814404900);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(AssistChipContent)P(1)91@2976L83,93@3095L418,118@4116L31,117@4090L318:ChipView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onPress) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-814404900, i3, -1, "expo.modules.ui.AssistChipContent (ChipView.kt:90)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            AssistChipDefaults assistChipDefaults = AssistChipDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getLabelColor());
            long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getColors().getLeadingIconContentColor());
            long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(props.getColors().getTrailingIconContentColor());
            ChipColors chipColorsM2043assistChipColorsoq7We08 = assistChipDefaults.m2043assistChipColorsoq7We08(jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU(), 0L, 0L, 0L, 0L, composerStartRestartGroup, AssistChipDefaults.$stable << 24, PsExtractor.VIDEO_STREAM_MASK);
            if (props.getElevation() != null) {
                composerStartRestartGroup.startReplaceGroup(334624694);
                ComposerKt.sourceInformation(composerStartRestartGroup, "101@3587L51");
                chipElevationM2044assistChipElevationaqJV_2Y = AssistChipDefaults.INSTANCE.m2044assistChipElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, AssistChipDefaults.$stable << 18, 62);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(334709076);
                ComposerKt.sourceInformation(composerStartRestartGroup, "103@3673L21");
                chipElevationM2044assistChipElevationaqJV_2Y = AssistChipDefaults.INSTANCE.m2044assistChipElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, AssistChipDefaults.$stable << 18, 63);
                composerStartRestartGroup.endReplaceGroup();
            }
            ChipElevation chipElevation = chipElevationM2044assistChipElevationaqJV_2Y;
            if (props.getBorder() != null) {
                composerStartRestartGroup.startReplaceGroup(334808121);
                ComposerKt.sourceInformation(composerStartRestartGroup, "111@3922L78");
                Color composeOrNull5 = UtilsKt.getComposeOrNull(props.getBorder().getColor());
                if (composeOrNull5 != null) {
                    borderStrokeM2042assistChipBorderh1eTWw = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(props.getBorder().getWidth()), composeOrNull5.m6068unboximpl());
                } else {
                    borderStrokeM2042assistChipBorderh1eTWw = AssistChipDefaults.INSTANCE.m2042assistChipBorderh1eTWw(props.getEnabled(), 0L, 0L, Dp.m8892constructorimpl(props.getBorder().getWidth()), composerStartRestartGroup, AssistChipDefaults.$stable << 12, 6);
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(335074752);
                ComposerKt.sourceInformation(composerStartRestartGroup, "114@4041L41");
                borderStrokeM2042assistChipBorderh1eTWw = AssistChipDefaults.INSTANCE.m2042assistChipBorderh1eTWw(props.getEnabled(), 0L, 0L, 0.0f, composerStartRestartGroup, AssistChipDefaults.$stable << 12, 14);
                composerStartRestartGroup.endReplaceGroup();
            }
            BorderStroke borderStroke = borderStrokeM2042assistChipBorderh1eTWw;
            Function2<Composer, Integer, Unit> function2SlotContent = slotContent(functionalComposableScope, "label");
            if (function2SlotContent == null) {
                function2SlotContent = ComposableSingletons$ChipViewKt.INSTANCE.getLambda$778385937$expo_ui_release();
            }
            Function2<Composer, Integer, Unit> function2 = function2SlotContent;
            Function2<Composer, Integer, Unit> function2SlotContent2 = slotContent(functionalComposableScope, "leadingIcon");
            Function2<Composer, Integer, Unit> function2SlotContent3 = slotContent(functionalComposableScope, "trailingIcon");
            boolean enabled = props.getEnabled();
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ChipView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChipViewKt.AssistChipContent$lambda$2$lambda$1(onPress);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            ChipKt.m2216AssistChipajgufuY((Function0) objRememberedValue, function2, modifierApplyModifiers, enabled, function2SlotContent2, function2SlotContent3, null, chipColorsM2043assistChipColorsoq7We08, chipElevation, borderStroke, 0.0f, null, null, composerStartRestartGroup, 0, 0, 7232);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChipViewKt.AssistChipContent$lambda$3(functionalComposableScope, props, onPress, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AssistChipContent$lambda$2$lambda$1(Function1 function1) {
        function1.invoke(new ChipPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void FilterChipContent(final FunctionalComposableScope functionalComposableScope, final FilterChipProps props, final Function1<? super ChipPressedEvent, Unit> onPress, Composer composer, final int i) {
        int i2;
        SelectableChipElevation selectableChipElevationM2613filterChipElevationaqJV_2Y;
        BorderStroke borderStrokeM2611filterChipBorder_7El2pE;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onPress, "onPress");
        Composer composerStartRestartGroup = composer.startRestartGroup(-95315138);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FilterChipContent)P(1)148@4884L83,150@5003L712,179@6403L31,177@6346L349:ChipView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onPress) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-95315138, i3, -1, "expo.modules.ui.FilterChipContent (ChipView.kt:147)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            FilterChipDefaults filterChipDefaults = FilterChipDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getLabelColor());
            long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getColors().getIconColor());
            long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(props.getColors().getSelectedContainerColor());
            long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull5 = UtilsKt.getComposeOrNull(props.getColors().getSelectedLabelColor());
            long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull6 = UtilsKt.getComposeOrNull(props.getColors().getSelectedLeadingIconColor());
            long jM6068unboximpl6 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull7 = UtilsKt.getComposeOrNull(props.getColors().getSelectedTrailingIconColor());
            SelectableChipColors selectableChipColorsM2612filterChipColorsXqyqHi0 = filterChipDefaults.m2612filterChipColorsXqyqHi0(jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, 0L, 0L, 0L, 0L, jM6068unboximpl4, 0L, jM6068unboximpl5, jM6068unboximpl6, composeOrNull7 != null ? composeOrNull7.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU(), composerStartRestartGroup, 0, FilterChipDefaults.$stable << 6, 376);
            Composer composer2 = composerStartRestartGroup;
            if (props.getElevation() != null) {
                composer2.startReplaceGroup(-558856364);
                ComposerKt.sourceInformation(composer2, "161@5789L51");
                selectableChipElevationM2613filterChipElevationaqJV_2Y = FilterChipDefaults.INSTANCE.m2613filterChipElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, FilterChipDefaults.$stable << 18, 62);
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(-558771982);
                ComposerKt.sourceInformation(composer2, "163@5875L21");
                selectableChipElevationM2613filterChipElevationaqJV_2Y = FilterChipDefaults.INSTANCE.m2613filterChipElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, FilterChipDefaults.$stable << 18, 63);
                composer2.endReplaceGroup();
            }
            SelectableChipElevation selectableChipElevation = selectableChipElevationM2613filterChipElevationaqJV_2Y;
            if (props.getBorder() != null) {
                composer2.startReplaceGroup(-558672100);
                ComposerKt.sourceInformation(composer2, "171@6124L105");
                Color composeOrNull8 = UtilsKt.getComposeOrNull(props.getBorder().getColor());
                if (composeOrNull8 != null) {
                    borderStrokeM2611filterChipBorder_7El2pE = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(props.getBorder().getWidth()), composeOrNull8.m6068unboximpl());
                } else {
                    borderStrokeM2611filterChipBorder_7El2pE = FilterChipDefaults.INSTANCE.m2611filterChipBorder_7El2pE(props.getEnabled(), props.getSelected(), 0L, 0L, 0L, 0L, Dp.m8892constructorimpl(props.getBorder().getWidth()), 0.0f, composer2, FilterChipDefaults.$stable << 24, TsExtractor.TS_PACKET_SIZE);
                    composer2 = composer2;
                }
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(-558378685);
                ComposerKt.sourceInformation(composer2, "174@6270L68");
                borderStrokeM2611filterChipBorder_7El2pE = FilterChipDefaults.INSTANCE.m2611filterChipBorder_7El2pE(props.getEnabled(), props.getSelected(), 0L, 0L, 0L, 0L, 0.0f, 0.0f, composer2, FilterChipDefaults.$stable << 24, 252);
                composer2 = composer2;
                composer2.endReplaceGroup();
            }
            BorderStroke borderStroke = borderStrokeM2611filterChipBorder_7El2pE;
            boolean selected = props.getSelected();
            Function2<Composer, Integer, Unit> function2SlotContent = slotContent(functionalComposableScope, "label");
            if (function2SlotContent == null) {
                function2SlotContent = ComposableSingletons$ChipViewKt.INSTANCE.m11094getLambda$1073824393$expo_ui_release();
            }
            Function2<Composer, Integer, Unit> function2 = function2SlotContent;
            Function2<Composer, Integer, Unit> function2SlotContent2 = slotContent(functionalComposableScope, "leadingIcon");
            Function2<Composer, Integer, Unit> function2SlotContent3 = slotContent(functionalComposableScope, "trailingIcon");
            boolean enabled = props.getEnabled();
            composer2.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composer2, "CC(remember):ChipView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composer2.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChipViewKt.FilterChipContent$lambda$5$lambda$4(onPress);
                    }
                };
                composer2.updateRememberedValue(objRememberedValue);
            }
            composer2.endReplaceGroup();
            Composer composer3 = composer2;
            ChipKt.m2221FilterChipQi0uq5o(selected, (Function0) objRememberedValue, function2, modifierApplyModifiers, enabled, function2SlotContent2, function2SlotContent3, null, selectableChipColorsM2612filterChipColorsXqyqHi0, selectableChipElevation, borderStroke, 0.0f, null, null, composer3, 0, 0, 14464);
            composerStartRestartGroup = composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChipViewKt.FilterChipContent$lambda$6(functionalComposableScope, props, onPress, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilterChipContent$lambda$5$lambda$4(Function1 function1) {
        function1.invoke(new ChipPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void InputChipContent(final FunctionalComposableScope functionalComposableScope, final InputChipProps props, final Function1<? super ChipPressedEvent, Unit> onPress, Composer composer, final int i) {
        int i2;
        SelectableChipElevation selectableChipElevationM2847inputChipElevationaqJV_2Y;
        BorderStroke borderStrokeM2845inputChipBorder_7El2pE;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onPress, "onPress");
        Composer composerStartRestartGroup = composer.startRestartGroup(1618033924);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(InputChipContent)P(1)210@7205L83,212@7323L823,241@8794L31,240@8769L338:ChipView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onPress) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1618033924, i3, -1, "expo.modules.ui.InputChipContent (ChipView.kt:209)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            InputChipDefaults inputChipDefaults = InputChipDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getLabelColor());
            long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getColors().getLeadingIconColor());
            long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull4 = UtilsKt.getComposeOrNull(props.getColors().getTrailingIconColor());
            long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull5 = UtilsKt.getComposeOrNull(props.getColors().getSelectedContainerColor());
            long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull6 = UtilsKt.getComposeOrNull(props.getColors().getSelectedLabelColor());
            long jM6068unboximpl6 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull7 = UtilsKt.getComposeOrNull(props.getColors().getSelectedLeadingIconColor());
            long jM6068unboximpl7 = composeOrNull7 != null ? composeOrNull7.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull8 = UtilsKt.getComposeOrNull(props.getColors().getSelectedTrailingIconColor());
            SelectableChipColors selectableChipColorsM2846inputChipColorskwJvTHA = inputChipDefaults.m2846inputChipColorskwJvTHA(jM6068unboximpl, jM6068unboximpl2, jM6068unboximpl3, jM6068unboximpl4, 0L, 0L, 0L, 0L, jM6068unboximpl5, 0L, jM6068unboximpl6, jM6068unboximpl7, composeOrNull8 != null ? composeOrNull8.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU(), composerStartRestartGroup, 0, InputChipDefaults.$stable << 9, 752);
            Composer composer2 = composerStartRestartGroup;
            if (props.getElevation() != null) {
                composer2.startReplaceGroup(431850768);
                ComposerKt.sourceInformation(composer2, "224@8219L50");
                selectableChipElevationM2847inputChipElevationaqJV_2Y = InputChipDefaults.INSTANCE.m2847inputChipElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, InputChipDefaults.$stable << 18, 62);
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(431933166);
                ComposerKt.sourceInformation(composer2, "226@8303L20");
                selectableChipElevationM2847inputChipElevationaqJV_2Y = InputChipDefaults.INSTANCE.m2847inputChipElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composer2, InputChipDefaults.$stable << 18, 63);
                composer2.endReplaceGroup();
            }
            SelectableChipElevation selectableChipElevation = selectableChipElevationM2847inputChipElevationaqJV_2Y;
            if (props.getBorder() != null) {
                composer2.startReplaceGroup(432031064);
                ComposerKt.sourceInformation(composer2, "234@8550L104");
                Color composeOrNull9 = UtilsKt.getComposeOrNull(props.getBorder().getColor());
                if (composeOrNull9 != null) {
                    borderStrokeM2845inputChipBorder_7El2pE = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(props.getBorder().getWidth()), composeOrNull9.m6068unboximpl());
                } else {
                    borderStrokeM2845inputChipBorder_7El2pE = InputChipDefaults.INSTANCE.m2845inputChipBorder_7El2pE(props.getEnabled(), props.getSelected(), 0L, 0L, 0L, 0L, Dp.m8892constructorimpl(props.getBorder().getWidth()), 0.0f, composer2, InputChipDefaults.$stable << 24, TsExtractor.TS_PACKET_SIZE);
                    composer2 = composer2;
                }
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(432322495);
                ComposerKt.sourceInformation(composer2, "237@8694L67");
                borderStrokeM2845inputChipBorder_7El2pE = InputChipDefaults.INSTANCE.m2845inputChipBorder_7El2pE(props.getEnabled(), props.getSelected(), 0L, 0L, 0L, 0L, 0.0f, 0.0f, composer2, InputChipDefaults.$stable << 24, 252);
                composer2 = composer2;
                composer2.endReplaceGroup();
            }
            BorderStroke borderStroke = borderStrokeM2845inputChipBorder_7El2pE;
            Function2<Composer, Integer, Unit> function2SlotContent = slotContent(functionalComposableScope, "label");
            if (function2SlotContent == null) {
                function2SlotContent = ComposableSingletons$ChipViewKt.INSTANCE.getLambda$289642877$expo_ui_release();
            }
            Function2<Composer, Integer, Unit> function2 = function2SlotContent;
            boolean enabled = props.getEnabled();
            boolean selected = props.getSelected();
            Function2<Composer, Integer, Unit> function2SlotContent2 = slotContent(functionalComposableScope, "avatar");
            Function2<Composer, Integer, Unit> function2SlotContent3 = slotContent(functionalComposableScope, "trailingIcon");
            composer2.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composer2, "CC(remember):ChipView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composer2.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChipViewKt.InputChipContent$lambda$8$lambda$7(onPress);
                    }
                };
                composer2.updateRememberedValue(objRememberedValue);
            }
            composer2.endReplaceGroup();
            Composer composer3 = composer2;
            ChipKt.InputChip(selected, (Function0) objRememberedValue, function2, modifierApplyModifiers, enabled, null, function2SlotContent2, function2SlotContent3, null, selectableChipColorsM2846inputChipColorskwJvTHA, selectableChipElevation, borderStroke, null, composer3, 0, 0, 4384);
            composerStartRestartGroup = composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChipViewKt.InputChipContent$lambda$9(functionalComposableScope, props, onPress, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit InputChipContent$lambda$8$lambda$7(Function1 function1) {
        function1.invoke(new ChipPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void SuggestionChipContent(final FunctionalComposableScope functionalComposableScope, final SuggestionChipProps props, final Function1<? super ChipPressedEvent, Unit> onPress, Composer composer, final int i) {
        int i2;
        ChipElevation chipElevationM3561suggestionChipElevationaqJV_2Y;
        BorderStroke borderStrokeM3559suggestionChipBorderh1eTWw;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onPress, "onPress");
        Composer composerStartRestartGroup = composer.startRestartGroup(672669606);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(SuggestionChipContent)P(1)271@9574L83,273@9697L296,297@10632L31,296@10602L260:ChipView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onPress) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(672669606, i3, -1, "expo.modules.ui.SuggestionChipContent (ChipView.kt:270)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            SuggestionChipDefaults suggestionChipDefaults = SuggestionChipDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getLabelColor());
            long jM6068unboximpl2 = composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getColors().getIconContentColor());
            ChipColors chipColorsM3560suggestionChipColors5tl4gsc = suggestionChipDefaults.m3560suggestionChipColors5tl4gsc(jM6068unboximpl, jM6068unboximpl2, composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : Color.INSTANCE.m6094getUnspecified0d7_KjU(), 0L, 0L, 0L, composerStartRestartGroup, SuggestionChipDefaults.$stable << 18, 56);
            if (props.getElevation() != null) {
                composerStartRestartGroup.startReplaceGroup(-816534172);
                ComposerKt.sourceInformation(composerStartRestartGroup, "280@10071L55");
                chipElevationM3561suggestionChipElevationaqJV_2Y = SuggestionChipDefaults.INSTANCE.m3561suggestionChipElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, SuggestionChipDefaults.$stable << 18, 62);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-816441854);
                ComposerKt.sourceInformation(composerStartRestartGroup, "282@10165L25");
                chipElevationM3561suggestionChipElevationaqJV_2Y = SuggestionChipDefaults.INSTANCE.m3561suggestionChipElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, SuggestionChipDefaults.$stable << 18, 63);
                composerStartRestartGroup.endReplaceGroup();
            }
            ChipElevation chipElevation = chipElevationM3561suggestionChipElevationaqJV_2Y;
            if (props.getBorder() != null) {
                composerStartRestartGroup.startReplaceGroup(-816334873);
                ComposerKt.sourceInformation(composerStartRestartGroup, "290@10422L82");
                Color composeOrNull4 = UtilsKt.getComposeOrNull(props.getBorder().getColor());
                if (composeOrNull4 != null) {
                    borderStrokeM3559suggestionChipBorderh1eTWw = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(props.getBorder().getWidth()), composeOrNull4.m6068unboximpl());
                } else {
                    borderStrokeM3559suggestionChipBorderh1eTWw = SuggestionChipDefaults.INSTANCE.m3559suggestionChipBorderh1eTWw(props.getEnabled(), 0L, 0L, Dp.m8892constructorimpl(props.getBorder().getWidth()), composerStartRestartGroup, SuggestionChipDefaults.$stable << 12, 6);
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-816060306);
                ComposerKt.sourceInformation(composerStartRestartGroup, "293@10549L45");
                borderStrokeM3559suggestionChipBorderh1eTWw = SuggestionChipDefaults.INSTANCE.m3559suggestionChipBorderh1eTWw(props.getEnabled(), 0L, 0L, 0.0f, composerStartRestartGroup, SuggestionChipDefaults.$stable << 12, 14);
                composerStartRestartGroup.endReplaceGroup();
            }
            BorderStroke borderStroke = borderStrokeM3559suggestionChipBorderh1eTWw;
            Function2<Composer, Integer, Unit> function2SlotContent = slotContent(functionalComposableScope, "label");
            if (function2SlotContent == null) {
                function2SlotContent = ComposableSingletons$ChipViewKt.INSTANCE.getLambda$1542534682$expo_ui_release();
            }
            Function2<Composer, Integer, Unit> function2 = function2SlotContent;
            Function2<Composer, Integer, Unit> function2SlotContent2 = slotContent(functionalComposableScope, "icon");
            boolean enabled = props.getEnabled();
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ChipView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChipViewKt.SuggestionChipContent$lambda$11$lambda$10(onPress);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            ChipKt.SuggestionChip((Function0<Unit>) objRememberedValue, function2, modifierApplyModifiers, enabled, function2SlotContent2, (Shape) null, chipColorsM3560suggestionChipColors5tl4gsc, chipElevation, borderStroke, (MutableInteractionSource) null, composerStartRestartGroup, 0, 544);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ChipViewKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChipViewKt.SuggestionChipContent$lambda$12(functionalComposableScope, props, onPress, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SuggestionChipContent$lambda$11$lambda$10(Function1 function1) {
        function1.invoke(new ChipPressedEvent());
        return Unit.INSTANCE;
    }
}
