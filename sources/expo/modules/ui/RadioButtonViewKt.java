package expo.modules.ui;

import androidx.compose.material3.RadioButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RadioButtonView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a)\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"RadioButtonContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/RadioButtonProps;", ViewProps.ON_CLICK, "Lkotlin/Function0;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/RadioButtonProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RadioButtonViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RadioButtonContent$lambda$0(FunctionalComposableScope functionalComposableScope, RadioButtonProps radioButtonProps, Function0 function0, int i, Composer composer, int i2) {
        RadioButtonContent(functionalComposableScope, radioButtonProps, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void RadioButtonContent(final FunctionalComposableScope functionalComposableScope, final RadioButtonProps props, Function0<Unit> function0, Composer composer, final int i) {
        int i2;
        final Function0<Unit> function1;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(1386703848);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(RadioButtonContent)P(1)21@596L83,18@497L186:RadioButtonView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function0) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1386703848, i2, -1, "expo.modules.ui.RadioButtonContent (RadioButtonView.kt:17)");
            }
            function1 = function0;
            RadioButtonKt.RadioButton(props.getSelected(), function1, ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6)), false, null, null, composerStartRestartGroup, (i2 >> 3) & 112, 56);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            function1 = function0;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.RadioButtonViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RadioButtonViewKt.RadioButtonContent$lambda$0(functionalComposableScope, props, function1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
