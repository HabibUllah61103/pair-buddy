package expo.modules.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import expo.modules.kotlin.viewevent.ViewEventCallback;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: ExpoUIModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1 implements Function4<FunctionalComposableScope, TimePickerDialogProps, Composer, Integer, Unit> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property0(new PropertyReference0Impl(ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1.class, "onDateSelected", "<v#0>", 0)), Reflection.property0(new PropertyReference0Impl(ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1.class, "onDismissRequest", "<v#1>", 0))};
    public static final ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1 INSTANCE = new ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1();

    ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1() {
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, TimePickerDialogProps timePickerDialogProps, Composer composer, Integer num) {
        invoke(functionalComposableScope, timePickerDialogProps, composer, num.intValue());
        return Unit.INSTANCE;
    }

    private static final ViewEventCallback<DatePickerResult> invoke$lambda$1(ViewEventDelegate<DatePickerResult> viewEventDelegate) {
        return viewEventDelegate.getValue($$delegatedProperties[0]);
    }

    private static final ViewEventCallback<Unit> invoke$lambda$3(ViewEventDelegate<Unit> viewEventDelegate) {
        return viewEventDelegate.getValue($$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$5$lambda$4(ViewEventDelegate viewEventDelegate, DatePickerResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        invoke$lambda$1(viewEventDelegate).invoke(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$7$lambda$6(ViewEventDelegate viewEventDelegate) {
        invoke$lambda$3(viewEventDelegate).invoke(Unit.INSTANCE);
        return Unit.INSTANCE;
    }

    public final void invoke(FunctionalComposableScope ExpoUIView, TimePickerDialogProps props, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
        Intrinsics.checkNotNullParameter(props, "props");
        ComposerKt.sourceInformation(composer, "C245@8588L48,246@8667L36,247@8745L22,247@8769L26,247@8710L86:ExpoUIModule.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(674915625, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$674915625.<anonymous> (ExpoUIModule.kt:245)");
        }
        composer.startReplaceGroup(1849434622);
        ComposerKt.sourceInformation(composer, "CC(remember):ExpoUIModule.kt#9igjgp");
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            Object viewEventDelegate = new ViewEventDelegate(ExpoUIView.getView(), null);
            composer.updateRememberedValue(viewEventDelegate);
            objRememberedValue = viewEventDelegate;
        }
        final ViewEventDelegate viewEventDelegate2 = (ViewEventDelegate) objRememberedValue;
        composer.endReplaceGroup();
        composer.startReplaceGroup(1849434622);
        ComposerKt.sourceInformation(composer, "CC(remember):ExpoUIModule.kt#9igjgp");
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            objRememberedValue2 = new ViewEventDelegate(ExpoUIView.getView(), null);
            composer.updateRememberedValue(objRememberedValue2);
        }
        final ViewEventDelegate viewEventDelegate3 = (ViewEventDelegate) objRememberedValue2;
        composer.endReplaceGroup();
        composer.startReplaceGroup(5004770);
        ComposerKt.sourceInformation(composer, "CC(remember):ExpoUIModule.kt#9igjgp");
        boolean zChangedInstance = composer.changedInstance(viewEventDelegate2);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
            objRememberedValue3 = new Function1() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1.invoke$lambda$5$lambda$4(viewEventDelegate2, (DatePickerResult) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue3);
        }
        Function1 function1 = (Function1) objRememberedValue3;
        composer.endReplaceGroup();
        composer.startReplaceGroup(5004770);
        ComposerKt.sourceInformation(composer, "CC(remember):ExpoUIModule.kt#9igjgp");
        boolean zChangedInstance2 = composer.changedInstance(viewEventDelegate3);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
            objRememberedValue4 = new Function0() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1.invoke$lambda$7$lambda$6(viewEventDelegate3);
                }
            };
            composer.updateRememberedValue(objRememberedValue4);
        }
        composer.endReplaceGroup();
        DatePickerViewKt.ExpoTimePickerDialogContent(props, function1, (Function0) objRememberedValue4, composer, (i >> 3) & 14);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
