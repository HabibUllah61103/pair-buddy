package expo.modules.ui;

import android.content.Context;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.ModalBottomSheetProperties;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventCallback;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BottomSheetView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u001b\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u001cJ\u0011\u0010\u001d\u001a\u00020\u000e*\u00020\u001eH\u0017¢\u0006\u0002\u0010\u001fR\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lexpo/modules/ui/ModalBottomSheetView;", "Lexpo/modules/kotlin/views/ExpoComposeView;", "Lexpo/modules/ui/ModalBottomSheetViewProps;", "context", "Landroid/content/Context;", "appContext", "Lexpo/modules/kotlin/AppContext;", "<init>", "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V", "props", "getProps", "()Lexpo/modules/ui/ModalBottomSheetViewProps;", "onDismissRequest", "Lexpo/modules/kotlin/viewevent/ViewEventCallback;", "", "getOnDismissRequest$expo_ui_release", "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;", "onDismissRequest$delegate", "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;", "sheetState", "Landroidx/compose/material3/SheetState;", "getSheetState$expo_ui_release", "()Landroidx/compose/material3/SheetState;", "setSheetState$expo_ui_release", "(Landroidx/compose/material3/SheetState;)V", "composeScope", "Lkotlinx/coroutines/CoroutineScope;", "hide", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Content", "Lexpo/modules/kotlin/views/ComposableScope;", "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModalBottomSheetView extends ExpoComposeView<ModalBottomSheetViewProps> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ModalBottomSheetView.class, "onDismissRequest", "getOnDismissRequest$expo_ui_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;", 0))};
    public static final int $stable = 8;
    private CoroutineScope composeScope;

    /* JADX INFO: renamed from: onDismissRequest$delegate, reason: from kotlin metadata */
    private final ViewEventDelegate onDismissRequest;
    private final ModalBottomSheetViewProps props;
    private SheetState sheetState;

    /* JADX INFO: renamed from: expo.modules.ui.ModalBottomSheetView$hide$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BottomSheetView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.ui.ModalBottomSheetView", f = "BottomSheetView.kt", i = {}, l = {59}, m = "hide", n = {}, s = {})
    static final class C07081 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C07081(Continuation<? super C07081> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ModalBottomSheetView.this.hide(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$2(ModalBottomSheetView modalBottomSheetView, ComposableScope composableScope, int i, Composer composer, int i2) {
        modalBottomSheetView.Content(composableScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetView(Context context, AppContext appContext) {
        super(context, appContext, false, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.props = new ModalBottomSheetViewProps(null, null, null, null, null, null, null, null, 255, null);
        this.onDismissRequest = new ViewEventDelegate(this, null);
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView
    public ModalBottomSheetViewProps getProps() {
        return this.props;
    }

    public final ViewEventCallback<Unit> getOnDismissRequest$expo_ui_release() {
        return this.onDismissRequest.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: renamed from: getSheetState$expo_ui_release, reason: from getter */
    public final SheetState getSheetState() {
        return this.sheetState;
    }

    public final void setSheetState$expo_ui_release(SheetState sheetState) {
        this.sheetState = sheetState;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object hide(Continuation<? super Unit> continuation) {
        C07081 c07081;
        SheetState sheetState;
        if (continuation instanceof C07081) {
            c07081 = (C07081) continuation;
            if ((c07081.label & Integer.MIN_VALUE) != 0) {
                c07081.label -= Integer.MIN_VALUE;
            } else {
                c07081 = new C07081(continuation);
            }
        } else {
            c07081 = new C07081(continuation);
        }
        Object obj = c07081.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c07081.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = this.composeScope;
                if (coroutineScope != null && (sheetState = this.sheetState) != null) {
                    CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(sheetState, null);
                    c07081.label = 1;
                    if (BuildersKt.withContext(coroutineContext, anonymousClass2, c07081) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        } catch (CancellationException unused) {
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: expo.modules.ui.ModalBottomSheetView$hide$2, reason: invalid class name */
    /* JADX INFO: compiled from: BottomSheetView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.ui.ModalBottomSheetView$hide$2", f = "BottomSheetView.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SheetState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(SheetState sheetState, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$state = sheetState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$state.hide(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView
    public void Content(final ComposableScope composableScope, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(composableScope, "<this>");
        Composer composerStartRestartGroup = composer.startRestartGroup(-417806962);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(Content)69@2896L64,70@2977L24,101@4381L86,81@3600L40,102@4474L71,79@3526L1019:BottomSheetView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(composableScope) : composerStartRestartGroup.changedInstance(composableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(this) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-417806962, i2, -1, "expo.modules.ui.ModalBottomSheetView.Content (BottomSheetView.kt:68)");
            }
            ComposableLambda composableLambdaM11093getLambda$865286969$expo_ui_release = null;
            SheetState sheetStateRememberModalBottomSheetState = ModalBottomSheetKt.rememberModalBottomSheetState(getProps().getSkipPartiallyExpanded().getValue().booleanValue(), null, composerStartRestartGroup, 0, 2);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            this.sheetState = sheetStateRememberModalBottomSheetState;
            this.composeScope = (CoroutineScope) objRememberedValue;
            Color composeOrNull = UtilsKt.getComposeOrNull(getProps().getContainerColor().getValue());
            composerStartRestartGroup.startReplaceGroup(-2080521604);
            ComposerKt.sourceInformation(composerStartRestartGroup, "74@3205L14");
            long containerColor = composeOrNull == null ? BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6) : composeOrNull.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(getProps().getContentColor().getValue());
            composerStartRestartGroup.startReplaceGroup(-2080518081);
            ComposerKt.sourceInformation(composerStartRestartGroup, "75@3293L39");
            long jM2296contentColorForek8zF_U = composeOrNull2 == null ? ColorSchemeKt.m2296contentColorForek8zF_U(containerColor, composerStartRestartGroup, 0) : composeOrNull2.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            Color composeOrNull3 = UtilsKt.getComposeOrNull(getProps().getScrimColor().getValue());
            composerStartRestartGroup.startReplaceGroup(-2080514540);
            ComposerKt.sourceInformation(composerStartRestartGroup, "76@3422L10");
            long scrimColor = composeOrNull3 == null ? BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6) : composeOrNull3.m6068unboximpl();
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(this, "dragHandle");
            boolean zBooleanValue = getProps().getSheetGesturesEnabled().getValue().booleanValue();
            composerStartRestartGroup.startReplaceGroup(-2080498635);
            ComposerKt.sourceInformation(composerStartRestartGroup, "90@3910L70");
            if (slotViewFindChildSlotView != null) {
                composableLambdaM11093getLambda$865286969$expo_ui_release = ComposableLambdaKt.rememberComposableLambda(1722311440, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ModalBottomSheetView.Content.1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i3) {
                        ComposerKt.sourceInformation(composer2, "C:BottomSheetView.kt#v15e7d");
                        if ((i3 & 3) == 2 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1722311440, i3, -1, "expo.modules.ui.ModalBottomSheetView.Content.<anonymous> (BottomSheetView.kt:90)");
                        }
                        ComposableScope composableScope2 = new ComposableScope(null, null, null, null, 15, null);
                        SlotView slotView = slotViewFindChildSlotView;
                        composer2.startReplaceGroup(1578885814);
                        ComposerKt.sourceInformation(composer2, "*90@3965L9");
                        slotView.Content(composableScope2, composer2, ComposableScope.$stable | ((ViewEventDelegate.$stable | ExpoComposeView.$stable) << 3));
                        composer2.endReplaceGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composerStartRestartGroup, 54);
            } else if (getProps().getShowDragHandle().getValue().booleanValue()) {
                composableLambdaM11093getLambda$865286969$expo_ui_release = ComposableSingletons$BottomSheetViewKt.INSTANCE.m11093getLambda$865286969$expo_ui_release();
            }
            Function2<Composer, Integer, Unit> function2 = composableLambdaM11093getLambda$865286969$expo_ui_release;
            composerStartRestartGroup.endReplaceGroup();
            ModalBottomSheetProperties modalBottomSheetProperties = new ModalBottomSheetProperties(getProps().getProperties().getValue().getShouldDismissOnBackPress(), getProps().getProperties().getValue().getShouldDismissOnClickOutside());
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(getProps().getModifiers().getValue(), getAppContext(), composableScope, getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6) | ((i2 << 6) & 896));
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):BottomSheetView.kt#9igjgp");
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(this);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: expo.modules.ui.ModalBottomSheetView$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ModalBottomSheetView.Content$lambda$1$lambda$0(this.f$0);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            composerStartRestartGroup.endReplaceGroup();
            ModalBottomSheetKt.m3057ModalBottomSheetYbuCTN8((Function0) objRememberedValue2, modifierApplyModifiers, sheetStateRememberModalBottomSheetState, 0.0f, zBooleanValue, null, containerColor, jM2296contentColorForek8zF_U, 0.0f, scrimColor, function2, null, modalBottomSheetProperties, ComposableLambdaKt.rememberComposableLambda(-1904614544, true, new AnonymousClass3(), composerStartRestartGroup, 54), composerStartRestartGroup, 0, 3072, 2344);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.ModalBottomSheetView$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ModalBottomSheetView.Content$lambda$2(this.f$0, composableScope, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$1$lambda$0(ModalBottomSheetView modalBottomSheetView) {
        modalBottomSheetView.getOnDismissRequest$expo_ui_release().invoke(Unit.INSTANCE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: expo.modules.ui.ModalBottomSheetView$Content$3, reason: invalid class name */
    /* JADX INFO: compiled from: BottomSheetView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass3 implements Function3<ColumnScope, Composer, Integer, Unit> {
        AnonymousClass3() {
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
            invoke(columnScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invoke$lambda$1$lambda$0(ExpoComposeView it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return !SlotViewKt.isSlotView(it);
        }

        public final void invoke(ColumnScope ModalBottomSheet, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ModalBottomSheet, "$this$ModalBottomSheet");
            ComposerKt.sourceInformation(composer, "C103@4519L19,103@4482L57:BottomSheetView.kt#v15e7d");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1904614544, i, -1, "expo.modules.ui.ModalBottomSheetView.Content.<anonymous> (BottomSheetView.kt:103)");
            }
            ModalBottomSheetView modalBottomSheetView = ModalBottomSheetView.this;
            ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
            composer.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composer, "CC(remember):BottomSheetView.kt#9igjgp");
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.ModalBottomSheetView$Content$3$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(ModalBottomSheetView.AnonymousClass3.invoke$lambda$1$lambda$0((ExpoComposeView) obj));
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            modalBottomSheetView.Children(composableScope, (Function1) objRememberedValue, composer, ComposableScope.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }
}
