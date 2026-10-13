package expo.modules.ui;

import androidx.compose.material3.MultiChoiceSegmentedButtonRowScope;
import androidx.compose.material3.SegmentedButtonKt;
import androidx.compose.material3.SingleChoiceSegmentedButtonRowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeViewKt;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SegmentedControlView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"SingleChoiceSegmentedButtonRowContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/SingleChoiceSegmentedButtonRowProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SingleChoiceSegmentedButtonRowProps;Landroidx/compose/runtime/Composer;I)V", "MultiChoiceSegmentedButtonRowContent", "Lexpo/modules/ui/MultiChoiceSegmentedButtonRowProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/MultiChoiceSegmentedButtonRowProps;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SegmentedControlViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit MultiChoiceSegmentedButtonRowContent$lambda$1(FunctionalComposableScope functionalComposableScope, MultiChoiceSegmentedButtonRowProps multiChoiceSegmentedButtonRowProps, int i, Composer composer, int i2) {
        MultiChoiceSegmentedButtonRowContent(functionalComposableScope, multiChoiceSegmentedButtonRowProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SingleChoiceSegmentedButtonRowContent$lambda$0(FunctionalComposableScope functionalComposableScope, SingleChoiceSegmentedButtonRowProps singleChoiceSegmentedButtonRowProps, int i, Composer composer, int i2) {
        SingleChoiceSegmentedButtonRowContent(functionalComposableScope, singleChoiceSegmentedButtonRowProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void SingleChoiceSegmentedButtonRowContent(final FunctionalComposableScope functionalComposableScope, final SingleChoiceSegmentedButtonRowProps props, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(1080114812);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(SingleChoiceSegmentedButtonRowContent)17@692L83,18@780L90,16@628L242:SegmentedControlView.kt#v15e7d");
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
                ComposerKt.traceEventStart(1080114812, i2, -1, "expo.modules.ui.SingleChoiceSegmentedButtonRowContent (SegmentedControlView.kt:15)");
            }
            SegmentedButtonKt.m3390SingleChoiceSegmentedButtonRowuFdPcIQ(ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6)), 0.0f, ComposableLambdaKt.rememberComposableLambda(-2124498095, true, new Function3<SingleChoiceSegmentedButtonRowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.SegmentedControlViewKt.SingleChoiceSegmentedButtonRowContent.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(SingleChoiceSegmentedButtonRowScope singleChoiceSegmentedButtonRowScope, Composer composer3, Integer num) {
                    invoke(singleChoiceSegmentedButtonRowScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SingleChoiceSegmentedButtonRowScope SingleChoiceSegmentedButtonRow, Composer composer3, int i3) {
                    Intrinsics.checkNotNullParameter(SingleChoiceSegmentedButtonRow, "$this$SingleChoiceSegmentedButtonRow");
                    ComposerKt.sourceInformation(composer3, "C19@786L80:SegmentedControlView.kt#v15e7d");
                    if ((i3 & 6) == 0) {
                        i3 |= composer3.changed(SingleChoiceSegmentedButtonRow) ? 4 : 2;
                    }
                    if ((i3 & 19) == 18 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-2124498095, i3, -1, "expo.modules.ui.SingleChoiceSegmentedButtonRowContent.<anonymous> (SegmentedControlView.kt:19)");
                    }
                    functionalComposableScope.Children(ExpoComposeViewKt.with(new ComposableScope(null, null, null, null, 15, null), SingleChoiceSegmentedButtonRow), composer3, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 384, 2);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.SegmentedControlViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SegmentedControlViewKt.SingleChoiceSegmentedButtonRowContent$lambda$0(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void MultiChoiceSegmentedButtonRowContent(final FunctionalComposableScope functionalComposableScope, final MultiChoiceSegmentedButtonRowProps props, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(1083852984);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(MultiChoiceSegmentedButtonRowContent)30@1172L83,31@1260L89,29@1109L240:SegmentedControlView.kt#v15e7d");
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
                ComposerKt.traceEventStart(1083852984, i2, -1, "expo.modules.ui.MultiChoiceSegmentedButtonRowContent (SegmentedControlView.kt:28)");
            }
            SegmentedButtonKt.m3389MultiChoiceSegmentedButtonRowuFdPcIQ(ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6)), 0.0f, ComposableLambdaKt.rememberComposableLambda(-1533901015, true, new Function3<MultiChoiceSegmentedButtonRowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.SegmentedControlViewKt.MultiChoiceSegmentedButtonRowContent.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(MultiChoiceSegmentedButtonRowScope multiChoiceSegmentedButtonRowScope, Composer composer3, Integer num) {
                    invoke(multiChoiceSegmentedButtonRowScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(MultiChoiceSegmentedButtonRowScope MultiChoiceSegmentedButtonRow, Composer composer3, int i3) {
                    Intrinsics.checkNotNullParameter(MultiChoiceSegmentedButtonRow, "$this$MultiChoiceSegmentedButtonRow");
                    ComposerKt.sourceInformation(composer3, "C32@1266L79:SegmentedControlView.kt#v15e7d");
                    if ((i3 & 6) == 0) {
                        i3 |= composer3.changed(MultiChoiceSegmentedButtonRow) ? 4 : 2;
                    }
                    if ((i3 & 19) == 18 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1533901015, i3, -1, "expo.modules.ui.MultiChoiceSegmentedButtonRowContent.<anonymous> (SegmentedControlView.kt:32)");
                    }
                    functionalComposableScope.Children(ExpoComposeViewKt.with(new ComposableScope(null, null, null, null, 15, null), MultiChoiceSegmentedButtonRow), composer3, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 384, 2);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.SegmentedControlViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SegmentedControlViewKt.MultiChoiceSegmentedButtonRowContent$lambda$1(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
