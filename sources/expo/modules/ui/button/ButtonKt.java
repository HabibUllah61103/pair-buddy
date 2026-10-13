package expo.modules.ui.button;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.ModifierRegistry;
import expo.modules.ui.ShapeViewKt;
import expo.modules.ui.UtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Button.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a-\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\tH\u0007¢\u0006\u0002\u0010\u000b\u001a-\u0010\f\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\tH\u0007¢\u0006\u0002\u0010\u000b\u001a-\u0010\r\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\tH\u0007¢\u0006\u0002\u0010\u000b\u001a-\u0010\u000e\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\tH\u0007¢\u0006\u0002\u0010\u000b\u001a-\u0010\u000f\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\tH\u0007¢\u0006\u0002\u0010\u000b¨\u0006\u0010"}, d2 = {"toPaddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "Lexpo/modules/ui/button/ContentPaddingRecord;", "ButtonContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/button/ButtonProps;", ViewProps.ON_CLICK, "Lkotlin/Function1;", "Lexpo/modules/ui/button/ButtonPressedEvent;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/ButtonProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "FilledTonalButtonContent", "OutlinedButtonContent", "ElevatedButtonContent", "TextButtonContent", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ButtonKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ButtonContent$lambda$2(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        ButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ElevatedButtonContent$lambda$11(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        ElevatedButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledTonalButtonContent$lambda$5(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        FilledTonalButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedButtonContent$lambda$8(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        OutlinedButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit TextButtonContent$lambda$14(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        TextButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final PaddingValues toPaddingValues(ContentPaddingRecord contentPaddingRecord) {
        float fMo875calculateLeftPaddingu2uoSUM;
        float top;
        float fMo876calculateRightPaddingu2uoSUM;
        float bottom;
        Intrinsics.checkNotNullParameter(contentPaddingRecord, "<this>");
        Double start = contentPaddingRecord.getStart();
        if (start == null) {
            fMo875calculateLeftPaddingu2uoSUM = ButtonDefaults.INSTANCE.getContentPadding().mo875calculateLeftPaddingu2uoSUM(LayoutDirection.Ltr);
        } else {
            fMo875calculateLeftPaddingu2uoSUM = Dp.m8892constructorimpl((float) start.doubleValue());
        }
        Double top2 = contentPaddingRecord.getTop();
        if (top2 == null) {
            top = ButtonDefaults.INSTANCE.getContentPadding().getTop();
        } else {
            top = Dp.m8892constructorimpl((float) top2.doubleValue());
        }
        Double end = contentPaddingRecord.getEnd();
        if (end == null) {
            fMo876calculateRightPaddingu2uoSUM = ButtonDefaults.INSTANCE.getContentPadding().mo876calculateRightPaddingu2uoSUM(LayoutDirection.Ltr);
        } else {
            fMo876calculateRightPaddingu2uoSUM = Dp.m8892constructorimpl((float) end.doubleValue());
        }
        Double bottom2 = contentPaddingRecord.getBottom();
        if (bottom2 == null) {
            bottom = ButtonDefaults.INSTANCE.getContentPadding().getBottom();
        } else {
            bottom = Dp.m8892constructorimpl((float) bottom2.doubleValue());
        }
        return PaddingKt.m926PaddingValuesa9UjIt4(fMo875calculateLeftPaddingu2uoSUM, top, fMo876calculateRightPaddingu2uoSUM, bottom);
    }

    public static final void ButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onClick, Composer composer, final int i) {
        int i2;
        PaddingValues contentPadding;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer composerStartRestartGroup = composer.startRestartGroup(1885623749);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ButtonContent)P(1)64@2433L282,71@2820L83,61@2246L33,72@2908L52,60@2224L736:Button.kt#kazlex");
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
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1885623749, i2, -1, "expo.modules.ui.button.ButtonContent (Button.kt:59)");
            }
            boolean enabled = props.getEnabled();
            ContentPaddingRecord contentPadding2 = props.getContentPadding();
            if (contentPadding2 == null || (contentPadding = toPaddingValues(contentPadding2)) == null) {
                contentPadding = ButtonDefaults.INSTANCE.getContentPadding();
            }
            PaddingValues paddingValues = contentPadding;
            int i3 = i2;
            androidx.compose.material3.ButtonColors buttonColorsM2095buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2095buttonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, ButtonDefaults.$stable << 12, 0);
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            composerStartRestartGroup.startReplaceGroup(-391755042);
            ComposerKt.sourceInformation(composerStartRestartGroup, "70@2781L5");
            if (shapeShapeFromShapeRecord == null) {
                shapeShapeFromShapeRecord = ButtonDefaults.INSTANCE.getShape(composerStartRestartGroup, ButtonDefaults.$stable);
            }
            Shape shape = shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):Button.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ButtonKt.ButtonContent$lambda$1$lambda$0(onClick);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.ButtonKt.Button((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, shape, buttonColorsM2095buttonColorsro_MJ88, (ButtonElevation) null, (BorderStroke) null, paddingValues, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-1117397035, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ButtonKt.ButtonContent.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope Button, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                    ComposerKt.sourceInformation(composer2, "C73@2914L42:Button.kt#kazlex");
                    if ((i4 & 6) == 0) {
                        i4 |= composer2.changed(Button) ? 4 : 2;
                    }
                    if ((i4 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1117397035, i4, -1, "expo.modules.ui.button.ButtonContent.<anonymous> (Button.kt:73)");
                    }
                    functionalComposableScope.Children(new ComposableScope(Button, null, null, null, 14, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368, 352);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ButtonKt.ButtonContent$lambda$2(functionalComposableScope, props, onClick, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ButtonContent$lambda$1$lambda$0(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void FilledTonalButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onClick, Composer composer, final int i) {
        int i2;
        PaddingValues contentPadding;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1808845327);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FilledTonalButtonContent)P(1)86@3320L293,93@3729L83,83@3133L33,94@3817L52,82@3100L769:Button.kt#kazlex");
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
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1808845327, i2, -1, "expo.modules.ui.button.FilledTonalButtonContent (Button.kt:81)");
            }
            boolean enabled = props.getEnabled();
            ContentPaddingRecord contentPadding2 = props.getContentPadding();
            if (contentPadding2 == null || (contentPadding = toPaddingValues(contentPadding2)) == null) {
                contentPadding = ButtonDefaults.INSTANCE.getContentPadding();
            }
            PaddingValues paddingValues = contentPadding;
            int i3 = i2;
            androidx.compose.material3.ButtonColors buttonColorsM2100filledTonalButtonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2100filledTonalButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, ButtonDefaults.$stable << 12, 0);
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            composerStartRestartGroup.startReplaceGroup(1161416917);
            ComposerKt.sourceInformation(composerStartRestartGroup, "92@3679L16");
            if (shapeShapeFromShapeRecord == null) {
                shapeShapeFromShapeRecord = ButtonDefaults.INSTANCE.getFilledTonalShape(composerStartRestartGroup, ButtonDefaults.$stable);
            }
            Shape shape = shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):Button.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ButtonKt.FilledTonalButtonContent$lambda$4$lambda$3(onClick);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.ButtonKt.FilledTonalButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, shape, buttonColorsM2100filledTonalButtonColorsro_MJ88, (ButtonElevation) null, (BorderStroke) null, paddingValues, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-755235133, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ButtonKt.FilledTonalButtonContent.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope FilledTonalButton, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(FilledTonalButton, "$this$FilledTonalButton");
                    ComposerKt.sourceInformation(composer2, "C95@3823L42:Button.kt#kazlex");
                    if ((i4 & 6) == 0) {
                        i4 |= composer2.changed(FilledTonalButton) ? 4 : 2;
                    }
                    if ((i4 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-755235133, i4, -1, "expo.modules.ui.button.FilledTonalButtonContent.<anonymous> (Button.kt:95)");
                    }
                    functionalComposableScope.Children(new ComposableScope(FilledTonalButton, null, null, null, 14, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368, 352);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ButtonKt.FilledTonalButtonContent$lambda$5(functionalComposableScope, props, onClick, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledTonalButtonContent$lambda$4$lambda$3(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void OutlinedButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onClick, Composer composer, final int i) {
        int i2;
        PaddingValues contentPadding;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer composerStartRestartGroup = composer.startRestartGroup(1345238471);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(OutlinedButtonContent)P(1)108@4223L290,115@4626L83,105@4036L33,116@4714L52,104@4006L760:Button.kt#kazlex");
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
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1345238471, i2, -1, "expo.modules.ui.button.OutlinedButtonContent (Button.kt:103)");
            }
            boolean enabled = props.getEnabled();
            ContentPaddingRecord contentPadding2 = props.getContentPadding();
            if (contentPadding2 == null || (contentPadding = toPaddingValues(contentPadding2)) == null) {
                contentPadding = ButtonDefaults.INSTANCE.getContentPadding();
            }
            PaddingValues paddingValues = contentPadding;
            int i3 = i2;
            androidx.compose.material3.ButtonColors buttonColorsM2121outlinedButtonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2121outlinedButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, ButtonDefaults.$stable << 12, 0);
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            composerStartRestartGroup.startReplaceGroup(-10964472);
            ComposerKt.sourceInformation(composerStartRestartGroup, "114@4579L13");
            if (shapeShapeFromShapeRecord == null) {
                shapeShapeFromShapeRecord = ButtonDefaults.INSTANCE.getOutlinedShape(composerStartRestartGroup, ButtonDefaults.$stable);
            }
            Shape shape = shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):Button.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ButtonKt.OutlinedButtonContent$lambda$7$lambda$6(onClick);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.ButtonKt.OutlinedButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, shape, buttonColorsM2121outlinedButtonColorsro_MJ88, (ButtonElevation) null, (BorderStroke) null, paddingValues, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(684765205, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ButtonKt.OutlinedButtonContent.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope OutlinedButton, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(OutlinedButton, "$this$OutlinedButton");
                    ComposerKt.sourceInformation(composer2, "C117@4720L42:Button.kt#kazlex");
                    if ((i4 & 6) == 0) {
                        i4 |= composer2.changed(OutlinedButton) ? 4 : 2;
                    }
                    if ((i4 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(684765205, i4, -1, "expo.modules.ui.button.OutlinedButtonContent.<anonymous> (Button.kt:117)");
                    }
                    functionalComposableScope.Children(new ComposableScope(OutlinedButton, null, null, null, 14, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368, 352);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ButtonKt.OutlinedButtonContent$lambda$8(functionalComposableScope, props, onClick, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedButtonContent$lambda$7$lambda$6(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void ElevatedButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onClick, Composer composer, final int i) {
        int i2;
        PaddingValues contentPadding;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1611592945);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ElevatedButtonContent)P(1)130@5120L290,137@5523L83,127@4933L33,138@5611L52,126@4903L760:Button.kt#kazlex");
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
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1611592945, i2, -1, "expo.modules.ui.button.ElevatedButtonContent (Button.kt:125)");
            }
            boolean enabled = props.getEnabled();
            ContentPaddingRecord contentPadding2 = props.getContentPadding();
            if (contentPadding2 == null || (contentPadding = toPaddingValues(contentPadding2)) == null) {
                contentPadding = ButtonDefaults.INSTANCE.getContentPadding();
            }
            PaddingValues paddingValues = contentPadding;
            int i3 = i2;
            androidx.compose.material3.ButtonColors buttonColorsM2098elevatedButtonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2098elevatedButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, ButtonDefaults.$stable << 12, 0);
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            composerStartRestartGroup.startReplaceGroup(1742394704);
            ComposerKt.sourceInformation(composerStartRestartGroup, "136@5476L13");
            if (shapeShapeFromShapeRecord == null) {
                shapeShapeFromShapeRecord = ButtonDefaults.INSTANCE.getElevatedShape(composerStartRestartGroup, ButtonDefaults.$stable);
            }
            Shape shape = shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):Button.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ButtonKt.ElevatedButtonContent$lambda$10$lambda$9(onClick);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.ButtonKt.ElevatedButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, shape, buttonColorsM2098elevatedButtonColorsro_MJ88, (ButtonElevation) null, (BorderStroke) null, paddingValues, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-1212766955, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ButtonKt.ElevatedButtonContent.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope ElevatedButton, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(ElevatedButton, "$this$ElevatedButton");
                    ComposerKt.sourceInformation(composer2, "C139@5617L42:Button.kt#kazlex");
                    if ((i4 & 6) == 0) {
                        i4 |= composer2.changed(ElevatedButton) ? 4 : 2;
                    }
                    if ((i4 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1212766955, i4, -1, "expo.modules.ui.button.ElevatedButtonContent.<anonymous> (Button.kt:139)");
                    }
                    functionalComposableScope.Children(new ComposableScope(ElevatedButton, null, null, null, 14, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368, 352);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ButtonKt.ElevatedButtonContent$lambda$11(functionalComposableScope, props, onClick, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ElevatedButtonContent$lambda$10$lambda$9(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void TextButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onClick, Composer composer, final int i) {
        int i2;
        PaddingValues textButtonContentPadding;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1727331886);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(TextButtonContent)P(1)152@6019L286,159@6414L83,149@5822L33,160@6502L52,148@5796L758:Button.kt#kazlex");
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
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1727331886, i2, -1, "expo.modules.ui.button.TextButtonContent (Button.kt:147)");
            }
            boolean enabled = props.getEnabled();
            ContentPaddingRecord contentPadding = props.getContentPadding();
            if (contentPadding == null || (textButtonContentPadding = toPaddingValues(contentPadding)) == null) {
                textButtonContentPadding = ButtonDefaults.INSTANCE.getTextButtonContentPadding();
            }
            PaddingValues paddingValues = textButtonContentPadding;
            int i3 = i2;
            androidx.compose.material3.ButtonColors buttonColorsM2123textButtonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2123textButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, ButtonDefaults.$stable << 12, 0);
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            composerStartRestartGroup.startReplaceGroup(-2108545265);
            ComposerKt.sourceInformation(composerStartRestartGroup, "158@6371L9");
            if (shapeShapeFromShapeRecord == null) {
                shapeShapeFromShapeRecord = ButtonDefaults.INSTANCE.getTextShape(composerStartRestartGroup, ButtonDefaults.$stable);
            }
            Shape shape = shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):Button.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ButtonKt.TextButtonContent$lambda$13$lambda$12(onClick);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.ButtonKt.TextButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, shape, buttonColorsM2123textButtonColorsro_MJ88, (ButtonElevation) null, (BorderStroke) null, paddingValues, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-237974283, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ButtonKt.TextButtonContent.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope TextButton, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                    ComposerKt.sourceInformation(composer2, "C161@6508L42:Button.kt#kazlex");
                    if ((i4 & 6) == 0) {
                        i4 |= composer2.changed(TextButton) ? 4 : 2;
                    }
                    if ((i4 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-237974283, i4, -1, "expo.modules.ui.button.TextButtonContent.<anonymous> (Button.kt:161)");
                    }
                    functionalComposableScope.Children(new ComposableScope(TextButton, null, null, null, 14, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 805306368, 352);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.ButtonKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ButtonKt.TextButtonContent$lambda$14(functionalComposableScope, props, onClick, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit TextButtonContent$lambda$13$lambda$12(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }
}
