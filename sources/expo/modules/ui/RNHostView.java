package expo.modules.ui;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RNHostView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0011\u0010\u001b\u001a\u00020\u0012*\u00020\u001cH\u0017¢\u0006\u0002\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000eH\u0003¢\u0006\u0002\u0010!J\r\u0010\"\u001a\u00020\u001fH\u0003¢\u0006\u0002\u0010#R\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lexpo/modules/ui/RNHostView;", "Lexpo/modules/kotlin/views/ExpoComposeView;", "Lexpo/modules/ui/RNHostViewProps;", "context", "Landroid/content/Context;", "appContext", "Lexpo/modules/kotlin/AppContext;", "<init>", "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V", "props", "getProps", "()Lexpo/modules/ui/RNHostViewProps;", "childViewState", "Landroidx/compose/runtime/MutableState;", "Landroid/view/View;", "wrapperState", "Lexpo/modules/ui/TouchDispatchingRootViewGroup;", "addView", "", "child", "index", "", "params", "Landroid/view/ViewGroup$LayoutParams;", "removeView", "view", "removeViewAt", "Content", "Lexpo/modules/kotlin/views/ComposableScope;", "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V", "applySizeFromYogaNodeModifier", "Landroidx/compose/ui/Modifier;", "childView", "(Landroid/view/View;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;", "reportSizeToYogaNodeModifier", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;", "Companion", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNHostView extends ExpoComposeView<RNHostViewProps> {
    private static final String TAG = "RNHostView";
    private final MutableState<View> childViewState;
    private final RNHostViewProps props;
    private final MutableState<TouchDispatchingRootViewGroup> wrapperState;
    public static final int $stable = ExpoComposeView.$stable;

    /* JADX INFO: Access modifiers changed from: private */
    public static final TouchDispatchingRootViewGroup Content$lambda$6$lambda$3$lambda$2(TouchDispatchingRootViewGroup touchDispatchingRootViewGroup, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return touchDispatchingRootViewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TouchDispatchingRootViewGroup Content$lambda$6$lambda$5$lambda$4(TouchDispatchingRootViewGroup touchDispatchingRootViewGroup, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return touchDispatchingRootViewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$7(RNHostView rNHostView, ComposableScope composableScope, int i, Composer composer, int i2) {
        rNHostView.Content(composableScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RNHostView(Context context, AppContext appContext) {
        super(context, appContext, false, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.props = new RNHostViewProps(null, 1, null);
        this.childViewState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.wrapperState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView
    public RNHostViewProps getProps() {
        return this.props;
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView, android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(params, "params");
        this.childViewState.setValue(child);
        Context context = child.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        TouchDispatchingRootViewGroup touchDispatchingRootViewGroup = new TouchDispatchingRootViewGroup(context);
        Context context2 = child.getContext();
        ReactContext reactContext = context2 instanceof ReactContext ? (ReactContext) context2 : null;
        if (reactContext != null) {
            touchDispatchingRootViewGroup.setEventDispatcher(UIManagerHelper.getEventDispatcherForReactTag(reactContext, child.getId()));
        } else {
            Log.e(TAG, "RNHostView: child context is not a ReactContext, touch events will not be dispatched to JS");
        }
        touchDispatchingRootViewGroup.addView(child, new FrameLayout.LayoutParams(-1, -1));
        this.wrapperState.setValue(touchDispatchingRootViewGroup);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (Intrinsics.areEqual(view, this.childViewState.getValue())) {
            TouchDispatchingRootViewGroup value = this.wrapperState.getValue();
            if (value != null) {
                value.removeView(view);
            }
            this.childViewState.setValue(null);
            this.wrapperState.setValue(null);
            return;
        }
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int index) {
        TouchDispatchingRootViewGroup value;
        View value2 = this.childViewState.getValue();
        if (value2 != null && (value = this.wrapperState.getValue()) != null) {
            value.removeView(value2);
        }
        this.childViewState.setValue(null);
        this.wrapperState.setValue(null);
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView
    public void Content(final ComposableScope composableScope, Composer composer, final int i) {
        int i2;
        View value;
        Intrinsics.checkNotNullParameter(composableScope, "<this>");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1802934975);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(Content):RNHostView.kt#v15e7d");
        if ((i & 48) == 0) {
            i2 = ((i & 64) == 0 ? composerStartRestartGroup.changed(this) : composerStartRestartGroup.changedInstance(this) ? 32 : 16) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 17) != 16 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1802934975, i2, -1, "expo.modules.ui.RNHostView.Content (RNHostView.kt:85)");
            }
            Boolean value2 = getProps().getMatchContents().getValue();
            boolean zBooleanValue = value2 != null ? value2.booleanValue() : false;
            final TouchDispatchingRootViewGroup value3 = this.wrapperState.getValue();
            if (value3 != null && (value = this.childViewState.getValue()) != null) {
                if (zBooleanValue) {
                    composerStartRestartGroup.startReplaceGroup(-459071088);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "92@3432L11,93@3466L40,91@3399L117");
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):RNHostView.kt#9igjgp");
                    boolean zChangedInstance = composerStartRestartGroup.changedInstance(value3);
                    Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue = new Function1() { // from class: expo.modules.ui.RNHostView$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return RNHostView.Content$lambda$6$lambda$3$lambda$2(value3, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    AndroidView_androidKt.AndroidView((Function1) objRememberedValue, applySizeFromYogaNodeModifier(value, composerStartRestartGroup, (i2 & 112) | (ExpoComposeView.$stable << 3)), null, composerStartRestartGroup, 0, 4);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-458929821);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "97@3573L11,100@3661L30,96@3540L162");
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):RNHostView.kt#9igjgp");
                    boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(value3);
                    Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        objRememberedValue2 = new Function1() { // from class: expo.modules.ui.RNHostView$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return RNHostView.Content$lambda$6$lambda$5$lambda$4(value3, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    AndroidView_androidKt.AndroidView((Function1) objRememberedValue2, SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null).then(reportSizeToYogaNodeModifier(composerStartRestartGroup, ((i2 >> 3) & 14) | ExpoComposeView.$stable)), null, composerStartRestartGroup, 0, 4);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.RNHostView$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RNHostView.Content$lambda$7(this.f$0, composableScope, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private final Modifier applySizeFromYogaNodeModifier(final View view, Composer composer, int i) {
        Modifier.Companion companionM972requiredSizeVpY3zN4;
        long jM9068getZeroYbymL2g;
        composer.startReplaceGroup(619752287);
        ComposerKt.sourceInformation(composer, "C(applySizeFromYogaNodeModifier)110@3958L7,112@3987L172,119@4193L264,119@4165L292:RNHostView.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(619752287, i, -1, "expo.modules.ui.RNHostView.applySizeFromYogaNodeModifier (RNHostView.kt:109)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Density density = (Density) objConsume;
        composer.startReplaceGroup(1849434622);
        ComposerKt.sourceInformation(composer, "CC(remember):RNHostView.kt#9igjgp");
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            if (view.getWidth() <= 0 || view.getHeight() <= 0) {
                jM9068getZeroYbymL2g = IntSize.INSTANCE.m9068getZeroYbymL2g();
            } else {
                jM9068getZeroYbymL2g = IntSize.m9058constructorimpl((((long) view.getHeight()) & 4294967295L) | (((long) view.getWidth()) << 32));
            }
            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m9055boximpl(jM9068getZeroYbymL2g), null, 2, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        final MutableState mutableState = (MutableState) objRememberedValue;
        composer.endReplaceGroup();
        composer.startReplaceGroup(-1633490746);
        ComposerKt.sourceInformation(composer, "CC(remember):RNHostView.kt#9igjgp");
        boolean zChangedInstance = composer.changedInstance(view);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            objRememberedValue2 = new Function1() { // from class: expo.modules.ui.RNHostView$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RNHostView.applySizeFromYogaNodeModifier$lambda$12$lambda$11(view, mutableState, (DisposableEffectScope) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        composer.endReplaceGroup();
        EffectsKt.DisposableEffect(view, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composer, i & 14);
        if (((int) (((IntSize) mutableState.getValue()).m9067unboximpl() >> 32)) > 0 && ((int) (((IntSize) mutableState.getValue()).m9067unboximpl() & 4294967295L)) > 0) {
            companionM972requiredSizeVpY3zN4 = SizeKt.m972requiredSizeVpY3zN4(Modifier.INSTANCE, density.mo463toDpu2uoSUM((int) (((IntSize) mutableState.getValue()).m9067unboximpl() >> 32)), density.mo463toDpu2uoSUM((int) (((IntSize) mutableState.getValue()).m9067unboximpl() & 4294967295L)));
        } else {
            companionM972requiredSizeVpY3zN4 = Modifier.INSTANCE;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return companionM972requiredSizeVpY3zN4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult applySizeFromYogaNodeModifier$lambda$12$lambda$11(final View view, final MutableState mutableState, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: expo.modules.ui.RNHostView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                RNHostView.applySizeFromYogaNodeModifier$lambda$12$lambda$11$lambda$9(mutableState, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        return new DisposableEffectResult() { // from class: expo.modules.ui.RNHostView$applySizeFromYogaNodeModifier$lambda$12$lambda$11$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                view.removeOnLayoutChangeListener(onLayoutChangeListener);
            }
        };
    }

    private final Modifier reportSizeToYogaNodeModifier(Composer composer, int i) {
        composer.startReplaceGroup(968312311);
        ComposerKt.sourceInformation(composer, "C(reportSizeToYogaNodeModifier)143@4947L7,144@4989L184:RNHostView.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(968312311, i, -1, "expo.modules.ui.RNHostView.reportSizeToYogaNodeModifier (RNHostView.kt:142)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        final Density density = (Density) objConsume;
        Modifier.Companion companion = Modifier.INSTANCE;
        composer.startReplaceGroup(-1633490746);
        ComposerKt.sourceInformation(composer, "CC(remember):RNHostView.kt#9igjgp");
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer.changedInstance(this)) || (i & 6) == 4) | composer.changed(density);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            objRememberedValue = new Function1() { // from class: expo.modules.ui.RNHostView$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RNHostView.reportSizeToYogaNodeModifier$lambda$16$lambda$15(density, this, (IntSize) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        Modifier modifierOnSizeChanged = OnRemeasuredModifierKt.onSizeChanged(companion, (Function1) objRememberedValue);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierOnSizeChanged;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reportSizeToYogaNodeModifier$lambda$16$lambda$15(Density density, RNHostView rNHostView, IntSize intSize) {
        rNHostView.getShadowNodeProxy().setViewSize(density.mo463toDpu2uoSUM((int) (intSize.m9067unboximpl() >> 32)), density.mo463toDpu2uoSUM((int) (intSize.m9067unboximpl() & 4294967295L)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void applySizeFromYogaNodeModifier$lambda$12$lambda$11$lambda$9(MutableState mutableState, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        mutableState.setValue(IntSize.m9055boximpl(IntSize.m9058constructorimpl((((long) (i3 - i)) << 32) | (((long) (i4 - i2)) & 4294967295L))));
    }
}
