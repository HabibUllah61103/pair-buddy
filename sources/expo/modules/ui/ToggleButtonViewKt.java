package expo.modules.ui;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.IconButtonDefaults;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconToggleButtonColors;
import androidx.compose.material3.ToggleButtonDefaults;
import androidx.compose.material3.ToggleButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import com.facebook.imageutils.JfifUtil;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ToggleButtonView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0007¢\u0006\u0002\u0010\b¨\u0006\f"}, d2 = {"ToggleButtonContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/ToggleButtonProps;", "onCheckedChange", "Lkotlin/Function1;", "Lexpo/modules/ui/ToggleButtonValueChangeEvent;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ToggleButtonProps;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "IconToggleButtonContent", "FilledIconToggleButtonContent", "OutlinedIconToggleButtonContent", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ToggleButtonViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledIconToggleButtonContent$lambda$8(FunctionalComposableScope functionalComposableScope, ToggleButtonProps toggleButtonProps, Function1 function1, int i, Composer composer, int i2) {
        FilledIconToggleButtonContent(functionalComposableScope, toggleButtonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IconToggleButtonContent$lambda$5(FunctionalComposableScope functionalComposableScope, ToggleButtonProps toggleButtonProps, Function1 function1, int i, Composer composer, int i2) {
        IconToggleButtonContent(functionalComposableScope, toggleButtonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedIconToggleButtonContent$lambda$11(FunctionalComposableScope functionalComposableScope, ToggleButtonProps toggleButtonProps, Function1 function1, int i, Composer composer, int i2) {
        OutlinedIconToggleButtonContent(functionalComposableScope, toggleButtonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ToggleButtonContent$lambda$2(FunctionalComposableScope functionalComposableScope, ToggleButtonProps toggleButtonProps, Function1 function1, int i, Composer composer, int i2) {
        ToggleButtonContent(functionalComposableScope, toggleButtonProps, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void ToggleButtonContent(final FunctionalComposableScope functionalComposableScope, final ToggleButtonProps props, final Function1<? super ToggleButtonValueChangeEvent, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1479239328);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ToggleButtonContent)P(1)44@1603L83,50@1897L432,47@1754L53,58@2334L52,45@1689L697:ToggleButtonView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1479239328, i3, -1, "expo.modules.ui.ToggleButtonContent (ToggleButtonView.kt:43)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            boolean checked = props.getChecked();
            boolean enabled = props.getEnabled();
            androidx.compose.material3.ToggleButtonColors toggleButtonColorsM3855toggleButtonColors5tl4gsc = ToggleButtonDefaults.INSTANCE.m3855toggleButtonColors5tl4gsc(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), UtilsKt.getCompose(props.getColors().getCheckedContainerColor()), UtilsKt.getCompose(props.getColors().getCheckedContentColor()), composerStartRestartGroup, ToggleButtonDefaults.$stable << 18, 0);
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ToggleButtonView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ToggleButtonViewKt.ToggleButtonContent$lambda$1$lambda$0(onCheckedChange, ((Boolean) obj).booleanValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            composer2 = composerStartRestartGroup;
            ToggleButtonKt.ToggleButton(checked, (Function1) objRememberedValue, modifierApplyModifiers, enabled, null, toggleButtonColorsM3855toggleButtonColors5tl4gsc, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-583527806, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.ToggleButtonViewKt.ToggleButtonContent.2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer3, Integer num) {
                    invoke(rowScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope ToggleButton, Composer composer3, int i4) {
                    Intrinsics.checkNotNullParameter(ToggleButton, "$this$ToggleButton");
                    ComposerKt.sourceInformation(composer3, "C59@2340L42:ToggleButtonView.kt#v15e7d");
                    if ((i4 & 6) == 0) {
                        i4 |= composer3.changed(ToggleButton) ? 4 : 2;
                    }
                    if ((i4 & 19) == 18 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-583527806, i4, -1, "expo.modules.ui.ToggleButtonContent.<anonymous> (ToggleButtonView.kt:59)");
                    }
                    functionalComposableScope.Children(new ComposableScope(ToggleButton, null, null, null, 14, null), composer3, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composer2, 0, 6, 976);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ToggleButtonViewKt.ToggleButtonContent$lambda$2(functionalComposableScope, props, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ToggleButtonContent$lambda$1$lambda$0(Function1 function1, boolean z) {
        function1.invoke(new ToggleButtonValueChangeEvent(z));
        return Unit.INSTANCE;
    }

    public static final void IconToggleButtonContent(final FunctionalComposableScope functionalComposableScope, final ToggleButtonProps props, final Function1<? super ToggleButtonValueChangeEvent, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(-810863641);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(IconToggleButtonContent)P(1)68@2581L83,74@2877L436,71@2736L53,82@3318L37,69@2667L688:ToggleButtonView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-810863641, i3, -1, "expo.modules.ui.IconToggleButtonContent (ToggleButtonView.kt:67)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            boolean checked = props.getChecked();
            boolean enabled = props.getEnabled();
            IconToggleButtonColors iconToggleButtonColorsM2793iconToggleButtonColors5tl4gsc = IconButtonDefaults.INSTANCE.m2793iconToggleButtonColors5tl4gsc(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), UtilsKt.getCompose(props.getColors().getCheckedContainerColor()), UtilsKt.getCompose(props.getColors().getCheckedContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 18, 0);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ToggleButtonView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ToggleButtonViewKt.IconToggleButtonContent$lambda$4$lambda$3(onCheckedChange, ((Boolean) obj).booleanValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            IconButtonKt.IconToggleButton(checked, (Function1<? super Boolean, Unit>) objRememberedValue, modifierApplyModifiers, enabled, iconToggleButtonColorsM2793iconToggleButtonColors5tl4gsc, (MutableInteractionSource) null, (Shape) null, ComposableLambdaKt.rememberComposableLambda(1961276794, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ToggleButtonViewKt.IconToggleButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C83@3324L27:ToggleButtonView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1961276794, i4, -1, "expo.modules.ui.IconToggleButtonContent.<anonymous> (ToggleButtonView.kt:83)");
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ToggleButtonViewKt.IconToggleButtonContent$lambda$5(functionalComposableScope, props, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IconToggleButtonContent$lambda$4$lambda$3(Function1 function1, boolean z) {
        function1.invoke(new ToggleButtonValueChangeEvent(z));
        return Unit.INSTANCE;
    }

    public static final void FilledIconToggleButtonContent(final FunctionalComposableScope functionalComposableScope, final ToggleButtonProps props, final Function1<? super ToggleButtonValueChangeEvent, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(1831519653);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(FilledIconToggleButtonContent)P(1)92@3556L83,98@3858L442,95@3717L53,106@4305L37,93@3642L700:ToggleButtonView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1831519653, i3, -1, "expo.modules.ui.FilledIconToggleButtonContent (ToggleButtonView.kt:91)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            boolean checked = props.getChecked();
            boolean enabled = props.getEnabled();
            IconToggleButtonColors iconToggleButtonColorsM2783filledIconToggleButtonColors5tl4gsc = IconButtonDefaults.INSTANCE.m2783filledIconToggleButtonColors5tl4gsc(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), UtilsKt.getCompose(props.getColors().getCheckedContainerColor()), UtilsKt.getCompose(props.getColors().getCheckedContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 18, 0);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ToggleButtonView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ToggleButtonViewKt.FilledIconToggleButtonContent$lambda$7$lambda$6(onCheckedChange, ((Boolean) obj).booleanValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            IconButtonKt.FilledIconToggleButton(checked, (Function1<? super Boolean, Unit>) objRememberedValue, modifierApplyModifiers, enabled, (Shape) null, iconToggleButtonColorsM2783filledIconToggleButtonColors5tl4gsc, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-945153606, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ToggleButtonViewKt.FilledIconToggleButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C107@4311L27:ToggleButtonView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-945153606, i4, -1, "expo.modules.ui.FilledIconToggleButtonContent.<anonymous> (ToggleButtonView.kt:107)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 12582912, 80);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ToggleButtonViewKt.FilledIconToggleButtonContent$lambda$8(functionalComposableScope, props, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FilledIconToggleButtonContent$lambda$7$lambda$6(Function1 function1, boolean z) {
        function1.invoke(new ToggleButtonValueChangeEvent(z));
        return Unit.INSTANCE;
    }

    public static final void OutlinedIconToggleButtonContent(final FunctionalComposableScope functionalComposableScope, final ToggleButtonProps props, final Function1<? super ToggleButtonValueChangeEvent, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(927498405);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(OutlinedIconToggleButtonContent)P(1)116@4545L83,122@4849L444,119@4708L53,130@5298L37,117@4631L704:ToggleButtonView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 147) != 146 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(927498405, i3, -1, "expo.modules.ui.OutlinedIconToggleButtonContent (ToggleButtonView.kt:115)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            boolean checked = props.getChecked();
            boolean enabled = props.getEnabled();
            IconToggleButtonColors iconToggleButtonColorsM2799outlinedIconToggleButtonColors5tl4gsc = IconButtonDefaults.INSTANCE.m2799outlinedIconToggleButtonColors5tl4gsc(UtilsKt.getCompose(props.getColors().getContainerColor()), UtilsKt.getCompose(props.getColors().getContentColor()), UtilsKt.getCompose(props.getColors().getDisabledContainerColor()), UtilsKt.getCompose(props.getColors().getDisabledContentColor()), UtilsKt.getCompose(props.getColors().getCheckedContainerColor()), UtilsKt.getCompose(props.getColors().getCheckedContentColor()), composerStartRestartGroup, IconButtonDefaults.$stable << 18, 0);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):ToggleButtonView.kt#9igjgp");
            boolean z = (i3 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ToggleButtonViewKt.OutlinedIconToggleButtonContent$lambda$10$lambda$9(onCheckedChange, ((Boolean) obj).booleanValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            IconButtonKt.OutlinedIconToggleButton(checked, (Function1<? super Boolean, Unit>) objRememberedValue, modifierApplyModifiers, enabled, (Shape) null, iconToggleButtonColorsM2799outlinedIconToggleButtonColors5tl4gsc, (BorderStroke) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-644351877, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ToggleButtonViewKt.OutlinedIconToggleButtonContent.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C131@5304L27:ToggleButtonView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-644351877, i4, -1, "expo.modules.ui.OutlinedIconToggleButtonContent.<anonymous> (ToggleButtonView.kt:131)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663296, JfifUtil.MARKER_RST0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ToggleButtonViewKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ToggleButtonViewKt.OutlinedIconToggleButtonContent$lambda$11(functionalComposableScope, props, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedIconToggleButtonContent$lambda$10$lambda$9(Function1 function1, boolean z) {
        function1.invoke(new ToggleButtonValueChangeEvent(z));
        return Unit.INSTANCE;
    }
}
