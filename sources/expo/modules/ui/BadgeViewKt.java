package expo.modules.ui;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.BadgeDefaults;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BadgeView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\u0007H\u0002\"\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u000b"}, d2 = {"BadgeContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/BadgeProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/BadgeProps;Landroidx/compose/runtime/Composer;I)V", "ensureBadgeContentCircular", "Landroidx/compose/ui/Modifier;", "BadgeHorizontalPaddingTotal", "Landroidx/compose/ui/unit/Dp;", "F", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class BadgeViewKt {
    private static final float BadgeHorizontalPaddingTotal = Dp.m8892constructorimpl(8);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BadgeContent$lambda$0(FunctionalComposableScope functionalComposableScope, BadgeProps badgeProps, int i, Composer composer, int i2) {
        BadgeContent(functionalComposableScope, badgeProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void BadgeContent(final FunctionalComposableScope functionalComposableScope, final BadgeProps props, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1730918690);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(BadgeContent)26@982L83:BadgeView.kt#v15e7d");
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
                ComposerKt.traceEventStart(-1730918690, i2, -1, "expo.modules.ui.BadgeContent (BadgeView.kt:24)");
            }
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getContainerColor());
            composerStartRestartGroup.startReplaceGroup(-1260514048);
            ComposerKt.sourceInformation(composerStartRestartGroup, "25@933L14");
            long containerColor = composeOrNull == null ? BadgeDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, BadgeDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            composerStartRestartGroup = composerStartRestartGroup;
            if (functionalComposableScope.getView().getChildCount() > 0) {
                composerStartRestartGroup.startReplaceGroup(-421015116);
                ComposerKt.sourceInformation(composerStartRestartGroup, "33@1278L174,29@1094L358");
                Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getContentColor());
                composerStartRestartGroup.startReplaceGroup(-1260503959);
                ComposerKt.sourceInformation(composerStartRestartGroup, "32@1232L39");
                long jM2296contentColorForek8zF_U = composeOrNull2 == null ? ColorSchemeKt.m2296contentColorForek8zF_U(containerColor, composerStartRestartGroup, 0) : composeOrNull2.m6068unboximpl();
                composerStartRestartGroup.endReplaceGroup();
                BadgeKt.m2051BadgeeopBjH0(modifierApplyModifiers, containerColor, jM2296contentColorForek8zF_U, ComposableLambdaKt.rememberComposableLambda(-691536746, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.BadgeViewKt.BadgeContent.1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer2, Integer num) {
                        invoke(rowScope, composer2, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope Badge, Composer composer2, int i3) {
                        Intrinsics.checkNotNullParameter(Badge, "$this$Badge");
                        ComposerKt.sourceInformation(composer2, "C34@1286L160:BadgeView.kt#v15e7d");
                        if ((i3 & 17) == 16 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-691536746, i3, -1, "expo.modules.ui.BadgeContent.<anonymous> (BadgeView.kt:34)");
                        }
                        Modifier modifierEnsureBadgeContentCircular = BadgeViewKt.ensureBadgeContentCircular(Modifier.INSTANCE);
                        Alignment center = Alignment.INSTANCE.getCenter();
                        FunctionalComposableScope functionalComposableScope2 = functionalComposableScope;
                        ComposerKt.sourceInformationMarkerStart(composer2, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierEnsureBadgeContentCircular);
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                        if (!(composer2.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5308constructorimpl = Updater.m5308constructorimpl(composer2);
                        Updater.m5316setimpl(composerM5308constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m5316setimpl(composerM5308constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Updater.m5312initimpl(composerM5308constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                        Updater.m5314reconcileimpl(composerM5308constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5316setimpl(composerM5308constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer2, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer2, 1359230904, "C38@1411L27:BadgeView.kt#v15e7d");
                        functionalComposableScope2.Children(new ComposableScope(null, null, null, null, 15, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 3072, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-420650587);
                ComposerKt.sourceInformation(composerStartRestartGroup, "43@1532L85");
                BadgeKt.m2051BadgeeopBjH0(modifierApplyModifiers, containerColor, 0L, null, composerStartRestartGroup, 0, 12);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.BadgeViewKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BadgeViewKt.BadgeContent$lambda$0(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier ensureBadgeContentCircular(Modifier modifier) {
        return LayoutModifierKt.layout(modifier, new Function3() { // from class: expo.modules.ui.BadgeViewKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return BadgeViewKt.ensureBadgeContentCircular$lambda$2((MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult ensureBadgeContentCircular$lambda$2(MeasureScope layout, Measurable measurable, Constraints constraints) {
        Intrinsics.checkNotNullParameter(layout, "$this$layout");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable placeableMo7509measureBRTryo0 = measurable.mo7509measureBRTryo0(constraints.getValue());
        final int iMax = Math.max(placeableMo7509measureBRTryo0.getWidth(), placeableMo7509measureBRTryo0.getHeight() - layout.mo460roundToPx0680j_4(BadgeHorizontalPaddingTotal));
        return MeasureScope.layout$default(layout, iMax, placeableMo7509measureBRTryo0.getHeight(), null, new Function1() { // from class: expo.modules.ui.BadgeViewKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BadgeViewKt.ensureBadgeContentCircular$lambda$2$lambda$1(placeableMo7509measureBRTryo0, iMax, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ensureBadgeContentCircular$lambda$2$lambda$1(Placeable placeable, int i, Placeable.PlacementScope layout) {
        Intrinsics.checkNotNullParameter(layout, "$this$layout");
        Placeable.PlacementScope.placeRelative$default(layout, placeable, (i - placeable.getWidth()) / 2, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }
}
