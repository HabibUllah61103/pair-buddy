package expo.modules.ui;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.material3.BadgeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BadgedBoxView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"BadgedBoxContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/BadgedBoxProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/BadgedBoxProps;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class BadgedBoxViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BadgedBoxContent$lambda$0(FunctionalComposableScope functionalComposableScope, BadgedBoxProps badgedBoxProps, int i, Composer composer, int i2) {
        BadgedBoxContent(functionalComposableScope, badgedBoxProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void BadgedBoxContent(final FunctionalComposableScope functionalComposableScope, final BadgedBoxProps props, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-14405609);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(BadgedBoxContent)18@557L38,19@629L83,20@717L57,17@534L240:BadgedBoxView.kt#v15e7d");
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
                ComposerKt.traceEventStart(-14405609, i2, -1, "expo.modules.ui.BadgedBoxContent (BadgedBoxView.kt:14)");
            }
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), "badge");
            BadgeKt.BadgedBox(ComposableLambdaKt.rememberComposableLambda(132927119, true, new Function3<BoxScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.BadgedBoxViewKt.BadgedBoxContent.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Composer composer3, Integer num) {
                    invoke(boxScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(BoxScope BadgedBox, Composer composer3, int i3) {
                    Unit unit;
                    Intrinsics.checkNotNullParameter(BadgedBox, "$this$BadgedBox");
                    ComposerKt.sourceInformation(composer3, "C18@586L7:BadgedBoxView.kt#v15e7d");
                    if ((i3 & 17) == 16 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(132927119, i3, -1, "expo.modules.ui.BadgedBoxContent.<anonymous> (BadgedBoxView.kt:18)");
                    }
                    SlotView slotView = slotViewFindChildSlotView;
                    composer3.startReplaceGroup(-1106057093);
                    ComposerKt.sourceInformation(composer3, "18@570L12");
                    if (slotView == null) {
                        unit = null;
                    } else {
                        SlotViewKt.renderSlot(slotView, composer3, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                        unit = Unit.INSTANCE;
                    }
                    composer3.endReplaceGroup();
                    if (unit == null) {
                        BadgeKt.m2051BadgeeopBjH0(null, 0L, 0L, null, composer3, 0, 15);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3)), ComposableLambdaKt.rememberComposableLambda(-573669487, true, new AnonymousClass2(functionalComposableScope), composerStartRestartGroup, 54), composerStartRestartGroup, 390, 0);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.BadgedBoxViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BadgedBoxViewKt.BadgedBoxContent$lambda$0(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.BadgedBoxViewKt$BadgedBoxContent$2, reason: invalid class name */
    /* JADX INFO: compiled from: BadgedBoxView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass2 implements Function3<BoxScope, Composer, Integer, Unit> {
        final /* synthetic */ FunctionalComposableScope $this_BadgedBoxContent;

        AnonymousClass2(FunctionalComposableScope functionalComposableScope) {
            this.$this_BadgedBoxContent = functionalComposableScope;
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Composer composer, Integer num) {
            invoke(boxScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invoke$lambda$1$lambda$0(ExpoComposeView it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return !SlotViewKt.isSlotView(it);
        }

        public final void invoke(BoxScope BadgedBox, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(BadgedBox, "$this$BadgedBox");
            ComposerKt.sourceInformation(composer, "C21@751L19,21@723L47:BadgedBoxView.kt#v15e7d");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-573669487, i, -1, "expo.modules.ui.BadgedBoxContent.<anonymous> (BadgedBoxView.kt:21)");
            }
            FunctionalComposableScope functionalComposableScope = this.$this_BadgedBoxContent;
            ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
            composer.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composer, "CC(remember):BadgedBoxView.kt#9igjgp");
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.BadgedBoxViewKt$BadgedBoxContent$2$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(BadgedBoxViewKt.AnonymousClass2.invoke$lambda$1$lambda$0((ExpoComposeView) obj));
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            functionalComposableScope.Children(composableScope, (Function1) objRememberedValue, composer, ComposableScope.$stable | 48 | (FunctionalComposableScope.$stable << 6));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }
}
