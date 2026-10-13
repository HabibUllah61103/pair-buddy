package expo.modules.ui;

import android.graphics.Color;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SurfaceView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"SurfaceContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/SurfaceProps;", ViewProps.ON_CLICK, "Lkotlin/Function0;", "onCheckedChange", "Lkotlin/Function1;", "", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/SurfaceProps;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SurfaceViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SurfaceContent$lambda$9(FunctionalComposableScope functionalComposableScope, SurfaceProps surfaceProps, Function0 function0, Function1 function1, int i, Composer composer, int i2) {
        SurfaceContent(functionalComposableScope, surfaceProps, function0, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void SurfaceContent(final FunctionalComposableScope functionalComposableScope, final SurfaceProps props, final Function0<Unit> onClick, final Function1<? super Boolean, Unit> onCheckedChange, Composer composer, final int i) {
        int i2;
        BorderStroke borderStrokeM334BorderStrokecXLIe8U;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onCheckedChange, "onCheckedChange");
        Composer composerStartRestartGroup = composer.startRestartGroup(-923732453);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(SurfaceContent)P(2,1)42@1313L83,45@1558L77,48@1783L11,49@1818L201,56@2061L31:SurfaceView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onClick) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(onCheckedChange) ? 2048 : 1024;
        }
        int i3 = i2;
        if ((i3 & 1171) != 1170 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-923732453, i3, -1, "expo.modules.ui.SurfaceContent (SurfaceView.kt:41)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            Color color = props.getColor();
            androidx.compose.ui.graphics.Color colorM6048boximpl = color != null ? androidx.compose.ui.graphics.Color.m6048boximpl(UtilsKt.getCompose(color)) : null;
            composerStartRestartGroup.startReplaceGroup(1351351860);
            ComposerKt.sourceInformation(composerStartRestartGroup, "43@1449L11");
            long surface = colorM6048boximpl == null ? MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, MaterialTheme.$stable).getSurface() : colorM6048boximpl.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Color contentColor = props.getContentColor();
            androidx.compose.ui.graphics.Color colorM6048boximpl2 = contentColor != null ? androidx.compose.ui.graphics.Color.m6048boximpl(UtilsKt.getCompose(contentColor)) : null;
            composerStartRestartGroup.startReplaceGroup(1351354384);
            ComposerKt.sourceInformation(composerStartRestartGroup, "44@1521L22");
            long jM2296contentColorForek8zF_U = colorM6048boximpl2 == null ? ColorSchemeKt.m2296contentColorForek8zF_U(surface, composerStartRestartGroup, 0) : colorM6048boximpl2.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            ShapeRecord shape = props.getShape();
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SurfaceView.kt#9igjgp");
            boolean zChanged = composerStartRestartGroup.changed(shape);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Shape shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(props.getShape());
                if (shapeShapeFromShapeRecord == null) {
                    shapeShapeFromShapeRecord = RectangleShapeKt.getRectangleShape();
                }
                objRememberedValue = shapeShapeFromShapeRecord;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Shape shape2 = (Shape) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            Float tonalElevation = props.getTonalElevation();
            float fM8892constructorimpl = Dp.m8892constructorimpl(tonalElevation != null ? tonalElevation.floatValue() : 0.0f);
            Float shadowElevation = props.getShadowElevation();
            float fM8892constructorimpl2 = Dp.m8892constructorimpl(shadowElevation != null ? shadowElevation.floatValue() : 0.0f);
            long outline = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, MaterialTheme.$stable).getOutline();
            SurfaceBorder border = props.getBorder();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SurfaceView.kt#9igjgp");
            boolean zChanged2 = composerStartRestartGroup.changed(border) | composerStartRestartGroup.changed(outline);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                SurfaceBorder border2 = props.getBorder();
                if (border2 != null) {
                    androidx.compose.ui.graphics.Color composeOrNull = UtilsKt.getComposeOrNull(border2.getColor());
                    if (composeOrNull != null) {
                        outline = composeOrNull.m6068unboximpl();
                    }
                    borderStrokeM334BorderStrokecXLIe8U = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(border2.getWidth()), outline);
                } else {
                    borderStrokeM334BorderStrokecXLIe8U = null;
                }
                composerStartRestartGroup.updateRememberedValue(borderStrokeM334BorderStrokecXLIe8U);
                objRememberedValue2 = borderStrokeM334BorderStrokecXLIe8U;
            }
            BorderStroke borderStroke = (BorderStroke) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1067291974, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.SurfaceViewKt$SurfaceContent$content$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C56@2063L27:SurfaceView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1067291974, i4, -1, "expo.modules.ui.SurfaceContent.<anonymous> (SurfaceView.kt:56)");
                    }
                    functionalComposableScope.Children(new ComposableScope(null, null, null, null, 15, null), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            if (props.getChecked() != null) {
                composerStartRestartGroup.startReplaceGroup(1351376063);
                ComposerKt.sourceInformation(composerStartRestartGroup, "62@2222L23,60@2158L356");
                boolean zBooleanValue = props.getChecked().booleanValue();
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SurfaceView.kt#9igjgp");
                boolean z = (i3 & 7168) == 2048;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue3 = new Function1() { // from class: expo.modules.ui.SurfaceViewKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SurfaceViewKt.SurfaceContent$lambda$4$lambda$3(onCheckedChange, ((Boolean) obj).booleanValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composerStartRestartGroup.endReplaceGroup();
                SurfaceKt.m3571Surfaced85dljk(zBooleanValue, (Function1<? super Boolean, Unit>) objRememberedValue3, modifierApplyModifiers, props.getEnabled(), shape2, surface, jM2296contentColorForek8zF_U, fM8892constructorimpl, fM8892constructorimpl2, borderStroke, (MutableInteractionSource) null, composableLambdaRememberComposableLambda, composerStartRestartGroup, 0, 48, 1024);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                long j = jM2296contentColorForek8zF_U;
                if (props.getSelected() != null) {
                    composerStartRestartGroup.startReplaceGroup(1351389263);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "76@2629L13,74@2571L340");
                    boolean zBooleanValue2 = props.getSelected().booleanValue();
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SurfaceView.kt#9igjgp");
                    boolean z2 = (i3 & 896) == 256;
                    Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z2 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue4 = new Function0() { // from class: expo.modules.ui.SurfaceViewKt$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return SurfaceViewKt.SurfaceContent$lambda$6$lambda$5(onClick);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    SurfaceKt.m3570Surfaced85dljk(zBooleanValue2, (Function0<Unit>) objRememberedValue4, modifierApplyModifiers, props.getEnabled(), shape2, surface, j, fM8892constructorimpl, fM8892constructorimpl2, borderStroke, (MutableInteractionSource) null, composableLambdaRememberComposableLambda, composerStartRestartGroup, 0, 48, 1024);
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else if (!props.getClickable()) {
                    composerStartRestartGroup.startReplaceGroup(1351413104);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "101@3319L245");
                    SurfaceKt.m3569SurfaceT9BRK9s(modifierApplyModifiers, shape2, surface, j, fM8892constructorimpl, fM8892constructorimpl2, borderStroke, composableLambdaRememberComposableLambda, composerStartRestartGroup, 12582912, 0);
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1351401678);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "89@2985L13,88@2960L307");
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):SurfaceView.kt#9igjgp");
                    boolean z3 = (i3 & 896) == 256;
                    Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z3 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue5 = new Function0() { // from class: expo.modules.ui.SurfaceViewKt$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return SurfaceViewKt.SurfaceContent$lambda$8$lambda$7(onClick);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    SurfaceKt.m3572Surfaceo_FOJdg((Function0) objRememberedValue5, modifierApplyModifiers, props.getEnabled(), shape2, surface, j, fM8892constructorimpl, fM8892constructorimpl2, borderStroke, null, composableLambdaRememberComposableLambda, composerStartRestartGroup, 0, 6, 512);
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.SurfaceViewKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SurfaceViewKt.SurfaceContent$lambda$9(functionalComposableScope, props, onClick, onCheckedChange, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SurfaceContent$lambda$4$lambda$3(Function1 function1, boolean z) {
        function1.invoke(Boolean.valueOf(z));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SurfaceContent$lambda$6$lambda$5(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SurfaceContent$lambda$8$lambda$7(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }
}
