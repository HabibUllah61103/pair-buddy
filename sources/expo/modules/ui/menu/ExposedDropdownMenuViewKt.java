package expo.modules.ui.menu;

import android.graphics.Color;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.MenuDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.ExposedDropdownMenuBoxComposableScopeKt;
import expo.modules.ui.ModifierRegistry;
import expo.modules.ui.UtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExposedDropdownMenuView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"ExposedDropdownMenuContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/menu/ExposedDropdownMenuProps;", "onDismissRequest", "Lkotlin/Function0;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/ExposedDropdownMenuProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ExposedDropdownMenuViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExposedDropdownMenuContent$lambda$1(FunctionalComposableScope functionalComposableScope, ExposedDropdownMenuProps exposedDropdownMenuProps, Function0 function0, int i, Composer composer, int i2) {
        ExposedDropdownMenuContent(functionalComposableScope, exposedDropdownMenuProps, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void ExposedDropdownMenuContent(final FunctionalComposableScope functionalComposableScope, final ExposedDropdownMenuProps props, final Function0<Unit> onDismissRequest, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Composer composerStartRestartGroup = composer.startRestartGroup(2093765776);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ExposedDropdownMenuContent)P(1)26@929L7,*34@1263L83,35@1353L41,30@1041L353:ExposedDropdownMenuView.kt#xj3gtm");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onDismissRequest) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2093765776, i3, -1, "expo.modules.ui.menu.ExposedDropdownMenuContent (ExposedDropdownMenuView.kt:25)");
            }
            ProvidableCompositionLocal<ExposedDropdownMenuBoxScope> localExposedDropdownMenuBoxScope = ExposedDropdownMenuBoxComposableScopeKt.getLocalExposedDropdownMenuBoxScope();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composerStartRestartGroup.consume(localExposedDropdownMenuBoxScope);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) objConsume;
            if (exposedDropdownMenuBoxScope == null) {
                throw new IllegalStateException("ExposedDropdownMenu can only be used inside ExposedDropdownMenuBox".toString());
            }
            boolean expanded = props.getExpanded();
            Color containerColor = props.getContainerColor();
            androidx.compose.ui.graphics.Color composeOrNull = containerColor != null ? UtilsKt.getComposeOrNull(containerColor) : null;
            composerStartRestartGroup.startReplaceGroup(2064230962);
            ComposerKt.sourceInformation(composerStartRestartGroup, "33@1213L14");
            long containerColor2 = composeOrNull == null ? MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, MenuDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            exposedDropdownMenuBoxScope.m2574ExposedDropdownMenuvNxi1II(expanded, onDismissRequest, ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3)), null, false, null, containerColor2, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-2018982419, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.ExposedDropdownMenuViewKt$ExposedDropdownMenuContent$1$1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ExposedDropdownMenu, Composer composer2, int i4) {
                    Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
                    ComposerKt.sourceInformation(composer2, "C36@1361L27:ExposedDropdownMenuView.kt#xj3gtm");
                    if ((i4 & 17) == 16 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-2018982419, i4, -1, "expo.modules.ui.menu.ExposedDropdownMenuContent.<anonymous>.<anonymous> (ExposedDropdownMenuView.kt:36)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 >> 3) & 112, (ExposedDropdownMenuBoxScope.$stable << 3) | 6, 952);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.menu.ExposedDropdownMenuViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ExposedDropdownMenuViewKt.ExposedDropdownMenuContent$lambda$1(functionalComposableScope, props, onDismissRequest, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
