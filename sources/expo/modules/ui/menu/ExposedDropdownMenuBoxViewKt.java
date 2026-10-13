package expo.modules.ui.menu;

import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.ExposedDropdownMenuBoxComposableScopeKt;
import expo.modules.ui.ModifierRegistry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExposedDropdownMenuBoxView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"ExposedDropdownMenuBoxContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/menu/ExposedDropdownMenuBoxProps;", "onExpandedChange", "Lkotlin/Function1;", "", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/ExposedDropdownMenuBoxProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ExposedDropdownMenuBoxViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ExposedDropdownMenuBoxContent$lambda$0(FunctionalComposableScope functionalComposableScope, ExposedDropdownMenuBoxProps exposedDropdownMenuBoxProps, Function1 function1, int i, Composer composer, int i2) {
        ExposedDropdownMenuBoxContent(functionalComposableScope, exposedDropdownMenuBoxProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void ExposedDropdownMenuBoxContent(final FunctionalComposableScope functionalComposableScope, final ExposedDropdownMenuBoxProps props, Function1<? super Boolean, Unit> onExpandedChange, Composer composer, final int i) {
        int i2;
        final Function1<? super Boolean, Unit> function1;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onExpandedChange, "onExpandedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1889259556);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ExposedDropdownMenuBoxContent)P(1)27@991L83,28@1079L124,24@863L340:ExposedDropdownMenuBoxView.kt#xj3gtm");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onExpandedChange) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1889259556, i2, -1, "expo.modules.ui.menu.ExposedDropdownMenuBoxContent (ExposedDropdownMenuBoxView.kt:23)");
            }
            function1 = onExpandedChange;
            ExposedDropdownMenuKt.ExposedDropdownMenuBox(props.getExpanded(), function1, ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6)), ComposableLambdaKt.rememberComposableLambda(1253516678, true, new Function3<ExposedDropdownMenuBoxScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.ExposedDropdownMenuBoxViewKt.ExposedDropdownMenuBoxContent.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope, Composer composer3, Integer num) {
                    invoke(exposedDropdownMenuBoxScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer composer3, int i3) {
                    Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
                    ComposerKt.sourceInformation(composer3, "C29@1158L41,29@1085L114:ExposedDropdownMenuBoxView.kt#xj3gtm");
                    if ((i3 & 6) == 0) {
                        i3 |= (i3 & 8) == 0 ? composer3.changed(ExposedDropdownMenuBox) : composer3.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
                    }
                    if ((i3 & 19) == 18 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1253516678, i3, -1, "expo.modules.ui.menu.ExposedDropdownMenuBoxContent.<anonymous> (ExposedDropdownMenuBoxView.kt:29)");
                    }
                    ProvidedValue<ExposedDropdownMenuBoxScope> providedValueProvides = ExposedDropdownMenuBoxComposableScopeKt.getLocalExposedDropdownMenuBoxScope().provides(ExposedDropdownMenuBox);
                    final FunctionalComposableScope functionalComposableScope2 = functionalComposableScope;
                    CompositionLocalKt.CompositionLocalProvider(providedValueProvides, ComposableLambdaKt.rememberComposableLambda(-1056675642, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.ExposedDropdownMenuBoxViewKt.ExposedDropdownMenuBoxContent.1.1
                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                            invoke(composer4, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer4, int i4) {
                            ComposerKt.sourceInformation(composer4, "C30@1166L27:ExposedDropdownMenuBoxView.kt#xj3gtm");
                            if ((i4 & 3) == 2 && composer4.getSkipping()) {
                                composer4.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1056675642, i4, -1, "expo.modules.ui.menu.ExposedDropdownMenuBoxContent.<anonymous>.<anonymous> (ExposedDropdownMenuBoxView.kt:30)");
                            }
                            functionalComposableScope2.Children(new ComposableScope(null, null, null, null, 15, null), composer4, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, composer3, 54), composer3, ProvidedValue.$stable | 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i2 >> 3) & 112) | 3072, 0);
            composer2 = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            function1 = onExpandedChange;
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.menu.ExposedDropdownMenuBoxViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ExposedDropdownMenuBoxViewKt.ExposedDropdownMenuBoxContent$lambda$0(functionalComposableScope, props, function1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
