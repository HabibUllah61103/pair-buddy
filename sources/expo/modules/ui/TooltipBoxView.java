package expo.modules.ui;

import android.content.Context;
import android.view.View;
import androidx.compose.material3.RichTooltipColors;
import androidx.compose.material3.TooltipDefaults;
import androidx.compose.material3.TooltipKt;
import androidx.compose.material3.TooltipScope;
import androidx.compose.material3.TooltipState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.media3.extractor.ts.TsExtractor;
import expo.modules.kotlin.AppContext;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TooltipView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0014\u001a\u00020\u0015H\u0086@¢\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u0015H\u0086@¢\u0006\u0002\u0010\u0016J\u0011\u0010\u0018\u001a\u00020\u0015*\u00020\u0019H\u0017¢\u0006\u0002\u0010\u001aR\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lexpo/modules/ui/TooltipBoxView;", "Lexpo/modules/kotlin/views/ExpoComposeView;", "Lexpo/modules/ui/TooltipBoxViewProps;", "context", "Landroid/content/Context;", "appContext", "Lexpo/modules/kotlin/AppContext;", "<init>", "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V", "props", "getProps", "()Lexpo/modules/ui/TooltipBoxViewProps;", "tooltipState", "Landroidx/compose/material3/TooltipState;", "getTooltipState$expo_ui_release", "()Landroidx/compose/material3/TooltipState;", "setTooltipState$expo_ui_release", "(Landroidx/compose/material3/TooltipState;)V", "composeScope", "Lkotlinx/coroutines/CoroutineScope;", "show", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dismiss", "Content", "Lexpo/modules/kotlin/views/ComposableScope;", "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TooltipBoxView extends ExpoComposeView<TooltipBoxViewProps> {
    public static final int $stable = 8;
    private CoroutineScope composeScope;
    private final TooltipBoxViewProps props;
    private TooltipState tooltipState;

    /* JADX INFO: renamed from: expo.modules.ui.TooltipBoxView$dismiss$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TooltipView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.ui.TooltipBoxView", f = "TooltipView.kt", i = {}, l = {101}, m = "dismiss", n = {}, s = {})
    static final class C07131 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C07131(Continuation<? super C07131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TooltipBoxView.this.dismiss(this);
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.TooltipBoxView$show$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TooltipView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.ui.TooltipBoxView", f = "TooltipView.kt", i = {}, l = {88}, m = "show", n = {}, s = {})
    static final class C07151 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C07151(Continuation<? super C07151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TooltipBoxView.this.show(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$3(TooltipBoxView tooltipBoxView, ComposableScope composableScope, int i, Composer composer, int i2) {
        tooltipBoxView.Content(composableScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TooltipBoxView(Context context, AppContext appContext) {
        super(context, appContext, false, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.props = new TooltipBoxViewProps(null, null, null, null, null, 31, null);
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView
    public TooltipBoxViewProps getProps() {
        return this.props;
    }

    /* JADX INFO: renamed from: getTooltipState$expo_ui_release, reason: from getter */
    public final TooltipState getTooltipState() {
        return this.tooltipState;
    }

    public final void setTooltipState$expo_ui_release(TooltipState tooltipState) {
        this.tooltipState = tooltipState;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object show(Continuation<? super Unit> continuation) {
        C07151 c07151;
        TooltipState tooltipState;
        if (continuation instanceof C07151) {
            c07151 = (C07151) continuation;
            if ((c07151.label & Integer.MIN_VALUE) != 0) {
                c07151.label -= Integer.MIN_VALUE;
            } else {
                c07151 = new C07151(continuation);
            }
        } else {
            c07151 = new C07151(continuation);
        }
        Object obj = c07151.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c07151.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = this.composeScope;
                if (coroutineScope != null && (tooltipState = this.tooltipState) != null) {
                    CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                    C07162 c07162 = new C07162(tooltipState, null);
                    c07151.label = 1;
                    if (BuildersKt.withContext(coroutineContext, c07162, c07151) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: expo.modules.ui.TooltipBoxView$show$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TooltipView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.ui.TooltipBoxView$show$2", f = "TooltipView.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend", n = {}, s = {})
    static final class C07162 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TooltipState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07162(TooltipState tooltipState, Continuation<? super C07162> continuation) {
            super(2, continuation);
            this.$state = tooltipState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07162(this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07162) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TooltipState.show$default(this.$state, null, this, 1, null) == coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object dismiss(Continuation<? super Unit> continuation) {
        C07131 c07131;
        TooltipState tooltipState;
        if (continuation instanceof C07131) {
            c07131 = (C07131) continuation;
            if ((c07131.label & Integer.MIN_VALUE) != 0) {
                c07131.label -= Integer.MIN_VALUE;
            } else {
                c07131 = new C07131(continuation);
            }
        } else {
            c07131 = new C07131(continuation);
        }
        Object obj = c07131.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c07131.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = this.composeScope;
                if (coroutineScope != null && (tooltipState = this.tooltipState) != null) {
                    CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                    C07142 c07142 = new C07142(tooltipState, null);
                    c07131.label = 1;
                    if (BuildersKt.withContext(coroutineContext, c07142, c07131) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: expo.modules.ui.TooltipBoxView$dismiss$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TooltipView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.ui.TooltipBoxView$dismiss$2", f = "TooltipView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07142 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TooltipState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07142(TooltipState tooltipState, Continuation<? super C07142> continuation) {
            super(2, continuation);
            this.$state = tooltipState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07142(this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$state.dismiss();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0121  */
    /* JADX WARN: Code duplicated, block: B:65:0x013a  */
    /* JADX WARN: Code duplicated, block: B:68:0x01de  */
    @Override // expo.modules.kotlin.views.ExpoComposeView
    public void Content(ComposableScope composableScope, Composer composer, final int i) {
        int i2;
        final PlainTooltipView plainTooltipView;
        RichTooltipView richTooltipView;
        boolean z;
        PopupPositionProvider popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc;
        Composer composer2;
        View childAt;
        View childAt2;
        final ComposableScope composableScope2 = composableScope;
        Intrinsics.checkNotNullParameter(composableScope2, "<this>");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1300910816);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(Content)115@4191L61,116@4269L24,170@6879L86,134@4942L1873,171@6972L71,129@4748L2295:TooltipView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(composableScope2) : composerStartRestartGroup.changedInstance(composableScope2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(this) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1300910816, i2, -1, "expo.modules.ui.TooltipBoxView.Content (TooltipView.kt:110)");
            }
            SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(this, "tooltip");
            boolean zBooleanValue = false;
            if (slotViewFindChildSlotView != null) {
                SlotView slotView = slotViewFindChildSlotView;
                int childCount = slotView.getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        childAt2 = null;
                        break;
                    }
                    childAt2 = slotView.getChildAt(i3);
                    if (childAt2 instanceof PlainTooltipView) {
                        break;
                    } else {
                        i3++;
                    }
                }
                plainTooltipView = (PlainTooltipView) childAt2;
            } else {
                plainTooltipView = null;
            }
            if (slotViewFindChildSlotView != null) {
                SlotView slotView2 = slotViewFindChildSlotView;
                int childCount2 = slotView2.getChildCount();
                int i4 = 0;
                while (true) {
                    if (i4 >= childCount2) {
                        childAt = null;
                        break;
                    }
                    childAt = slotView2.getChildAt(i4);
                    if (childAt instanceof RichTooltipView) {
                        break;
                    } else {
                        i4++;
                    }
                }
                richTooltipView = (RichTooltipView) childAt;
            } else {
                richTooltipView = null;
            }
            TooltipState tooltipStateRememberTooltipState = TooltipKt.rememberTooltipState(false, getProps().isPersistent().getValue().booleanValue(), null, composerStartRestartGroup, 0, 5);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            this.tooltipState = tooltipStateRememberTooltipState;
            this.composeScope = (CoroutineScope) objRememberedValue;
            SlotView slotViewFindChildSlotView2 = richTooltipView != null ? SlotViewKt.findChildSlotView(richTooltipView, "action") : null;
            Boolean value = getProps().getHasAction().getValue();
            if (value != null) {
                zBooleanValue = value.booleanValue();
            } else {
                if (slotViewFindChildSlotView2 != null) {
                    z = true;
                }
                if (richTooltipView != null) {
                    composerStartRestartGroup.startReplaceGroup(-1943468513);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "124@4625L37");
                    popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc = TooltipDefaults.INSTANCE.m3983rememberRichTooltipPositionProviderkHDZbjc(0.0f, composerStartRestartGroup, TooltipDefaults.$stable << 3, 1);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1943396066);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "126@4698L38");
                    popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc = TooltipDefaults.INSTANCE.m3982rememberPlainTooltipPositionProviderkHDZbjc(0.0f, composerStartRestartGroup, TooltipDefaults.$stable << 3, 1);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composer2 = composerStartRestartGroup;
                final RichTooltipView richTooltipView2 = richTooltipView;
                composableScope2 = composableScope;
                final SlotView slotView3 = slotViewFindChildSlotView2;
                TooltipKt.TooltipBox(popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc, ComposableLambdaKt.rememberComposableLambda(1665274891, true, new Function3<TooltipScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView.Content.1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(TooltipScope tooltipScope, Composer composer3, Integer num) {
                        invoke(tooltipScope, composer3, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(TooltipScope TooltipBox, Composer composer3, int i5) {
                        long jM6068unboximpl;
                        long jM6068unboximpl2;
                        Intrinsics.checkNotNullParameter(TooltipBox, "$this$TooltipBox");
                        ComposerKt.sourceInformation(composer3, "C:TooltipView.kt#v15e7d");
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1665274891, i5, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous> (TooltipView.kt:135)");
                        }
                        if (plainTooltipView != null) {
                            composer3.startReplaceGroup(-962900901);
                            ComposerKt.sourceInformation(composer3, "141@5338L103,142@5454L90,136@4994L550");
                            Color composeOrNull = UtilsKt.getComposeOrNull(plainTooltipView.getProps().getContainerColor().getValue());
                            composer3.startReplaceGroup(-1693628000);
                            ComposerKt.sourceInformation(composer3, "138@5128L26");
                            if (composeOrNull != null) {
                                jM6068unboximpl = composeOrNull.m6068unboximpl();
                            } else {
                                jM6068unboximpl = TooltipDefaults.INSTANCE.getPlainTooltipContainerColor(composer3, TooltipDefaults.$stable);
                            }
                            long j = jM6068unboximpl;
                            composer3.endReplaceGroup();
                            Color composeOrNull2 = UtilsKt.getComposeOrNull(plainTooltipView.getProps().getContentColor().getValue());
                            composer3.startReplaceGroup(-1693623332);
                            ComposerKt.sourceInformation(composer3, "140@5272L24");
                            if (composeOrNull2 != null) {
                                jM6068unboximpl2 = composeOrNull2.m6068unboximpl();
                            } else {
                                jM6068unboximpl2 = TooltipDefaults.INSTANCE.getPlainTooltipContentColor(composer3, TooltipDefaults.$stable);
                            }
                            composer3.endReplaceGroup();
                            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(plainTooltipView.getProps().getModifiers().getValue(), this.getAppContext(), composableScope2, this.getGlobalEventDispatcher(), composer3, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
                            final PlainTooltipView plainTooltipView2 = plainTooltipView;
                            TooltipKt.m3992PlainTooltipgv3ox5I(TooltipBox, modifierApplyModifiers, null, 0.0f, null, jM6068unboximpl2, j, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(182424724, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView.Content.1.1
                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer4, int i6) {
                                    ComposerKt.sourceInformation(composer4, "C:TooltipView.kt#v15e7d");
                                    if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(182424724, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous> (TooltipView.kt:143)");
                                    }
                                    ComposableScope composableScope3 = new ComposableScope(null, null, null, null, 15, null);
                                    PlainTooltipView plainTooltipView3 = plainTooltipView2;
                                    composer4.startReplaceGroup(-783498056);
                                    ComposerKt.sourceInformation(composer4, "*143@5519L9");
                                    plainTooltipView3.Content(composableScope3, composer4, ComposableScope.$stable | (ExpoComposeView.$stable << 3));
                                    composer4.endReplaceGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, composer3, 54), composer3, (i5 & 14) | 805306368, ComposerKt.referenceKey);
                            composer3.endReplaceGroup();
                        } else if (richTooltipView2 != null) {
                            composer3.startReplaceGroup(-962278731);
                            ComposerKt.sourceInformation(composer3, "148@5783L19,153@5994L594,163@6630L102,164@6745L52,150@5814L983");
                            final SlotView slotViewFindChildSlotView3 = SlotViewKt.findChildSlotView(richTooltipView2, "title");
                            final SlotView slotViewFindChildSlotView4 = SlotViewKt.findChildSlotView(richTooltipView2, "text");
                            RichTooltipColors richTooltipColors = TooltipDefaults.INSTANCE.richTooltipColors(composer3, TooltipDefaults.$stable);
                            composer3.startReplaceGroup(-1693601690);
                            ComposerKt.sourceInformation(composer3, "*151@5868L19");
                            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView3 == null ? null : ComposableLambdaKt.rememberComposableLambda(1180324714, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView$Content$1$2$1
                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer4, int i6) {
                                    ComposerKt.sourceInformation(composer4, "C151@5873L12:TooltipView.kt#v15e7d");
                                    if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1180324714, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous>.<anonymous> (TooltipView.kt:151)");
                                    }
                                    SlotViewKt.renderSlot(slotViewFindChildSlotView3, composer4, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, composer3, 54);
                            composer3.endReplaceGroup();
                            final SlotView slotView4 = slotView3;
                            composer3.startReplaceGroup(-1693599578);
                            ComposerKt.sourceInformation(composer3, "*152@5934L19");
                            ComposableLambda composableLambdaRememberComposableLambda2 = slotView4 != null ? ComposableLambdaKt.rememberComposableLambda(1391330755, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView$Content$1$3$1
                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer4, int i6) {
                                    ComposerKt.sourceInformation(composer4, "C152@5939L12:TooltipView.kt#v15e7d");
                                    if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1391330755, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous>.<anonymous> (TooltipView.kt:152)");
                                    }
                                    SlotViewKt.renderSlot(slotView4, composer4, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, composer3, 54) : null;
                            composer3.endReplaceGroup();
                            TooltipDefaults tooltipDefaults = TooltipDefaults.INSTANCE;
                            Color composeOrNull3 = UtilsKt.getComposeOrNull(richTooltipView2.getProps().getContainerColor().getValue());
                            long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : richTooltipColors.getContainerColor();
                            Color composeOrNull4 = UtilsKt.getComposeOrNull(richTooltipView2.getProps().getContentColor().getValue());
                            long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : richTooltipColors.getContentColor();
                            Color composeOrNull5 = UtilsKt.getComposeOrNull(richTooltipView2.getProps().getTitleContentColor().getValue());
                            long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : richTooltipColors.getTitleContentColor();
                            Color composeOrNull6 = UtilsKt.getComposeOrNull(richTooltipView2.getProps().getActionContentColor().getValue());
                            long jM6068unboximpl6 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : richTooltipColors.getActionContentColor();
                            ComposableLambda composableLambda = composableLambdaRememberComposableLambda;
                            TooltipKt.m3993RichTooltipEkvW5A0(TooltipBox, ModifierRegistry.INSTANCE.applyModifiers(richTooltipView2.getProps().getModifiers().getValue(), this.getAppContext(), composableScope2, this.getGlobalEventDispatcher(), composer3, (ComposableScope.$stable << 6) | (AppContext.$stable << 3)), composableLambda, composableLambdaRememberComposableLambda2, null, 0.0f, null, tooltipDefaults.m3986richTooltipColorsro_MJ88(jM6068unboximpl3, jM6068unboximpl4, jM6068unboximpl5, jM6068unboximpl6, composer3, TooltipDefaults.$stable << 12, 0), 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(-1787900798, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView.Content.1.4
                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer4, int i6) {
                                    ComposerKt.sourceInformation(composer4, "C165@6773L12:TooltipView.kt#v15e7d");
                                    if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1787900798, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous> (TooltipView.kt:165)");
                                    }
                                    SlotView slotView5 = slotViewFindChildSlotView4;
                                    if (slotView5 != null) {
                                        SlotViewKt.renderSlot(slotView5, composer4, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, composer3, 54), composer3, i5 & 14, 6, 440);
                            composer3.endReplaceGroup();
                        } else {
                            composer3.startReplaceGroup(-961108233);
                            composer3.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer2, 54), tooltipStateRememberTooltipState, ModifierRegistry.INSTANCE.applyModifiers(getProps().getModifiers().getValue(), getAppContext(), composableScope, getGlobalEventDispatcher(), composer2, (AppContext.$stable << 3) | (ComposableScope.$stable << 6) | ((i2 << 6) & 896)), null, getProps().getFocusable().getValue().booleanValue(), getProps().getEnableUserInput().getValue().booleanValue(), z, ComposableLambdaKt.rememberComposableLambda(568713763, true, new AnonymousClass2(), composer2, 54), composer2, 100663344, 16);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            z = zBooleanValue;
            if (richTooltipView != null) {
                composerStartRestartGroup.startReplaceGroup(-1943468513);
                ComposerKt.sourceInformation(composerStartRestartGroup, "124@4625L37");
                popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc = TooltipDefaults.INSTANCE.m3983rememberRichTooltipPositionProviderkHDZbjc(0.0f, composerStartRestartGroup, TooltipDefaults.$stable << 3, 1);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1943396066);
                ComposerKt.sourceInformation(composerStartRestartGroup, "126@4698L38");
                popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc = TooltipDefaults.INSTANCE.m3982rememberPlainTooltipPositionProviderkHDZbjc(0.0f, composerStartRestartGroup, TooltipDefaults.$stable << 3, 1);
                composerStartRestartGroup.endReplaceGroup();
            }
            composer2 = composerStartRestartGroup;
            final RichTooltipView richTooltipView3 = richTooltipView;
            composableScope2 = composableScope;
            final SlotView slotView4 = slotViewFindChildSlotView2;
            TooltipKt.TooltipBox(popupPositionProviderM3982rememberPlainTooltipPositionProviderkHDZbjc, ComposableLambdaKt.rememberComposableLambda(1665274891, true, new Function3<TooltipScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView.Content.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(TooltipScope tooltipScope, Composer composer3, Integer num) {
                    invoke(tooltipScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(TooltipScope TooltipBox, Composer composer3, int i5) {
                    long jM6068unboximpl;
                    long jM6068unboximpl2;
                    Intrinsics.checkNotNullParameter(TooltipBox, "$this$TooltipBox");
                    ComposerKt.sourceInformation(composer3, "C:TooltipView.kt#v15e7d");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1665274891, i5, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous> (TooltipView.kt:135)");
                    }
                    if (plainTooltipView != null) {
                        composer3.startReplaceGroup(-962900901);
                        ComposerKt.sourceInformation(composer3, "141@5338L103,142@5454L90,136@4994L550");
                        Color composeOrNull = UtilsKt.getComposeOrNull(plainTooltipView.getProps().getContainerColor().getValue());
                        composer3.startReplaceGroup(-1693628000);
                        ComposerKt.sourceInformation(composer3, "138@5128L26");
                        if (composeOrNull != null) {
                            jM6068unboximpl = composeOrNull.m6068unboximpl();
                        } else {
                            jM6068unboximpl = TooltipDefaults.INSTANCE.getPlainTooltipContainerColor(composer3, TooltipDefaults.$stable);
                        }
                        long j = jM6068unboximpl;
                        composer3.endReplaceGroup();
                        Color composeOrNull2 = UtilsKt.getComposeOrNull(plainTooltipView.getProps().getContentColor().getValue());
                        composer3.startReplaceGroup(-1693623332);
                        ComposerKt.sourceInformation(composer3, "140@5272L24");
                        if (composeOrNull2 != null) {
                            jM6068unboximpl2 = composeOrNull2.m6068unboximpl();
                        } else {
                            jM6068unboximpl2 = TooltipDefaults.INSTANCE.getPlainTooltipContentColor(composer3, TooltipDefaults.$stable);
                        }
                        composer3.endReplaceGroup();
                        Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(plainTooltipView.getProps().getModifiers().getValue(), this.getAppContext(), composableScope2, this.getGlobalEventDispatcher(), composer3, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
                        final PlainTooltipView plainTooltipView2 = plainTooltipView;
                        TooltipKt.m3992PlainTooltipgv3ox5I(TooltipBox, modifierApplyModifiers, null, 0.0f, null, jM6068unboximpl2, j, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(182424724, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView.Content.1.1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i6) {
                                ComposerKt.sourceInformation(composer4, "C:TooltipView.kt#v15e7d");
                                if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(182424724, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous> (TooltipView.kt:143)");
                                }
                                ComposableScope composableScope3 = new ComposableScope(null, null, null, null, 15, null);
                                PlainTooltipView plainTooltipView3 = plainTooltipView2;
                                composer4.startReplaceGroup(-783498056);
                                ComposerKt.sourceInformation(composer4, "*143@5519L9");
                                plainTooltipView3.Content(composableScope3, composer4, ComposableScope.$stable | (ExpoComposeView.$stable << 3));
                                composer4.endReplaceGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, composer3, 54), composer3, (i5 & 14) | 805306368, ComposerKt.referenceKey);
                        composer3.endReplaceGroup();
                    } else if (richTooltipView3 != null) {
                        composer3.startReplaceGroup(-962278731);
                        ComposerKt.sourceInformation(composer3, "148@5783L19,153@5994L594,163@6630L102,164@6745L52,150@5814L983");
                        final SlotView slotViewFindChildSlotView3 = SlotViewKt.findChildSlotView(richTooltipView3, "title");
                        final SlotView slotViewFindChildSlotView4 = SlotViewKt.findChildSlotView(richTooltipView3, "text");
                        RichTooltipColors richTooltipColors = TooltipDefaults.INSTANCE.richTooltipColors(composer3, TooltipDefaults.$stable);
                        composer3.startReplaceGroup(-1693601690);
                        ComposerKt.sourceInformation(composer3, "*151@5868L19");
                        ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView3 == null ? null : ComposableLambdaKt.rememberComposableLambda(1180324714, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView$Content$1$2$1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i6) {
                                ComposerKt.sourceInformation(composer4, "C151@5873L12:TooltipView.kt#v15e7d");
                                if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1180324714, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous>.<anonymous> (TooltipView.kt:151)");
                                }
                                SlotViewKt.renderSlot(slotViewFindChildSlotView3, composer4, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, composer3, 54);
                        composer3.endReplaceGroup();
                        final SlotView slotView5 = slotView4;
                        composer3.startReplaceGroup(-1693599578);
                        ComposerKt.sourceInformation(composer3, "*152@5934L19");
                        ComposableLambda composableLambdaRememberComposableLambda2 = slotView5 != null ? ComposableLambdaKt.rememberComposableLambda(1391330755, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView$Content$1$3$1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i6) {
                                ComposerKt.sourceInformation(composer4, "C152@5939L12:TooltipView.kt#v15e7d");
                                if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1391330755, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous>.<anonymous> (TooltipView.kt:152)");
                                }
                                SlotViewKt.renderSlot(slotView5, composer4, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, composer3, 54) : null;
                        composer3.endReplaceGroup();
                        TooltipDefaults tooltipDefaults = TooltipDefaults.INSTANCE;
                        Color composeOrNull3 = UtilsKt.getComposeOrNull(richTooltipView3.getProps().getContainerColor().getValue());
                        long jM6068unboximpl3 = composeOrNull3 != null ? composeOrNull3.m6068unboximpl() : richTooltipColors.getContainerColor();
                        Color composeOrNull4 = UtilsKt.getComposeOrNull(richTooltipView3.getProps().getContentColor().getValue());
                        long jM6068unboximpl4 = composeOrNull4 != null ? composeOrNull4.m6068unboximpl() : richTooltipColors.getContentColor();
                        Color composeOrNull5 = UtilsKt.getComposeOrNull(richTooltipView3.getProps().getTitleContentColor().getValue());
                        long jM6068unboximpl5 = composeOrNull5 != null ? composeOrNull5.m6068unboximpl() : richTooltipColors.getTitleContentColor();
                        Color composeOrNull6 = UtilsKt.getComposeOrNull(richTooltipView3.getProps().getActionContentColor().getValue());
                        long jM6068unboximpl6 = composeOrNull6 != null ? composeOrNull6.m6068unboximpl() : richTooltipColors.getActionContentColor();
                        ComposableLambda composableLambda = composableLambdaRememberComposableLambda;
                        TooltipKt.m3993RichTooltipEkvW5A0(TooltipBox, ModifierRegistry.INSTANCE.applyModifiers(richTooltipView3.getProps().getModifiers().getValue(), this.getAppContext(), composableScope2, this.getGlobalEventDispatcher(), composer3, (ComposableScope.$stable << 6) | (AppContext.$stable << 3)), composableLambda, composableLambdaRememberComposableLambda2, null, 0.0f, null, tooltipDefaults.m3986richTooltipColorsro_MJ88(jM6068unboximpl3, jM6068unboximpl4, jM6068unboximpl5, jM6068unboximpl6, composer3, TooltipDefaults.$stable << 12, 0), 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(-1787900798, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TooltipBoxView.Content.1.4
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i6) {
                                ComposerKt.sourceInformation(composer4, "C165@6773L12:TooltipView.kt#v15e7d");
                                if ((i6 & 3) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1787900798, i6, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous>.<anonymous> (TooltipView.kt:165)");
                                }
                                SlotView slotView6 = slotViewFindChildSlotView4;
                                if (slotView6 != null) {
                                    SlotViewKt.renderSlot(slotView6, composer4, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, composer3, 54), composer3, i5 & 14, 6, 440);
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(-961108233);
                        composer3.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer2, 54), tooltipStateRememberTooltipState, ModifierRegistry.INSTANCE.applyModifiers(getProps().getModifiers().getValue(), getAppContext(), composableScope, getGlobalEventDispatcher(), composer2, (AppContext.$stable << 3) | (ComposableScope.$stable << 6) | ((i2 << 6) & 896)), null, getProps().getFocusable().getValue().booleanValue(), getProps().getEnableUserInput().getValue().booleanValue(), z, ComposableLambdaKt.rememberComposableLambda(568713763, true, new AnonymousClass2(), composer2, 54), composer2, 100663344, 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.TooltipBoxView$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TooltipBoxView.Content$lambda$3(this.f$0, composableScope2, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.TooltipBoxView$Content$2, reason: invalid class name */
    /* JADX INFO: compiled from: TooltipView.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass2 implements Function2<Composer, Integer, Unit> {
        AnonymousClass2() {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invoke$lambda$1$lambda$0(ExpoComposeView it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return !SlotViewKt.isSlotView(it);
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C172@7017L19,172@6980L57:TooltipView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(568713763, i, -1, "expo.modules.ui.TooltipBoxView.Content.<anonymous> (TooltipView.kt:172)");
            }
            TooltipBoxView tooltipBoxView = TooltipBoxView.this;
            ComposableScope composableScope = new ComposableScope(null, null, null, null, 15, null);
            composer.startReplaceGroup(1849434622);
            ComposerKt.sourceInformation(composer, "CC(remember):TooltipView.kt#9igjgp");
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.TooltipBoxView$Content$2$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(TooltipBoxView.AnonymousClass2.invoke$lambda$1$lambda$0((ExpoComposeView) obj));
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            tooltipBoxView.Children(composableScope, (Function1) objRememberedValue, composer, ComposableScope.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }
}
