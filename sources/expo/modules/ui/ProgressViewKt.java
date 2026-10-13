package expo.modules.ui;

import androidx.compose.material3.ProgressIndicatorDefaults;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.WavyProgressIndicatorDefaults;
import androidx.compose.material3.WavyProgressIndicatorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProgressView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001a\u0019\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u000b\u001a\u0019\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u000e\u001a\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u0011H\u0002¨\u0006\u0012"}, d2 = {"LinearProgressIndicatorContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/LinearProgressIndicatorProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/LinearProgressIndicatorProps;Landroidx/compose/runtime/Composer;I)V", "CircularProgressIndicatorContent", "Lexpo/modules/ui/CircularProgressIndicatorProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CircularProgressIndicatorProps;Landroidx/compose/runtime/Composer;I)V", "LinearWavyProgressIndicatorContent", "Lexpo/modules/ui/LinearWavyProgressIndicatorProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/LinearWavyProgressIndicatorProps;Landroidx/compose/runtime/Composer;I)V", "CircularWavyProgressIndicatorContent", "Lexpo/modules/ui/CircularWavyProgressIndicatorProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CircularWavyProgressIndicatorProps;Landroidx/compose/runtime/Composer;I)V", "toStrokeCap", "Landroidx/compose/ui/graphics/StrokeCap;", "", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ProgressViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CircularProgressIndicatorContent$lambda$9(FunctionalComposableScope functionalComposableScope, CircularProgressIndicatorProps circularProgressIndicatorProps, int i, Composer composer, int i2) {
        CircularProgressIndicatorContent(functionalComposableScope, circularProgressIndicatorProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CircularWavyProgressIndicatorContent$lambda$15(FunctionalComposableScope functionalComposableScope, CircularWavyProgressIndicatorProps circularWavyProgressIndicatorProps, int i, Composer composer, int i2) {
        CircularWavyProgressIndicatorContent(functionalComposableScope, circularWavyProgressIndicatorProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LinearProgressIndicatorContent$lambda$6(FunctionalComposableScope functionalComposableScope, LinearProgressIndicatorProps linearProgressIndicatorProps, int i, Composer composer, int i2) {
        LinearProgressIndicatorContent(functionalComposableScope, linearProgressIndicatorProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LinearWavyProgressIndicatorContent$lambda$12(FunctionalComposableScope functionalComposableScope, LinearWavyProgressIndicatorProps linearWavyProgressIndicatorProps, int i, Composer composer, int i2) {
        LinearWavyProgressIndicatorContent(functionalComposableScope, linearWavyProgressIndicatorProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void LinearProgressIndicatorContent(final FunctionalComposableScope functionalComposableScope, final LinearProgressIndicatorProps props, Composer composer, final int i) {
        int i2;
        float fM3223getLinearIndicatorTrackGapSizeD9Ej5fM;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-2145439722);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(LinearProgressIndicatorContent)41@1604L83:ProgressView.kt#v15e7d");
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
                ComposerKt.traceEventStart(-2145439722, i2, -1, "expo.modules.ui.LinearProgressIndicatorContent (ProgressView.kt:40)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColor());
            composerStartRestartGroup.startReplaceGroup(-183262888);
            ComposerKt.sourceInformation(composerStartRestartGroup, "42@1757L11");
            final long linearColor = composeOrNull == null ? ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getTrackColor());
            composerStartRestartGroup.startReplaceGroup(-183260126);
            ComposerKt.sourceInformation(composerStartRestartGroup, "43@1848L16");
            long linearTrackColor = composeOrNull2 == null ? ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull2.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            StrokeCap strokeCap = toStrokeCap(props.getStrokeCap());
            final int value = strokeCap != null ? strokeCap.getValue() : ProgressIndicatorDefaults.INSTANCE.m3224getLinearStrokeCapKaPHkGw();
            Float gapSize = props.getGapSize();
            if (gapSize == null) {
                fM3223getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3223getLinearIndicatorTrackGapSizeD9Ej5fM();
            } else {
                fM3223getLinearIndicatorTrackGapSizeD9Ej5fM = Dp.m8892constructorimpl(gapSize.floatValue());
            }
            float f = fM3223getLinearIndicatorTrackGapSizeD9Ej5fM;
            if (props.getProgress() != null) {
                composerStartRestartGroup.startReplaceGroup(-1385779509);
                ComposerKt.sourceInformation(composerStartRestartGroup, "");
                final DrawStopIndicatorConfig drawStopIndicator = props.getDrawStopIndicator();
                if (drawStopIndicator != null) {
                    composerStartRestartGroup.startReplaceGroup(-1385697483);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "51@2225L18,56@2387L374,50@2181L617");
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ProgressView.kt#9igjgp");
                    boolean zChangedInstance = composerStartRestartGroup.changedInstance(props);
                    Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue = new Function0() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Float.valueOf(ProgressViewKt.LinearProgressIndicatorContent$lambda$1$lambda$0(props));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Function0 function0 = (Function0) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.startReplaceGroup(-1746271574);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ProgressView.kt#9igjgp");
                    boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(drawStopIndicator) | composerStartRestartGroup.changed(linearColor) | composerStartRestartGroup.changed(value);
                    Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue2 = new Function1() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return ProgressViewKt.LinearProgressIndicatorContent$lambda$3$lambda$2(drawStopIndicator, linearColor, value, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    ProgressIndicatorKt.m3247LinearProgressIndicatorGJbTh5U(function0, modifierApplyModifiers, linearColor, linearTrackColor, value, f, (Function1) objRememberedValue2, composerStartRestartGroup, 0, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1385078103);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "68@2862L18,67@2818L213");
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ProgressView.kt#9igjgp");
                    boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(props);
                    Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue3 = new Function0() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda6
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Float.valueOf(ProgressViewKt.LinearProgressIndicatorContent$lambda$5$lambda$4(props));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    ProgressIndicatorKt.m3247LinearProgressIndicatorGJbTh5U((Function0) objRememberedValue3, modifierApplyModifiers, linearColor, linearTrackColor, value, f, null, composerStartRestartGroup, 0, 64);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1384844704);
                ComposerKt.sourceInformation(composerStartRestartGroup, "77@3053L162");
                ProgressIndicatorKt.m3252LinearProgressIndicatorrIrjwxo(modifierApplyModifiers, linearColor, linearTrackColor, value, f, composerStartRestartGroup, 0, 0);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ProgressViewKt.LinearProgressIndicatorContent$lambda$6(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicatorContent$lambda$1$lambda$0(LinearProgressIndicatorProps linearProgressIndicatorProps) {
        return linearProgressIndicatorProps.getProgress().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LinearProgressIndicatorContent$lambda$3$lambda$2(DrawStopIndicatorConfig drawStopIndicatorConfig, long j, int i, DrawScope LinearProgressIndicator) {
        float fM3225getLinearTrackStopIndicatorSizeD9Ej5fM;
        Intrinsics.checkNotNullParameter(LinearProgressIndicator, "$this$LinearProgressIndicator");
        ProgressIndicatorDefaults progressIndicatorDefaults = ProgressIndicatorDefaults.INSTANCE;
        Float stopSize = drawStopIndicatorConfig.getStopSize();
        if (stopSize == null) {
            fM3225getLinearTrackStopIndicatorSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3225getLinearTrackStopIndicatorSizeD9Ej5fM();
        } else {
            fM3225getLinearTrackStopIndicatorSizeD9Ej5fM = Dp.m8892constructorimpl(stopSize.floatValue());
        }
        float f = fM3225getLinearTrackStopIndicatorSizeD9Ej5fM;
        Color composeOrNull = UtilsKt.getComposeOrNull(drawStopIndicatorConfig.getColor());
        if (composeOrNull != null) {
            j = composeOrNull.m6068unboximpl();
        }
        long j2 = j;
        StrokeCap strokeCap = toStrokeCap(drawStopIndicatorConfig.getStrokeCap());
        if (strokeCap != null) {
            i = strokeCap.getValue();
        }
        progressIndicatorDefaults.m3218drawStopIndicatorEgI2THU(LinearProgressIndicator, f, j2, i);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicatorContent$lambda$5$lambda$4(LinearProgressIndicatorProps linearProgressIndicatorProps) {
        return linearProgressIndicatorProps.getProgress().floatValue();
    }

    public static final void CircularProgressIndicatorContent(final FunctionalComposableScope functionalComposableScope, final CircularProgressIndicatorProps props, Composer composer, final int i) {
        int i2;
        float fM3222getCircularStrokeWidthD9Ej5fM;
        float fM3221getCircularIndicatorTrackGapSizeD9Ej5fM;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(489144406);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(CircularProgressIndicatorContent)103@3718L83:ProgressView.kt#v15e7d");
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
                ComposerKt.traceEventStart(489144406, i2, -1, "expo.modules.ui.CircularProgressIndicatorContent (ProgressView.kt:102)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColor());
            composerStartRestartGroup.startReplaceGroup(1916346906);
            ComposerKt.sourceInformation(composerStartRestartGroup, "104@3871L13");
            long circularColor = composeOrNull == null ? ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Float strokeWidth = props.getStrokeWidth();
            if (strokeWidth == null) {
                fM3222getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3222getCircularStrokeWidthD9Ej5fM();
            } else {
                fM3222getCircularStrokeWidthD9Ej5fM = Dp.m8892constructorimpl(strokeWidth.floatValue());
            }
            float f = fM3222getCircularStrokeWidthD9Ej5fM;
            if (props.getProgress() != null) {
                composerStartRestartGroup.startReplaceGroup(-722583363);
                ComposerKt.sourceInformation(composerStartRestartGroup, "113@4372L18,112@4328L234");
                Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getTrackColor());
                composerStartRestartGroup.startReplaceGroup(1916353775);
                ComposerKt.sourceInformation(composerStartRestartGroup, "108@4090L29");
                long circularDeterminateTrackColor = composeOrNull2 == null ? ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull2.m6068unboximpl();
                composerStartRestartGroup.endReplaceGroup();
                StrokeCap strokeCap = toStrokeCap(props.getStrokeCap());
                int value = strokeCap != null ? strokeCap.getValue() : ProgressIndicatorDefaults.INSTANCE.m3219getCircularDeterminateStrokeCapKaPHkGw();
                Float gapSize = props.getGapSize();
                if (gapSize == null) {
                    fM3221getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3221getCircularIndicatorTrackGapSizeD9Ej5fM();
                } else {
                    fM3221getCircularIndicatorTrackGapSizeD9Ej5fM = Dp.m8892constructorimpl(gapSize.floatValue());
                }
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ProgressView.kt#9igjgp");
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(props);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Float.valueOf(ProgressViewKt.CircularProgressIndicatorContent$lambda$8$lambda$7(props));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                ProgressIndicatorKt.m3242CircularProgressIndicatorIyT6zlY((Function0) objRememberedValue, modifierApplyModifiers, circularColor, f, circularDeterminateTrackColor, value, fM3221getCircularIndicatorTrackGapSizeD9Ej5fM, composerStartRestartGroup, 0, 0);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-722027626);
                ComposerKt.sourceInformation(composerStartRestartGroup, "125@4802L172");
                Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getTrackColor());
                composerStartRestartGroup.startReplaceGroup(1916371857);
                ComposerKt.sourceInformation(composerStartRestartGroup, "122@4655L31");
                long circularIndeterminateTrackColor = composeOrNull3 == null ? ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull3.m6068unboximpl();
                composerStartRestartGroup.endReplaceGroup();
                StrokeCap strokeCap2 = toStrokeCap(props.getStrokeCap());
                ProgressIndicatorKt.m3239CircularProgressIndicator4lLiAd8(modifierApplyModifiers, circularColor, f, circularIndeterminateTrackColor, strokeCap2 != null ? strokeCap2.getValue() : ProgressIndicatorDefaults.INSTANCE.m3220getCircularIndeterminateStrokeCapKaPHkGw(), 0.0f, composerStartRestartGroup, 0, 32);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ProgressViewKt.CircularProgressIndicatorContent$lambda$9(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularProgressIndicatorContent$lambda$8$lambda$7(CircularProgressIndicatorProps circularProgressIndicatorProps) {
        return circularProgressIndicatorProps.getProgress().floatValue();
    }

    public static final void LinearWavyProgressIndicatorContent(final FunctionalComposableScope functionalComposableScope, final LinearWavyProgressIndicatorProps props, Composer composer, final int i) {
        int i2;
        float fM4058getLinearTrackStopIndicatorSizeD9Ej5fM;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1016280330);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(LinearWavyProgressIndicatorContent)149@5419L83:ProgressView.kt#v15e7d");
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
                ComposerKt.traceEventStart(-1016280330, i2, -1, "expo.modules.ui.LinearWavyProgressIndicatorContent (ProgressView.kt:148)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColor());
            composerStartRestartGroup.startReplaceGroup(-1687812801);
            ComposerKt.sourceInformation(composerStartRestartGroup, "150@5576L14");
            long indicatorColor = composeOrNull == null ? WavyProgressIndicatorDefaults.INSTANCE.getIndicatorColor(composerStartRestartGroup, WavyProgressIndicatorDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getTrackColor());
            composerStartRestartGroup.startReplaceGroup(-1687809824);
            ComposerKt.sourceInformation(composerStartRestartGroup, "151@5674L10");
            long trackColor = composeOrNull2 == null ? WavyProgressIndicatorDefaults.INSTANCE.getTrackColor(composerStartRestartGroup, WavyProgressIndicatorDefaults.$stable) : composeOrNull2.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Float stopSize = props.getStopSize();
            if (stopSize == null) {
                fM4058getLinearTrackStopIndicatorSizeD9Ej5fM = WavyProgressIndicatorDefaults.INSTANCE.m4058getLinearTrackStopIndicatorSizeD9Ej5fM();
            } else {
                fM4058getLinearTrackStopIndicatorSizeD9Ej5fM = Dp.m8892constructorimpl(stopSize.floatValue());
            }
            float f = fM4058getLinearTrackStopIndicatorSizeD9Ej5fM;
            if (props.getProgress() == null) {
                composerStartRestartGroup.startReplaceGroup(-782102670);
                ComposerKt.sourceInformation(composerStartRestartGroup, "163@6012L112");
                WavyProgressIndicatorKt.m4068LinearWavyProgressIndicatorhvuEXSk(modifierApplyModifiers, indicatorColor, trackColor, null, null, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, 0, TypedValues.Position.TYPE_PERCENT_HEIGHT);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-782291150);
                ComposerKt.sourceInformation(composerStartRestartGroup, "156@5866L18,155@5820L176");
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ProgressView.kt#9igjgp");
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(props);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Float.valueOf(ProgressViewKt.LinearWavyProgressIndicatorContent$lambda$11$lambda$10(props));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                WavyProgressIndicatorKt.m4067LinearWavyProgressIndicator1YwxWKA((Function0) objRememberedValue, modifierApplyModifiers, indicatorColor, trackColor, null, null, 0.0f, f, null, 0.0f, 0.0f, composerStartRestartGroup, 0, 0, 1904);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ProgressViewKt.LinearWavyProgressIndicatorContent$lambda$12(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearWavyProgressIndicatorContent$lambda$11$lambda$10(LinearWavyProgressIndicatorProps linearWavyProgressIndicatorProps) {
        return linearWavyProgressIndicatorProps.getProgress().floatValue();
    }

    public static final void CircularWavyProgressIndicatorContent(final FunctionalComposableScope functionalComposableScope, final CircularWavyProgressIndicatorProps props, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(1591281526);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(CircularWavyProgressIndicatorContent)184@6546L83:ProgressView.kt#v15e7d");
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
                ComposerKt.traceEventStart(1591281526, i2, -1, "expo.modules.ui.CircularWavyProgressIndicatorContent (ProgressView.kt:183)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColor());
            composerStartRestartGroup.startReplaceGroup(213197370);
            ComposerKt.sourceInformation(composerStartRestartGroup, "185@6699L13");
            long circularColor = composeOrNull == null ? ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            if (props.getProgress() != null) {
                composerStartRestartGroup.startReplaceGroup(-1980710565);
                ComposerKt.sourceInformation(composerStartRestartGroup, "191@6910L18,190@6862L151");
                Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getTrackColor());
                composerStartRestartGroup.startReplaceGroup(213201327);
                ComposerKt.sourceInformation(composerStartRestartGroup, "188@6827L29");
                long circularDeterminateTrackColor = composeOrNull2 == null ? ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull2.m6068unboximpl();
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ProgressView.kt#9igjgp");
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(props);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Float.valueOf(ProgressViewKt.CircularWavyProgressIndicatorContent$lambda$14$lambda$13(props));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                WavyProgressIndicatorKt.m4065CircularWavyProgressIndicatorL8eD4gc((Function0) objRememberedValue, modifierApplyModifiers, circularColor, circularDeterminateTrackColor, null, null, 0.0f, null, 0.0f, 0.0f, composerStartRestartGroup, 0, 1008);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1980434882);
                ComposerKt.sourceInformation(composerStartRestartGroup, "199@7143L114");
                Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getTrackColor());
                composerStartRestartGroup.startReplaceGroup(213210257);
                ComposerKt.sourceInformation(composerStartRestartGroup, "197@7106L31");
                long circularIndeterminateTrackColor = composeOrNull3 == null ? ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, ProgressIndicatorDefaults.$stable) : composeOrNull3.m6068unboximpl();
                composerStartRestartGroup.endReplaceGroup();
                WavyProgressIndicatorKt.m4066CircularWavyProgressIndicatorhvuEXSk(modifierApplyModifiers, circularColor, circularIndeterminateTrackColor, null, null, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, 0, TypedValues.Position.TYPE_PERCENT_HEIGHT);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ProgressViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ProgressViewKt.CircularWavyProgressIndicatorContent$lambda$15(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularWavyProgressIndicatorContent$lambda$14$lambda$13(CircularWavyProgressIndicatorProps circularWavyProgressIndicatorProps) {
        return circularWavyProgressIndicatorProps.getProgress().floatValue();
    }

    private static final StrokeCap toStrokeCap(String str) {
        String lowerCase;
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -894674659) {
                if (iHashCode != 3035667) {
                    if (iHashCode == 108704142 && lowerCase.equals("round")) {
                        return StrokeCap.m6427boximpl(StrokeCap.INSTANCE.m6435getRoundKaPHkGw());
                    }
                } else if (lowerCase.equals("butt")) {
                    return StrokeCap.m6427boximpl(StrokeCap.INSTANCE.m6434getButtKaPHkGw());
                }
            } else if (lowerCase.equals("square")) {
                return StrokeCap.m6427boximpl(StrokeCap.INSTANCE.m6436getSquareKaPHkGw());
            }
        }
        return null;
    }
}
