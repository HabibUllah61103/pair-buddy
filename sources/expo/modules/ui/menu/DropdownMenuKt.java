package expo.modules.ui.menu;

import android.graphics.Color;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.MenuDefaults;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.facebook.react.modules.dialog.AlertFragment;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.ModifierRegistry;
import expo.modules.ui.SlotView;
import expo.modules.ui.SlotViewKt;
import expo.modules.ui.UtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DropdownMenu.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"DropdownMenuContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/menu/DropdownMenuProps;", "onDismissRequest", "Lkotlin/Function0;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DropdownMenuKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DropdownMenuContent$lambda$3(FunctionalComposableScope functionalComposableScope, DropdownMenuProps dropdownMenuProps, Function0 function0, int i, Composer composer, int i2) {
        DropdownMenuContent(functionalComposableScope, dropdownMenuProps, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void DropdownMenuContent(final FunctionalComposableScope functionalComposableScope, final DropdownMenuProps props, final Function0<Unit> onDismissRequest, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Composer composerStartRestartGroup = composer.startRestartGroup(-2145409353);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(DropdownMenuContent)P(1)20@690L83,20@658L544:DropdownMenu.kt#xj3gtm");
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
                ComposerKt.traceEventStart(-2145409353, i3, -1, "expo.modules.ui.menu.DropdownMenuContent (DropdownMenu.kt:17)");
            }
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(functionalComposableScope.getView(), AlertFragment.ARG_ITEMS);
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierApplyModifiers);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5308constructorimpl = Updater.m5308constructorimpl(composerStartRestartGroup);
            Updater.m5316setimpl(composerM5308constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m5316setimpl(composerM5308constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m5312initimpl(composerM5308constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m5314reconcileimpl(composerM5308constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m5316setimpl(composerM5308constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 851800149, "C22@854L19,22@817L57,28@1057L141,24@880L318:DropdownMenu.kt#xj3gtm");
            ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
            composerStartRestartGroup.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):DropdownMenu.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.menu.DropdownMenuKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(DropdownMenuKt.DropdownMenuContent$lambda$2$lambda$1$lambda$0((ExpoComposeView) obj));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            functionalComposableScope.Children(composableScope, (Function1) objRememberedValue, composerStartRestartGroup, ComposableScope.$stable | 48 | (FunctionalComposableScope.$stable << 6) | ((i3 << 6) & 896));
            Color color = props.getColor();
            androidx.compose.ui.graphics.Color composeOrNull = color != null ? UtilsKt.getComposeOrNull(color) : null;
            composerStartRestartGroup.startReplaceGroup(2105690282);
            ComposerKt.sourceInformation(composerStartRestartGroup, "25@960L14");
            long containerColor = composeOrNull == null ? MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, MenuDefaults.$stable) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            composer2 = composerStartRestartGroup;
            AndroidMenu_androidKt.m1988DropdownMenuIlH_yew(props.getExpanded(), onDismissRequest, null, 0L, null, null, null, containerColor, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-10723092, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.menu.DropdownMenuKt$DropdownMenuContent$1$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer3, Integer num) {
                    invoke(columnScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope DropdownMenu, Composer composer3, int i4) {
                    Intrinsics.checkNotNullParameter(DropdownMenu, "$this$DropdownMenu");
                    ComposerKt.sourceInformation(composer3, "C:DropdownMenu.kt#xj3gtm");
                    if ((i4 & 17) == 16 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-10723092, i4, -1, "expo.modules.ui.menu.DropdownMenuContent.<anonymous>.<anonymous> (DropdownMenu.kt:29)");
                    }
                    SlotView slotView = slotViewFindChildSlotView;
                    if (slotView != null) {
                        composer3.startReplaceGroup(-1714955546);
                        ComposerKt.sourceInformation(composer3, "");
                        ComposableScope composableScope2 = new ComposableScope(null, null, null, null, 15, null);
                        composer3.startReplaceGroup(-1714954440);
                        ComposerKt.sourceInformation(composer3, "*32@1153L9");
                        slotView.Content(composableScope2, composer3, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                        composer3.endReplaceGroup();
                        composer3.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composer2, (i3 >> 3) & 112, 48, 1916);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.menu.DropdownMenuKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DropdownMenuKt.DropdownMenuContent$lambda$3(functionalComposableScope, props, onDismissRequest, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean DropdownMenuContent$lambda$2$lambda$1$lambda$0(ExpoComposeView it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !SlotViewKt.isSlotView(it);
    }
}
