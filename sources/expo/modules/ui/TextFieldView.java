package expo.modules.ui;

import android.content.Context;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import com.facebook.react.views.textinput.ReactTextInputShadowNode;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.viewevent.ViewEventCallback;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.viewevent.ViewEventDelegateKt;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeView;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TextFieldView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010+\u001a\u00020,J\r\u0010-\u001a\u0004\u0018\u00010.¢\u0006\u0002\u0010/J\u0011\u00100\u001a\u00020.*\u000201H\u0017¢\u0006\u0002\u00102R\u0014\u0010\t\u001a\u00020\u0002X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR-\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R-\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0012R-\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u0019\u0010\u0012R\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010&\u001a\u0004\u0018\u00010\u000f2\b\u0010%\u001a\u0004\u0018\u00010\u000f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00063"}, d2 = {"Lexpo/modules/ui/TextFieldView;", "Lexpo/modules/kotlin/views/ExpoComposeView;", "Lexpo/modules/ui/TextFieldProps;", "context", "Landroid/content/Context;", "appContext", "Lexpo/modules/kotlin/AppContext;", "<init>", "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V", "props", "getProps", "()Lexpo/modules/ui/TextFieldProps;", "onValueChange", "Lexpo/modules/kotlin/viewevent/ViewEventCallback;", "", "", "", "getOnValueChange", "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;", "onValueChange$delegate", "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;", "onFocusChanged", "getOnFocusChanged", "onFocusChanged$delegate", "onKeyboardAction", "getOnKeyboardAction", "onKeyboardAction$delegate", "textState", "Landroidx/compose/runtime/MutableState;", "focusRequester", "Landroidx/compose/ui/focus/FocusRequester;", "getFocusRequester", "()Landroidx/compose/ui/focus/FocusRequester;", "focusRequester$delegate", "Lkotlin/Lazy;", "focusManager", "Landroidx/compose/ui/focus/FocusManager;", RNConstants.ARG_VALUE, "text", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "focus", "", "blur", "", "()Lkotlin/Unit;", "Content", "Lexpo/modules/kotlin/views/ComposableScope;", "(Lexpo/modules/kotlin/views/ComposableScope;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextFieldView extends ExpoComposeView<TextFieldProps> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TextFieldView.class, "onValueChange", "getOnValueChange()Lexpo/modules/kotlin/viewevent/ViewEventCallback;", 0)), Reflection.property1(new PropertyReference1Impl(TextFieldView.class, "onFocusChanged", "getOnFocusChanged()Lexpo/modules/kotlin/viewevent/ViewEventCallback;", 0)), Reflection.property1(new PropertyReference1Impl(TextFieldView.class, "onKeyboardAction", "getOnKeyboardAction()Lexpo/modules/kotlin/viewevent/ViewEventCallback;", 0))};
    public static final int $stable = 8;
    private FocusManager focusManager;

    /* JADX INFO: renamed from: focusRequester$delegate, reason: from kotlin metadata */
    private final Lazy focusRequester;

    /* JADX INFO: renamed from: onFocusChanged$delegate, reason: from kotlin metadata */
    private final ViewEventDelegate onFocusChanged;

    /* JADX INFO: renamed from: onKeyboardAction$delegate, reason: from kotlin metadata */
    private final ViewEventDelegate onKeyboardAction;

    /* JADX INFO: renamed from: onValueChange$delegate, reason: from kotlin metadata */
    private final ViewEventDelegate onValueChange;
    private final TextFieldProps props;
    private final MutableState<String> textState;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$27(TextFieldView textFieldView, ComposableScope composableScope, int i, Composer composer, int i2) {
        textFieldView.Content(composableScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldView(Context context, AppContext appContext) {
        super(context, appContext, false, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.props = new TextFieldProps(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
        TextFieldView textFieldView = this;
        this.onValueChange = ViewEventDelegateKt.MapEventDispatcher$default(textFieldView, null, 1, null);
        this.onFocusChanged = ViewEventDelegateKt.MapEventDispatcher$default(textFieldView, null, 1, null);
        this.onKeyboardAction = ViewEventDelegateKt.MapEventDispatcher$default(textFieldView, null, 1, null);
        this.textState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.focusRequester = LazyKt.lazy(new Function0() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TextFieldView.focusRequester_delegate$lambda$0();
            }
        });
    }

    @Override // expo.modules.kotlin.views.ExpoComposeView
    public TextFieldProps getProps() {
        return this.props;
    }

    private final ViewEventCallback<Map<String, Object>> getOnValueChange() {
        return this.onValueChange.getValue(this, $$delegatedProperties[0]);
    }

    private final ViewEventCallback<Map<String, Object>> getOnFocusChanged() {
        return this.onFocusChanged.getValue(this, $$delegatedProperties[1]);
    }

    private final ViewEventCallback<Map<String, Object>> getOnKeyboardAction() {
        return this.onKeyboardAction.getValue(this, $$delegatedProperties[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FocusRequester focusRequester_delegate$lambda$0() {
        return new FocusRequester();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FocusRequester getFocusRequester() {
        return (FocusRequester) this.focusRequester.getValue();
    }

    public final String getText() {
        return this.textState.getValue();
    }

    public final void setText(String str) {
        this.textState.setValue(str);
    }

    public final boolean focus() {
        return FocusRequester.m5718requestFocus3ESFkO8$default(getFocusRequester(), 0, 1, null);
    }

    public final Unit blur() {
        FocusManager focusManager = this.focusManager;
        if (focusManager == null) {
            return null;
        }
        FocusManager.clearFocus$default(focusManager, false, 1, null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:127:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:132:0x0408  */
    /* JADX WARN: Code duplicated, block: B:135:0x0438  */
    /* JADX WARN: Code duplicated, block: B:139:0x0452  */
    /* JADX WARN: Code duplicated, block: B:143:0x0479  */
    /* JADX WARN: Code duplicated, block: B:144:0x047b  */
    /* JADX WARN: Code duplicated, block: B:147:0x049b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:148:0x049d  */
    /* JADX WARN: Code duplicated, block: B:149:0x04af  */
    /* JADX WARN: Code duplicated, block: B:154:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:157:0x04f6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:158:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:159:0x050a  */
    /* JADX WARN: Code duplicated, block: B:163:0x0525  */
    /* JADX WARN: Code duplicated, block: B:164:0x0580  */
    /* JADX WARN: Code duplicated, block: B:167:0x05df  */
    @Override // expo.modules.kotlin.views.ExpoComposeView
    public void Content(final ComposableScope composableScope, Composer composer, final int i) {
        int i2;
        int iIntValue;
        int i3;
        Integer value;
        int iIntValue2;
        boolean zChangedInstance;
        Object objRememberedValue;
        Modifier modifierOnFocusChanged;
        boolean z;
        Shape shapeShapeFromShapeRecord;
        Shape shape;
        TextFieldColors colors;
        TextFieldColors textFieldColors;
        boolean zChangedInstance2;
        TextFieldView$Content$1$1 textFieldView$Content$1$1RememberedValue;
        Boolean autoCorrectEnabled;
        Intrinsics.checkNotNullParameter(composableScope, "<this>");
        Composer composerStartRestartGroup = composer.startRestartGroup(400822853);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(Content)241@11479L7,243@11589L76,265@13028L25,267@13112L112,268@13239L108,269@13364L112,270@13497L120,271@13636L116,272@13769L112,281@14125L86,283@14272L86:TextFieldView.kt#v15e7d");
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
                ComposerKt.traceEventStart(400822853, i2, -1, "expo.modules.ui.TextFieldView.Content (TextFieldView.kt:240)");
            }
            ProvidableCompositionLocal<FocusManager> localFocusManager = CompositionLocalsKt.getLocalFocusManager();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composerStartRestartGroup.consume(localFocusManager);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            this.focusManager = (FocusManager) objConsume;
            String value2 = this.textState.getValue();
            if (value2 == null) {
                value2 = getProps().getDefaultValue().getValue();
            }
            String str = value2;
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(this);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance3 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$2$lambda$1(this.f$0, (String) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Function1 function1 = (Function1) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            TextFieldView textFieldView = this;
            final SlotView slotViewFindChildSlotView = SlotViewKt.findChildSlotView(textFieldView, "label");
            composerStartRestartGroup.startReplaceGroup(-1356282582);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*249@11785L21");
            ComposableLambda composableLambdaRememberComposableLambda = slotViewFindChildSlotView == null ? null : ComposableLambdaKt.rememberComposableLambda(640975748, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$label$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C249@11792L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(640975748, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:249)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView2 = SlotViewKt.findChildSlotView(textFieldView, ReactTextInputShadowNode.PROP_PLACEHOLDER);
            composerStartRestartGroup.startReplaceGroup(-1356278070);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*250@11926L21");
            ComposableLambda composableLambdaRememberComposableLambda2 = slotViewFindChildSlotView2 == null ? null : ComposableLambdaKt.rememberComposableLambda(2001021571, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$placeholder$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C250@11933L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2001021571, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:250)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView2, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView3 = SlotViewKt.findChildSlotView(textFieldView, "leadingIcon");
            composerStartRestartGroup.startReplaceGroup(-1356273558);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*251@12067L21");
            ComposableLambda composableLambdaRememberComposableLambda3 = slotViewFindChildSlotView3 == null ? null : ComposableLambdaKt.rememberComposableLambda(1216331183, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$leadingIcon$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C251@12074L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1216331183, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:251)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView3, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView4 = SlotViewKt.findChildSlotView(textFieldView, "trailingIcon");
            composerStartRestartGroup.startReplaceGroup(-1356268982);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*252@12210L21");
            ComposableLambda composableLambdaRememberComposableLambda4 = slotViewFindChildSlotView4 == null ? null : ComposableLambdaKt.rememberComposableLambda(458228049, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$trailingIcon$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C252@12217L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(458228049, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:252)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView4, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView5 = SlotViewKt.findChildSlotView(textFieldView, "prefix");
            composerStartRestartGroup.startReplaceGroup(-1356264790);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*253@12341L21");
            ComposableLambda composableLambdaRememberComposableLambda5 = slotViewFindChildSlotView5 == null ? null : ComposableLambdaKt.rememberComposableLambda(-1531020882, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$prefix$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C253@12348L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1531020882, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:253)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView5, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView6 = SlotViewKt.findChildSlotView(textFieldView, "suffix");
            composerStartRestartGroup.startReplaceGroup(-1356260598);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*254@12472L21");
            ComposableLambda composableLambdaRememberComposableLambda6 = slotViewFindChildSlotView6 == null ? null : ComposableLambdaKt.rememberComposableLambda(-1048081811, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$suffix$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C254@12479L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1048081811, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:254)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView6, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            final SlotView slotViewFindChildSlotView7 = SlotViewKt.findChildSlotView(textFieldView, "supportingText");
            composerStartRestartGroup.startReplaceGroup(-1356255894);
            ComposerKt.sourceInformation(composerStartRestartGroup, "*255@12619L21");
            ComposableLambda composableLambdaRememberComposableLambda7 = slotViewFindChildSlotView7 == null ? null : ComposableLambdaKt.rememberComposableLambda(-87010660, true, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.TextFieldView$Content$supportingText$1$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C255@12626L12:TextFieldView.kt#v15e7d");
                    if ((i4 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-87010660, i4, -1, "expo.modules.ui.TextFieldView.Content.<anonymous>.<anonymous> (TextFieldView.kt:255)");
                    }
                    SlotViewKt.renderSlot(slotViewFindChildSlotView7, composer2, ViewEventDelegate.$stable | ExpoComposeView.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54);
            composerStartRestartGroup.endReplaceGroup();
            TextFieldKeyboardOptionsRecord value3 = getProps().getKeyboardOptions().getValue();
            KeyboardOptions keyboardOptionsM1380copyINvB4aQ$default = KeyboardOptions.m1380copyINvB4aQ$default(KeyboardOptions.INSTANCE.getDefault(), TextFieldViewKt.toCapitalization(value3 != null ? value3.getCapitalization() : null), Boolean.valueOf((value3 == null || (autoCorrectEnabled = value3.getAutoCorrectEnabled()) == null) ? true : autoCorrectEnabled.booleanValue()), TextFieldViewKt.toKeyboardType(value3 != null ? value3.getKeyboardType() : null), TextFieldViewKt.toImeAction(value3 != null ? value3.getImeAction() : null), (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 112, (Object) null);
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance4 = composerStartRestartGroup.changedInstance(this);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance4 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function0() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return TextFieldView.Content$lambda$11$lambda$10(this.f$0);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final Function0 function0 = (Function0) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance5 = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changed(function0);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance5 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$13$lambda$12(this.f$0, function0, (KeyboardActionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            Function1 function2 = (Function1) objRememberedValue4;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changed(function0);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance6 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue5 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$15$lambda$14(this.f$0, function0, (KeyboardActionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            Function1 function3 = (Function1) objRememberedValue5;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changed(function0);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance7 || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue6 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$17$lambda$16(this.f$0, function0, (KeyboardActionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            Function1 function4 = (Function1) objRememberedValue6;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance8 = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changed(function0);
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance8 || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue7 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$19$lambda$18(this.f$0, function0, (KeyboardActionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            Function1 function5 = (Function1) objRememberedValue7;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance9 = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changed(function0);
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance9 || objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue8 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$21$lambda$20(this.f$0, function0, (KeyboardActionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            Function1 function6 = (Function1) objRememberedValue8;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1633490746);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            boolean zChangedInstance10 = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changed(function0);
            Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance10 || objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue9 = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$23$lambda$22(this.f$0, function0, (KeyboardActionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
            }
            composerStartRestartGroup.endReplaceGroup();
            KeyboardActions keyboardActions = new KeyboardActions(function2, function3, function4, function5, function6, (Function1) objRememberedValue9);
            boolean zBooleanValue = getProps().getSingleLine().getValue().booleanValue();
            Integer value4 = getProps().getMaxLines().getValue();
            if (value4 != null) {
                iIntValue = value4.intValue();
            } else {
                if (zBooleanValue) {
                    i3 = 1;
                } else {
                    iIntValue = Integer.MAX_VALUE;
                }
                value = getProps().getMinLines().getValue();
                if (value != null) {
                    iIntValue2 = value.intValue();
                } else {
                    iIntValue2 = 1;
                }
                Modifier modifierFocusRequester = FocusRequesterModifierKt.focusRequester(ModifierRegistry.INSTANCE.applyModifiers(getProps().getModifiers().getValue(), getAppContext(), composableScope, getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6) | ((i2 << 6) & 896)), getFocusRequester());
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
                zChangedInstance = composerStartRestartGroup.changedInstance(this);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return TextFieldView.Content$lambda$25$lambda$24(this.f$0, (FocusState) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                modifierOnFocusChanged = FocusChangedModifierKt.onFocusChanged(modifierFocusRequester, (Function1) objRememberedValue);
                composerStartRestartGroup.startReplaceGroup(-1356199548);
                ComposerKt.sourceInformation(composerStartRestartGroup, "288@14420L33,288@14399L54");
                if (getProps().getAutoFocus().getValue().booleanValue()) {
                    Unit unit = Unit.INSTANCE;
                    composerStartRestartGroup.startReplaceGroup(5004770);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
                    zChangedInstance2 = composerStartRestartGroup.changedInstance(this);
                    textFieldView$Content$1$1RememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!zChangedInstance2 || textFieldView$Content$1$1RememberedValue == Composer.INSTANCE.getEmpty()) {
                        textFieldView$Content$1$1RememberedValue = new TextFieldView$Content$1$1(this, null);
                        composerStartRestartGroup.updateRememberedValue(textFieldView$Content$1$1RememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) textFieldView$Content$1$1RememberedValue, composerStartRestartGroup, 6);
                }
                composerStartRestartGroup.endReplaceGroup();
                if (getProps().getVariant().getValue() == TextFieldVariant.OUTLINED) {
                    z = true;
                } else {
                    z = false;
                }
                shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(getProps().getShape().getValue());
                composerStartRestartGroup.startReplaceGroup(-1356193662);
                ComposerKt.sourceInformation(composerStartRestartGroup, "");
                if (shapeShapeFromShapeRecord == null) {
                    if (z) {
                        composerStartRestartGroup.startReplaceGroup(-1356190870);
                        ComposerKt.sourceInformation(composerStartRestartGroup, "293@14638L5");
                        shapeShapeFromShapeRecord = OutlinedTextFieldDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1356189942);
                        ComposerKt.sourceInformation(composerStartRestartGroup, "293@14667L5");
                        shapeShapeFromShapeRecord = TextFieldDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                }
                shape = shapeShapeFromShapeRecord;
                composerStartRestartGroup.endReplaceGroup();
                TextFieldColorsRecord value5 = getProps().getColors().getValue();
                composerStartRestartGroup.startReplaceGroup(-1356188551);
                ComposerKt.sourceInformation(composerStartRestartGroup, "294@14710L20");
                colors = value5 != null ? TextFieldViewKt.toColors(value5, z, composerStartRestartGroup, 0) : null;
                composerStartRestartGroup.endReplaceGroup();
                composerStartRestartGroup.startReplaceGroup(-1356189079);
                ComposerKt.sourceInformation(composerStartRestartGroup, "");
                if (colors == null) {
                    if (z) {
                        composerStartRestartGroup.startReplaceGroup(-1356186259);
                        ComposerKt.sourceInformation(composerStartRestartGroup, "295@14782L8");
                        colors = OutlinedTextFieldDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1356185235);
                        ComposerKt.sourceInformation(composerStartRestartGroup, "295@14814L8");
                        colors = TextFieldDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                }
                textFieldColors = colors;
                composerStartRestartGroup.endReplaceGroup();
                if (z) {
                    composerStartRestartGroup.startReplaceGroup(907979037);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "298@14852L594");
                    OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) function1, modifierOnFocusChanged, getProps().getEnabled().getValue().booleanValue(), getProps().getReadOnly().getValue().booleanValue(), (TextStyle) null, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda5, composableLambdaRememberComposableLambda6, composableLambdaRememberComposableLambda7, getProps().isError().getValue().booleanValue(), (VisualTransformation) null, keyboardOptionsM1380copyINvB4aQ$default, keyboardActions, zBooleanValue, i3, iIntValue2, (MutableInteractionSource) null, shape, textFieldColors, composerStartRestartGroup, 0, 0, 0, 1064992);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(908587877);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "310@15466L586");
                    TextFieldKt.TextField(str, (Function1<? super String, Unit>) function1, modifierOnFocusChanged, getProps().getEnabled().getValue().booleanValue(), getProps().getReadOnly().getValue().booleanValue(), (TextStyle) null, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda5, composableLambdaRememberComposableLambda6, composableLambdaRememberComposableLambda7, getProps().isError().getValue().booleanValue(), (VisualTransformation) null, keyboardOptionsM1380copyINvB4aQ$default, keyboardActions, zBooleanValue, i3, iIntValue2, (MutableInteractionSource) null, shape, textFieldColors, composerStartRestartGroup, 0, 0, 0, 1064992);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            i3 = iIntValue;
            value = getProps().getMinLines().getValue();
            if (value != null) {
                iIntValue2 = value.intValue();
            } else {
                iIntValue2 = 1;
            }
            Modifier modifierFocusRequester2 = FocusRequesterModifierKt.focusRequester(ModifierRegistry.INSTANCE.applyModifiers(getProps().getModifiers().getValue(), getAppContext(), composableScope, getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6) | ((i2 << 6) & 896)), getFocusRequester());
            composerStartRestartGroup.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
            zChangedInstance = composerStartRestartGroup.changedInstance(this);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (!zChangedInstance) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$25$lambda$24(this.f$0, (FocusState) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TextFieldView.Content$lambda$25$lambda$24(this.f$0, (FocusState) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composerStartRestartGroup.endReplaceGroup();
            modifierOnFocusChanged = FocusChangedModifierKt.onFocusChanged(modifierFocusRequester2, (Function1) objRememberedValue);
            composerStartRestartGroup.startReplaceGroup(-1356199548);
            ComposerKt.sourceInformation(composerStartRestartGroup, "288@14420L33,288@14399L54");
            if (getProps().getAutoFocus().getValue().booleanValue()) {
                Unit unit2 = Unit.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composerStartRestartGroup, "CC(remember):TextFieldView.kt#9igjgp");
                zChangedInstance2 = composerStartRestartGroup.changedInstance(this);
                textFieldView$Content$1$1RememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance2) {
                    textFieldView$Content$1$1RememberedValue = new TextFieldView$Content$1$1(this, null);
                    composerStartRestartGroup.updateRememberedValue(textFieldView$Content$1$1RememberedValue);
                } else {
                    textFieldView$Content$1$1RememberedValue = new TextFieldView$Content$1$1(this, null);
                    composerStartRestartGroup.updateRememberedValue(textFieldView$Content$1$1RememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                EffectsKt.LaunchedEffect(unit2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) textFieldView$Content$1$1RememberedValue, composerStartRestartGroup, 6);
            }
            composerStartRestartGroup.endReplaceGroup();
            if (getProps().getVariant().getValue() == TextFieldVariant.OUTLINED) {
                z = true;
            } else {
                z = false;
            }
            shapeShapeFromShapeRecord = ShapeViewKt.shapeFromShapeRecord(getProps().getShape().getValue());
            composerStartRestartGroup.startReplaceGroup(-1356193662);
            ComposerKt.sourceInformation(composerStartRestartGroup, "");
            if (shapeShapeFromShapeRecord == null) {
                if (z) {
                    composerStartRestartGroup.startReplaceGroup(-1356190870);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "293@14638L5");
                    shapeShapeFromShapeRecord = OutlinedTextFieldDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1356189942);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "293@14667L5");
                    shapeShapeFromShapeRecord = TextFieldDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                }
                composerStartRestartGroup.endReplaceGroup();
            }
            shape = shapeShapeFromShapeRecord;
            composerStartRestartGroup.endReplaceGroup();
            TextFieldColorsRecord value6 = getProps().getColors().getValue();
            composerStartRestartGroup.startReplaceGroup(-1356188551);
            ComposerKt.sourceInformation(composerStartRestartGroup, "294@14710L20");
            if (value6 != null) {
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-1356189079);
            ComposerKt.sourceInformation(composerStartRestartGroup, "");
            if (colors == null) {
                if (z) {
                    composerStartRestartGroup.startReplaceGroup(-1356186259);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "295@14782L8");
                    colors = OutlinedTextFieldDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1356185235);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "295@14814L8");
                    colors = TextFieldDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                composerStartRestartGroup.endReplaceGroup();
            }
            textFieldColors = colors;
            composerStartRestartGroup.endReplaceGroup();
            if (z) {
                composerStartRestartGroup.startReplaceGroup(907979037);
                ComposerKt.sourceInformation(composerStartRestartGroup, "298@14852L594");
                OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) function1, modifierOnFocusChanged, getProps().getEnabled().getValue().booleanValue(), getProps().getReadOnly().getValue().booleanValue(), (TextStyle) null, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda5, composableLambdaRememberComposableLambda6, composableLambdaRememberComposableLambda7, getProps().isError().getValue().booleanValue(), (VisualTransformation) null, keyboardOptionsM1380copyINvB4aQ$default, keyboardActions, zBooleanValue, i3, iIntValue2, (MutableInteractionSource) null, shape, textFieldColors, composerStartRestartGroup, 0, 0, 0, 1064992);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(908587877);
                ComposerKt.sourceInformation(composerStartRestartGroup, "310@15466L586");
                TextFieldKt.TextField(str, (Function1<? super String, Unit>) function1, modifierOnFocusChanged, getProps().getEnabled().getValue().booleanValue(), getProps().getReadOnly().getValue().booleanValue(), (TextStyle) null, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda5, composableLambdaRememberComposableLambda6, composableLambdaRememberComposableLambda7, getProps().isError().getValue().booleanValue(), (VisualTransformation) null, keyboardOptionsM1380copyINvB4aQ$default, keyboardActions, zBooleanValue, i3, iIntValue2, (MutableInteractionSource) null, shape, textFieldColors, composerStartRestartGroup, 0, 0, 0, 1064992);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.TextFieldView$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TextFieldView.Content$lambda$27(this.f$0, composableScope, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$2$lambda$1(TextFieldView textFieldView, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        textFieldView.textState.setValue(it);
        textFieldView.getOnValueChange().invoke(MapsKt.mapOf(TuplesKt.to(RNConstants.ARG_VALUE, it)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String Content$lambda$11$lambda$10(TextFieldView textFieldView) {
        String value = textFieldView.textState.getValue();
        return value == null ? "" : value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$13$lambda$12(TextFieldView textFieldView, Function0 function0, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        KeyboardActions.mo1377defaultKeyboardActionKlQnJC8(ImeAction.INSTANCE.m8521getDoneeUduSuo());
        textFieldView.getOnKeyboardAction().invoke(MapsKt.mapOf(TuplesKt.to("action", "done"), TuplesKt.to(RNConstants.ARG_VALUE, function0.invoke())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$15$lambda$14(TextFieldView textFieldView, Function0 function0, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        KeyboardActions.mo1377defaultKeyboardActionKlQnJC8(ImeAction.INSTANCE.m8522getGoeUduSuo());
        textFieldView.getOnKeyboardAction().invoke(MapsKt.mapOf(TuplesKt.to("action", "go"), TuplesKt.to(RNConstants.ARG_VALUE, function0.invoke())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$17$lambda$16(TextFieldView textFieldView, Function0 function0, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        KeyboardActions.mo1377defaultKeyboardActionKlQnJC8(ImeAction.INSTANCE.m8523getNexteUduSuo());
        textFieldView.getOnKeyboardAction().invoke(MapsKt.mapOf(TuplesKt.to("action", "next"), TuplesKt.to(RNConstants.ARG_VALUE, function0.invoke())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$19$lambda$18(TextFieldView textFieldView, Function0 function0, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        KeyboardActions.mo1377defaultKeyboardActionKlQnJC8(ImeAction.INSTANCE.m8525getPreviouseUduSuo());
        textFieldView.getOnKeyboardAction().invoke(MapsKt.mapOf(TuplesKt.to("action", "previous"), TuplesKt.to(RNConstants.ARG_VALUE, function0.invoke())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$21$lambda$20(TextFieldView textFieldView, Function0 function0, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        KeyboardActions.mo1377defaultKeyboardActionKlQnJC8(ImeAction.INSTANCE.m8526getSearcheUduSuo());
        textFieldView.getOnKeyboardAction().invoke(MapsKt.mapOf(TuplesKt.to("action", "search"), TuplesKt.to(RNConstants.ARG_VALUE, function0.invoke())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$23$lambda$22(TextFieldView textFieldView, Function0 function0, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        KeyboardActions.mo1377defaultKeyboardActionKlQnJC8(ImeAction.INSTANCE.m8527getSendeUduSuo());
        textFieldView.getOnKeyboardAction().invoke(MapsKt.mapOf(TuplesKt.to("action", "send"), TuplesKt.to(RNConstants.ARG_VALUE, function0.invoke())));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Content$lambda$25$lambda$24(TextFieldView textFieldView, FocusState focusState) {
        Intrinsics.checkNotNullParameter(focusState, "focusState");
        textFieldView.getOnFocusChanged().invoke(MapsKt.mapOf(TuplesKt.to(RNConstants.ARG_VALUE, Boolean.valueOf(focusState.isFocused()))));
        return Unit.INSTANCE;
    }
}
