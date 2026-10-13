package expo.modules.ui;

import androidx.compose.material3.DividerDefaults;
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DividerView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0007"}, d2 = {"HorizontalDividerContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/DividerProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/DividerProps;Landroidx/compose/runtime/Composer;I)V", "VerticalDividerContent", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DividerViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit HorizontalDividerContent$lambda$0(FunctionalComposableScope functionalComposableScope, DividerProps dividerProps, int i, Composer composer, int i2) {
        HorizontalDividerContent(functionalComposableScope, dividerProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit VerticalDividerContent$lambda$1(FunctionalComposableScope functionalComposableScope, DividerProps dividerProps, int i, Composer composer, int i2) {
        VerticalDividerContent(functionalComposableScope, dividerProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void HorizontalDividerContent(final FunctionalComposableScope functionalComposableScope, final DividerProps props, Composer composer, final int i) {
        int i2;
        float fM2524getThicknessD9Ej5fM;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-905354516);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(HorizontalDividerContent)20@681L83,19@630L268:DividerView.kt#v15e7d");
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
                ComposerKt.traceEventStart(-905354516, i2, -1, "expo.modules.ui.HorizontalDividerContent (DividerView.kt:18)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Float thickness = props.getThickness();
            if (thickness == null) {
                fM2524getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m2524getThicknessD9Ej5fM();
            } else {
                fM2524getThicknessD9Ej5fM = Dp.m8892constructorimpl(thickness.floatValue());
            }
            float f = fM2524getThicknessD9Ej5fM;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColor());
            composerStartRestartGroup.startReplaceGroup(1832681054);
            ComposerKt.sourceInformation(composerStartRestartGroup, "22@889L5");
            long color = composeOrNull == null ? DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, DividerDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            DividerKt.m2530HorizontalDivider9IZ8Weo(modifierApplyModifiers, f, color, composerStartRestartGroup, 0, 0);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DividerViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DividerViewKt.HorizontalDividerContent$lambda$0(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void VerticalDividerContent(final FunctionalComposableScope functionalComposableScope, final DividerProps props, Composer composer, final int i) {
        int i2;
        float fM2524getThicknessD9Ej5fM;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(690924094);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(VerticalDividerContent)29@1041L83,28@992L266:DividerView.kt#v15e7d");
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
                ComposerKt.traceEventStart(690924094, i2, -1, "expo.modules.ui.VerticalDividerContent (DividerView.kt:27)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            Float thickness = props.getThickness();
            if (thickness == null) {
                fM2524getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m2524getThicknessD9Ej5fM();
            } else {
                fM2524getThicknessD9Ej5fM = Dp.m8892constructorimpl(thickness.floatValue());
            }
            float f = fM2524getThicknessD9Ej5fM;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColor());
            composerStartRestartGroup.startReplaceGroup(-1741866832);
            ComposerKt.sourceInformation(composerStartRestartGroup, "31@1249L5");
            long color = composeOrNull == null ? DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, DividerDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            DividerKt.m2531VerticalDivider9IZ8Weo(modifierApplyModifiers, f, color, composerStartRestartGroup, 0, 0);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.DividerViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DividerViewKt.VerticalDividerContent$lambda$1(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
