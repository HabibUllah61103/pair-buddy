package expo.modules.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import expo.modules.kotlin.viewevent.ViewEventCallback;
import expo.modules.kotlin.viewevent.ViewEventDelegate;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.menu.ExposedDropdownMenuBoxProps;
import expo.modules.ui.menu.ExposedDropdownMenuBoxViewKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: ExpoUIModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1 implements Function4<FunctionalComposableScope, ExposedDropdownMenuBoxProps, Composer, Integer, Unit> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property0(new PropertyReference0Impl(ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1.class, "onExpandedChange", "<v#0>", 0))};
    public static final ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1 INSTANCE = new ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1();

    ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1() {
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, ExposedDropdownMenuBoxProps exposedDropdownMenuBoxProps, Composer composer, Integer num) {
        invoke(functionalComposableScope, exposedDropdownMenuBoxProps, composer, num.intValue());
        return Unit.INSTANCE;
    }

    private static final ViewEventCallback<GenericEventPayload1<Boolean>> invoke$lambda$1(ViewEventDelegate<GenericEventPayload1<Boolean>> viewEventDelegate) {
        return viewEventDelegate.getValue($$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2(ViewEventDelegate viewEventDelegate, boolean z) {
        invoke$lambda$1(viewEventDelegate).invoke(new GenericEventPayload1<>(Boolean.valueOf(z)));
        return Unit.INSTANCE;
    }

    public final void invoke(FunctionalComposableScope ExpoUIView, ExposedDropdownMenuBoxProps props, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
        Intrinsics.checkNotNullParameter(props, "props");
        ComposerKt.sourceInformation(composer, "C478@16621L61,479@16726L46,479@16689L83:ExpoUIModule.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1535170533, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$1535170533.<anonymous> (ExpoUIModule.kt:478)");
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
        composer.startReplaceGroup(5004770);
        ComposerKt.sourceInformation(composer, "CC(remember):ExpoUIModule.kt#9igjgp");
        boolean zChangedInstance = composer.changedInstance(viewEventDelegate2);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            objRememberedValue2 = new Function1() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1.invoke$lambda$3$lambda$2(viewEventDelegate2, ((Boolean) obj).booleanValue());
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        composer.endReplaceGroup();
        ExposedDropdownMenuBoxViewKt.ExposedDropdownMenuBoxContent(ExpoUIView, props, (Function1) objRememberedValue2, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
