package expo.modules.ui.button;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
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
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IconButton.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b¨\u0006\f"}, d2 = {"IconButtonContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/button/ButtonProps;", "onButtonPressed", "Lkotlin/Function1;", "Lexpo/modules/ui/button/ButtonPressedEvent;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/button/ButtonProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "FilledIconButtonContent", "FilledTonalIconButtonContent", "OutlinedIconButtonContent", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class IconButtonKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledIconButtonContent$lambda$5(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        FilledIconButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledTonalIconButtonContent$lambda$8(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        FilledTonalIconButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IconButtonContent$lambda$2(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        IconButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedIconButtonContent$lambda$11(FunctionalComposableScope functionalComposableScope, ButtonProps buttonProps, Function1 function1, int i, Composer composer, int i2) {
        OutlinedIconButtonContent(functionalComposableScope, buttonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void IconButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onButtonPressed, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onButtonPressed, "onButtonPressed");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1783704283);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(IconButtonContent)P(1)23@872L286,30@1247L83,21@768L41,31@1335L37,20@742L630:IconButton.kt#kazlex");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onButtonPressed) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1783704283, i2, -1, "expo.modules.ui.button.IconButtonContent (IconButton.kt:18)");
            }
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            boolean enabled = props.getEnabled();
            int i3 = i2;
            IconButtonColors iconButtonColorsM2791iconButtonColorsro_MJ88 = IconButtonDefaults.INSTANCE.m2791iconButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 12, 0);
            composerStartRestartGroup.startReplaceGroup(-447845138);
            ComposerKt.sourceInformation(composerStartRestartGroup, "29@1200L13");
            Shape standardShape = shapeShapeFromShapeRecord == null ? IconButtonDefaults.INSTANCE.getStandardShape(composerStartRestartGroup, IconButtonDefaults.$stable) : shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):IconButton.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return IconButtonKt.IconButtonContent$lambda$1$lambda$0(onButtonPressed);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.IconButtonKt.IconButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, iconButtonColorsM2791iconButtonColorsro_MJ88, (MutableInteractionSource) null, standardShape, ComposableLambdaKt.rememberComposableLambda(-1426087609, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.IconButtonKt.IconButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i4) {
                    ComposerKt.sourceInformation(composer3, "C32@1341L27:IconButton.kt#kazlex");
                    if ((i4 & 3) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1426087609, i4, -1, "expo.modules.ui.button.IconButtonContent.<anonymous> (IconButton.kt:32)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer3, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 1572864, 16);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return IconButtonKt.IconButtonContent$lambda$2(functionalComposableScope, props, onButtonPressed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IconButtonContent$lambda$1$lambda$0(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void FilledIconButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onButtonPressed, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onButtonPressed, "onButtonPressed");
        Composer composerStartRestartGroup = composer.startRestartGroup(-562500057);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FilledIconButtonContent)P(1)45@1703L292,52@2082L83,43@1599L41,53@2170L37,42@1567L640:IconButton.kt#kazlex");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onButtonPressed) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-562500057, i2, -1, "expo.modules.ui.button.FilledIconButtonContent (IconButton.kt:40)");
            }
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            boolean enabled = props.getEnabled();
            int i3 = i2;
            IconButtonColors iconButtonColorsM2782filledIconButtonColorsro_MJ88 = IconButtonDefaults.INSTANCE.m2782filledIconButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 12, 0);
            composerStartRestartGroup.startReplaceGroup(603344814);
            ComposerKt.sourceInformation(composerStartRestartGroup, "51@2037L11");
            Shape filledShape = shapeShapeFromShapeRecord == null ? IconButtonDefaults.INSTANCE.getFilledShape(composerStartRestartGroup, IconButtonDefaults.$stable) : shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):IconButton.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return IconButtonKt.FilledIconButtonContent$lambda$4$lambda$3(onButtonPressed);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.IconButtonKt.FilledIconButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, filledShape, iconButtonColorsM2782filledIconButtonColorsro_MJ88, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(650398471, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.IconButtonKt.FilledIconButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i4) {
                    ComposerKt.sourceInformation(composer3, "C54@2176L27:IconButton.kt#kazlex");
                    if ((i4 & 3) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(650398471, i4, -1, "expo.modules.ui.button.FilledIconButtonContent.<anonymous> (IconButton.kt:54)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer3, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 1572864, 32);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return IconButtonKt.FilledIconButtonContent$lambda$5(functionalComposableScope, props, onButtonPressed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledIconButtonContent$lambda$4$lambda$3(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void FilledTonalIconButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onButtonPressed, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onButtonPressed, "onButtonPressed");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1403205295);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FilledTonalIconButtonContent)P(1)67@2548L297,74@2932L83,65@2444L41,75@3020L37,64@2407L650:IconButton.kt#kazlex");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onButtonPressed) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1403205295, i2, -1, "expo.modules.ui.button.FilledTonalIconButtonContent (IconButton.kt:62)");
            }
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            boolean enabled = props.getEnabled();
            int i3 = i2;
            IconButtonColors iconButtonColorsM2784filledTonalIconButtonColorsro_MJ88 = IconButtonDefaults.INSTANCE.m2784filledTonalIconButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 12, 0);
            composerStartRestartGroup.startReplaceGroup(139463224);
            ComposerKt.sourceInformation(composerStartRestartGroup, "73@2887L11");
            Shape filledShape = shapeShapeFromShapeRecord == null ? IconButtonDefaults.INSTANCE.getFilledShape(composerStartRestartGroup, IconButtonDefaults.$stable) : shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):IconButton.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return IconButtonKt.FilledTonalIconButtonContent$lambda$7$lambda$6(onButtonPressed);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.IconButtonKt.FilledTonalIconButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, filledShape, iconButtonColorsM2784filledTonalIconButtonColorsro_MJ88, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(834977543, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.IconButtonKt.FilledTonalIconButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i4) {
                    ComposerKt.sourceInformation(composer3, "C76@3026L27:IconButton.kt#kazlex");
                    if ((i4 & 3) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(834977543, i4, -1, "expo.modules.ui.button.FilledTonalIconButtonContent.<anonymous> (IconButton.kt:76)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer3, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 1572864, 32);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return IconButtonKt.FilledTonalIconButtonContent$lambda$8(functionalComposableScope, props, onButtonPressed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledTonalIconButtonContent$lambda$7$lambda$6(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }

    public static final void OutlinedIconButtonContent(final FunctionalComposableScope functionalComposableScope, final ButtonProps props, final Function1<? super ButtonPressedEvent, Unit> onButtonPressed, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onButtonPressed, "onButtonPressed");
        Composer composerStartRestartGroup = composer.startRestartGroup(-576580825);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(OutlinedIconButtonContent)P(1)89@3392L294,96@3775L83,87@3288L41,97@3863L37,86@3254L646:IconButton.kt#kazlex");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onButtonPressed) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-576580825, i2, -1, "expo.modules.ui.button.OutlinedIconButtonContent (IconButton.kt:84)");
            }
            Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
            boolean enabled = props.getEnabled();
            int i3 = i2;
            IconButtonColors iconButtonColorsM2797outlinedIconButtonColorsro_MJ88 = IconButtonDefaults.INSTANCE.m2797outlinedIconButtonColorsro_MJ88(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 12, 0);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.startReplaceGroup(-43371152);
            ComposerKt.sourceInformation(composerStartRestartGroup, "95@3728L13");
            Shape outlinedShape = shapeShapeFromShapeRecord == null ? IconButtonDefaults.INSTANCE.getOutlinedShape(composerStartRestartGroup, IconButtonDefaults.$stable) : shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):IconButton.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return IconButtonKt.OutlinedIconButtonContent$lambda$10$lambda$9(onButtonPressed);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            androidx.compose.material3.IconButtonKt.OutlinedIconButton((Function0<Unit>) objRememberedValue, modifierApplyModifiers, enabled, outlinedShape, iconButtonColorsM2797outlinedIconButtonColorsro_MJ88, (BorderStroke) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(1177655462, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.IconButtonKt.OutlinedIconButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C98@3869L27:IconButton.kt#kazlex");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1177655462, i4, -1, "expo.modules.ui.button.OutlinedIconButtonContent.<anonymous> (IconButton.kt:98)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 12582912, 96);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.button.IconButtonKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return IconButtonKt.OutlinedIconButtonContent$lambda$11(functionalComposableScope, props, onButtonPressed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedIconButtonContent$lambda$10$lambda$9(Function1 function1) {
        function1.invoke(new ButtonPressedEvent());
        return Unit.INSTANCE;
    }
}
