package expo.modules.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import expo.modules.kotlin.views.FunctionalComposableScope;
import expo.modules.ui.button.ButtonProps;
import expo.modules.ui.button.FloatingActionButtonProps;
import expo.modules.ui.menu.DropdownMenuItemProps;
import expo.modules.ui.menu.DropdownMenuProps;
import expo.modules.ui.menu.ExposedDropdownMenuBoxProps;
import expo.modules.ui.menu.ExposedDropdownMenuProps;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExpoUIModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposableSingletons$ExpoUIModuleKt {
    public static final ComposableSingletons$ExpoUIModuleKt INSTANCE = new ComposableSingletons$ExpoUIModuleKt();
    private static Function4<FunctionalComposableScope, SingleChoiceSegmentedButtonRowProps, Composer, Integer, Unit> lambda$666608302 = ComposableLambdaKt.composableLambdaInstance(666608302, false, new Function4<FunctionalComposableScope, SingleChoiceSegmentedButtonRowProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$666608302$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, SingleChoiceSegmentedButtonRowProps singleChoiceSegmentedButtonRowProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, singleChoiceSegmentedButtonRowProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, SingleChoiceSegmentedButtonRowProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C110@3630L44:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(666608302, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$666608302.<anonymous> (ExpoUIModule.kt:110)");
            }
            SegmentedControlViewKt.SingleChoiceSegmentedButtonRowContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, MultiChoiceSegmentedButtonRowProps, Composer, Integer, Unit> lambda$213348912 = ComposableLambdaKt.composableLambdaInstance(213348912, false, new Function4<FunctionalComposableScope, MultiChoiceSegmentedButtonRowProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$213348912$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, MultiChoiceSegmentedButtonRowProps multiChoiceSegmentedButtonRowProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, multiChoiceSegmentedButtonRowProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, MultiChoiceSegmentedButtonRowProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C114@3787L43:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(213348912, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$213348912.<anonymous> (ExpoUIModule.kt:114)");
            }
            SegmentedControlViewKt.MultiChoiceSegmentedButtonRowContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-2048044005, reason: not valid java name */
    private static Function4<FunctionalComposableScope, SegmentedButtonProps, Composer, Integer, Unit> f155lambda$2048044005 = ComposableLambdaKt.composableLambdaInstance(-2048044005, false, ComposableSingletons$ExpoUIModuleKt$lambda$2048044005$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-22859264, reason: not valid java name */
    private static Function4<FunctionalComposableScope, SwitchProps, Composer, Integer, Unit> f158lambda$22859264 = ComposableLambdaKt.composableLambdaInstance(-22859264, false, ComposableSingletons$ExpoUIModuleKt$lambda$22859264$1.INSTANCE);
    private static Function4<FunctionalComposableScope, CheckboxProps, Composer, Integer, Unit> lambda$1847121008 = ComposableLambdaKt.composableLambdaInstance(1847121008, false, ComposableSingletons$ExpoUIModuleKt$lambda$1847121008$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-870391607, reason: not valid java name */
    private static Function4<FunctionalComposableScope, TriStateCheckboxProps, Composer, Integer, Unit> f162lambda$870391607 = ComposableLambdaKt.composableLambdaInstance(-870391607, false, ComposableSingletons$ExpoUIModuleKt$lambda$870391607$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> lambda$1959291615 = ComposableLambdaKt.composableLambdaInstance(1959291615, false, ComposableSingletons$ExpoUIModuleKt$lambda$1959291615$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> lambda$1275061310 = ComposableLambdaKt.composableLambdaInstance(1275061310, false, ComposableSingletons$ExpoUIModuleKt$lambda$1275061310$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> lambda$590831005 = ComposableLambdaKt.composableLambdaInstance(590831005, false, ComposableSingletons$ExpoUIModuleKt$lambda$590831005$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-93399300, reason: not valid java name */
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> f164lambda$93399300 = ComposableLambdaKt.composableLambdaInstance(-93399300, false, ComposableSingletons$ExpoUIModuleKt$lambda$93399300$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-972502632, reason: not valid java name */
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> f165lambda$972502632 = ComposableLambdaKt.composableLambdaInstance(-972502632, false, ComposableSingletons$ExpoUIModuleKt$lambda$972502632$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-1656732937, reason: not valid java name */
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> f150lambda$1656732937 = ComposableLambdaKt.composableLambdaInstance(-1656732937, false, ComposableSingletons$ExpoUIModuleKt$lambda$1656732937$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> lambda$1954004054 = ComposableLambdaKt.composableLambdaInstance(1954004054, false, ComposableSingletons$ExpoUIModuleKt$lambda$1954004054$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> lambda$1269773749 = ComposableLambdaKt.composableLambdaInstance(1269773749, false, ComposableSingletons$ExpoUIModuleKt$lambda$1269773749$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> lambda$585543444 = ComposableLambdaKt.composableLambdaInstance(585543444, false, ComposableSingletons$ExpoUIModuleKt$lambda$585543444$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-1749060638, reason: not valid java name */
    private static Function4<FunctionalComposableScope, SliderProps, Composer, Integer, Unit> f153lambda$1749060638 = ComposableLambdaKt.composableLambdaInstance(-1749060638, false, new Function4<FunctionalComposableScope, SliderProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-1749060638$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, SliderProps sliderProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, sliderProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, SliderProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C212@7444L20:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1749060638, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-1749060638.<anonymous> (ExpoUIModule.kt:212)");
            }
            SliderViewKt.SliderContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1125543977, reason: not valid java name */
    private static Function4<FunctionalComposableScope, ShapeProps, Composer, Integer, Unit> f145lambda$1125543977 = ComposableLambdaKt.composableLambdaInstance(-1125543977, false, new Function4<FunctionalComposableScope, ShapeProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-1125543977$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, ShapeProps shapeProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, shapeProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, ShapeProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C216@7529L19:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1125543977, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-1125543977.<anonymous> (ExpoUIModule.kt:216)");
            }
            ShapeViewKt.ShapeContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-2147115026, reason: not valid java name */
    private static Function4<FunctionalComposableScope, DividerProps, Composer, Integer, Unit> f157lambda$2147115026 = ComposableLambdaKt.composableLambdaInstance(-2147115026, false, new Function4<FunctionalComposableScope, DividerProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-2147115026$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, DividerProps dividerProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, dividerProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, DividerProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C220@7627L31:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2147115026, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-2147115026.<anonymous> (ExpoUIModule.kt:220)");
            }
            DividerViewKt.HorizontalDividerContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, DividerProps, Composer, Integer, Unit> lambda$1463621965 = ComposableLambdaKt.composableLambdaInstance(1463621965, false, new Function4<FunctionalComposableScope, DividerProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$1463621965$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, DividerProps dividerProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, dividerProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, DividerProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C224@7735L29:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1463621965, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$1463621965.<anonymous> (ExpoUIModule.kt:224)");
            }
            DividerViewKt.VerticalDividerContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, DateTimePickerProps, Composer, Integer, Unit> lambda$702065030 = ComposableLambdaKt.composableLambdaInstance(702065030, false, ComposableSingletons$ExpoUIModuleKt$lambda$702065030$1.INSTANCE);
    private static Function4<FunctionalComposableScope, DatePickerDialogProps, Composer, Integer, Unit> lambda$1391962475 = ComposableLambdaKt.composableLambdaInstance(1391962475, false, ComposableSingletons$ExpoUIModuleKt$lambda$1391962475$1.INSTANCE);
    private static Function4<FunctionalComposableScope, TimePickerDialogProps, Composer, Integer, Unit> lambda$674915625 = ComposableLambdaKt.composableLambdaInstance(674915625, false, ComposableSingletons$ExpoUIModuleKt$lambda$674915625$1.INSTANCE);
    private static Function4<FunctionalComposableScope, DropdownMenuProps, Composer, Integer, Unit> lambda$945131637 = ComposableLambdaKt.composableLambdaInstance(945131637, false, ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1.INSTANCE);
    private static Function4<FunctionalComposableScope, DropdownMenuItemProps, Composer, Integer, Unit> lambda$960104775 = ComposableLambdaKt.composableLambdaInstance(960104775, false, ComposableSingletons$ExpoUIModuleKt$lambda$960104775$1.INSTANCE);
    private static Function4<FunctionalComposableScope, LinearProgressIndicatorProps, Composer, Integer, Unit> lambda$909667318 = ComposableLambdaKt.composableLambdaInstance(909667318, false, new Function4<FunctionalComposableScope, LinearProgressIndicatorProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$909667318$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, LinearProgressIndicatorProps linearProgressIndicatorProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, linearProgressIndicatorProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, LinearProgressIndicatorProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C265@9400L37:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(909667318, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$909667318.<anonymous> (ExpoUIModule.kt:265)");
            }
            ProgressViewKt.LinearProgressIndicatorContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-298376229, reason: not valid java name */
    private static Function4<FunctionalComposableScope, CircularProgressIndicatorProps, Composer, Integer, Unit> f159lambda$298376229 = ComposableLambdaKt.composableLambdaInstance(-298376229, false, new Function4<FunctionalComposableScope, CircularProgressIndicatorProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-298376229$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, CircularProgressIndicatorProps circularProgressIndicatorProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, circularProgressIndicatorProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, CircularProgressIndicatorProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C269@9542L39:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-298376229, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-298376229.<anonymous> (ExpoUIModule.kt:269)");
            }
            ProgressViewKt.CircularProgressIndicatorContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, LinearWavyProgressIndicatorProps, Composer, Integer, Unit> lambda$1472196327 = ComposableLambdaKt.composableLambdaInstance(1472196327, false, new Function4<FunctionalComposableScope, LinearWavyProgressIndicatorProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$1472196327$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, LinearWavyProgressIndicatorProps linearWavyProgressIndicatorProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, linearWavyProgressIndicatorProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, LinearWavyProgressIndicatorProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C273@9690L41:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1472196327, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$1472196327.<anonymous> (ExpoUIModule.kt:273)");
            }
            ProgressViewKt.LinearWavyProgressIndicatorContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-984615988, reason: not valid java name */
    private static Function4<FunctionalComposableScope, CircularWavyProgressIndicatorProps, Composer, Integer, Unit> f166lambda$984615988 = ComposableLambdaKt.composableLambdaInstance(-984615988, false, new Function4<FunctionalComposableScope, CircularWavyProgressIndicatorProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-984615988$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, CircularWavyProgressIndicatorProps circularWavyProgressIndicatorProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, circularWavyProgressIndicatorProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, CircularWavyProgressIndicatorProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C277@9844L43:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-984615988, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-984615988.<anonymous> (ExpoUIModule.kt:277)");
            }
            ProgressViewKt.CircularWavyProgressIndicatorContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-478967543, reason: not valid java name */
    private static Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> f160lambda$478967543 = ComposableLambdaKt.composableLambdaInstance(-478967543, false, new Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-478967543$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, LayoutProps layoutProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, layoutProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, LayoutProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C281@9951L17:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-478967543, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-478967543.<anonymous> (ExpoUIModule.kt:281)");
            }
            ComposeViewsKt.BoxContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1163197848, reason: not valid java name */
    private static Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> f147lambda$1163197848 = ComposableLambdaKt.composableLambdaInstance(-1163197848, false, new Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-1163197848$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, LayoutProps layoutProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, layoutProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, LayoutProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C285@10032L17:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1163197848, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-1163197848.<anonymous> (ExpoUIModule.kt:285)");
            }
            ComposeViewsKt.RowContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> lambda$963604626 = ComposableLambdaKt.composableLambdaInstance(963604626, false, new Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$963604626$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, LayoutProps layoutProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, layoutProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, LayoutProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C289@10117L21:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(963604626, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$963604626.<anonymous> (ExpoUIModule.kt:289)");
            }
            ComposeViewsKt.FlowRowContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> lambda$279374321 = ComposableLambdaKt.composableLambdaInstance(279374321, false, new Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$279374321$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, LayoutProps layoutProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, layoutProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, LayoutProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C293@10205L20:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(279374321, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$279374321.<anonymous> (ExpoUIModule.kt:293)");
            }
            ComposeViewsKt.ColumnContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-910306989, reason: not valid java name */
    private static Function4<FunctionalComposableScope, TextProps, Composer, Integer, Unit> f163lambda$910306989 = ComposableLambdaKt.composableLambdaInstance(-910306989, false, new Function4<FunctionalComposableScope, TextProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-910306989$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, TextProps textProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, textProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, TextProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C297@10288L18:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-910306989, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-910306989.<anonymous> (ExpoUIModule.kt:297)");
            }
            TextViewKt.TextContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1483886746, reason: not valid java name */
    private static Function4<FunctionalComposableScope, SearchBarProps, Composer, Integer, Unit> f149lambda$1483886746 = ComposableLambdaKt.composableLambdaInstance(-1483886746, false, ComposableSingletons$ExpoUIModuleKt$lambda$1483886746$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-1756934637, reason: not valid java name */
    private static Function4<FunctionalComposableScope, DockedSearchBarProps, Composer, Integer, Unit> f154lambda$1756934637 = ComposableLambdaKt.composableLambdaInstance(-1756934637, false, ComposableSingletons$ExpoUIModuleKt$lambda$1756934637$1.INSTANCE);
    private static Function4<FunctionalComposableScope, HorizontalFloatingToolbarProps, Composer, Integer, Unit> lambda$509461546 = ComposableLambdaKt.composableLambdaInstance(509461546, false, new Function4<FunctionalComposableScope, HorizontalFloatingToolbarProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$509461546$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, HorizontalFloatingToolbarProps horizontalFloatingToolbarProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, horizontalFloatingToolbarProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, HorizontalFloatingToolbarProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C315@10922L39:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(509461546, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$509461546.<anonymous> (ExpoUIModule.kt:315)");
            }
            HorizontalFloatingToolbarViewKt.HorizontalFloatingToolbarContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1118094958, reason: not valid java name */
    private static Function4<FunctionalComposableScope, PullToRefreshBoxProps, Composer, Integer, Unit> f144lambda$1118094958 = ComposableLambdaKt.composableLambdaInstance(-1118094958, false, ComposableSingletons$ExpoUIModuleKt$lambda$1118094958$1.INSTANCE);
    private static Function4<FunctionalComposableScope, HorizontalCenteredHeroCarouselProps, Composer, Integer, Unit> lambda$406335891 = ComposableLambdaKt.composableLambdaInstance(406335891, false, new Function4<FunctionalComposableScope, HorizontalCenteredHeroCarouselProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$406335891$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, HorizontalCenteredHeroCarouselProps horizontalCenteredHeroCarouselProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, horizontalCenteredHeroCarouselProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, HorizontalCenteredHeroCarouselProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C326@11317L44:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(406335891, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$406335891.<anonymous> (ExpoUIModule.kt:326)");
            }
            CarouselViewKt.HorizontalCenteredHeroCarouselContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1700720811, reason: not valid java name */
    private static Function4<FunctionalComposableScope, HorizontalMultiBrowseCarouselProps, Composer, Integer, Unit> f151lambda$1700720811 = ComposableLambdaKt.composableLambdaInstance(-1700720811, false, new Function4<FunctionalComposableScope, HorizontalMultiBrowseCarouselProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-1700720811$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, HorizontalMultiBrowseCarouselProps horizontalMultiBrowseCarouselProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, horizontalMultiBrowseCarouselProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, HorizontalMultiBrowseCarouselProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C330@11474L43:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1700720811, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-1700720811.<anonymous> (ExpoUIModule.kt:330)");
            }
            CarouselViewKt.HorizontalMultiBrowseCarouselContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1069787573, reason: not valid java name */
    private static Function4<FunctionalComposableScope, HorizontalUncontainedCarouselProps, Composer, Integer, Unit> f142lambda$1069787573 = ComposableLambdaKt.composableLambdaInstance(-1069787573, false, new Function4<FunctionalComposableScope, HorizontalUncontainedCarouselProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-1069787573$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, HorizontalUncontainedCarouselProps horizontalUncontainedCarouselProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, horizontalUncontainedCarouselProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, HorizontalUncontainedCarouselProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C334@11630L43:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1069787573, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-1069787573.<anonymous> (ExpoUIModule.kt:334)");
            }
            CarouselViewKt.HorizontalUncontainedCarouselContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, AlertDialogProps, Composer, Integer, Unit> lambda$1289444291 = ComposableLambdaKt.composableLambdaInstance(1289444291, false, ComposableSingletons$ExpoUIModuleKt$lambda$1289444291$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-2068023843, reason: not valid java name */
    private static Function4<FunctionalComposableScope, AssistChipProps, Composer, Integer, Unit> f156lambda$2068023843 = ComposableLambdaKt.composableLambdaInstance(-2068023843, false, ComposableSingletons$ExpoUIModuleKt$lambda$2068023843$1.INSTANCE);
    private static Function4<FunctionalComposableScope, InputChipProps, Composer, Integer, Unit> lambda$1842788147 = ComposableLambdaKt.composableLambdaInstance(1842788147, false, ComposableSingletons$ExpoUIModuleKt$lambda$1842788147$1.INSTANCE);
    private static Function4<FunctionalComposableScope, SuggestionChipProps, Composer, Integer, Unit> lambda$1838869750 = ComposableLambdaKt.composableLambdaInstance(1838869750, false, ComposableSingletons$ExpoUIModuleKt$lambda$1838869750$1.INSTANCE);
    private static Function4<FunctionalComposableScope, FilterChipProps, Composer, Integer, Unit> lambda$99663177 = ComposableLambdaKt.composableLambdaInstance(99663177, false, ComposableSingletons$ExpoUIModuleKt$lambda$99663177$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-1724074582, reason: not valid java name */
    private static Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> f152lambda$1724074582 = ComposableLambdaKt.composableLambdaInstance(-1724074582, false, ComposableSingletons$ExpoUIModuleKt$lambda$1724074582$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> lambda$1886662409 = ComposableLambdaKt.composableLambdaInstance(1886662409, false, ComposableSingletons$ExpoUIModuleKt$lambda$1886662409$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> lambda$1202432104 = ComposableLambdaKt.composableLambdaInstance(1202432104, false, ComposableSingletons$ExpoUIModuleKt$lambda$1202432104$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> lambda$518201799 = ComposableLambdaKt.composableLambdaInstance(518201799, false, ComposableSingletons$ExpoUIModuleKt$lambda$518201799$1.INSTANCE);
    private static Function4<FunctionalComposableScope, CardProps, Composer, Integer, Unit> lambda$1734130192 = ComposableLambdaKt.composableLambdaInstance(1734130192, false, new Function4<FunctionalComposableScope, CardProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$1734130192$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, CardProps cardProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, cardProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, CardProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C401@14084L18:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1734130192, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$1734130192.<anonymous> (ExpoUIModule.kt:401)");
            }
            CardViewKt.CardContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, ElevatedCardProps, Composer, Integer, Unit> lambda$421470340 = ComposableLambdaKt.composableLambdaInstance(421470340, false, new Function4<FunctionalComposableScope, ElevatedCardProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$421470340$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, ElevatedCardProps elevatedCardProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, elevatedCardProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, ElevatedCardProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C405@14181L26:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(421470340, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$421470340.<anonymous> (ExpoUIModule.kt:405)");
            }
            CardViewKt.ElevatedCardContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, OutlinedCardProps, Composer, Integer, Unit> lambda$1295041691 = ComposableLambdaKt.composableLambdaInstance(1295041691, false, new Function4<FunctionalComposableScope, OutlinedCardProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$1295041691$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, OutlinedCardProps outlinedCardProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, outlinedCardProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, OutlinedCardProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C409@14286L26:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1295041691, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$1295041691.<anonymous> (ExpoUIModule.kt:409)");
            }
            CardViewKt.OutlinedCardContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1113032583, reason: not valid java name */
    private static Function4<FunctionalComposableScope, ListItemProps, Composer, Integer, Unit> f143lambda$1113032583 = ComposableLambdaKt.composableLambdaInstance(-1113032583, false, new Function4<FunctionalComposableScope, ListItemProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-1113032583$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, ListItemProps listItemProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, listItemProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, ListItemProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C413@14383L22:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1113032583, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-1113032583.<anonymous> (ExpoUIModule.kt:413)");
            }
            ListItemViewKt.ListItemContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-639508928, reason: not valid java name */
    private static Function4<FunctionalComposableScope, BadgeProps, Composer, Integer, Unit> f161lambda$639508928 = ComposableLambdaKt.composableLambdaInstance(-639508928, false, new Function4<FunctionalComposableScope, BadgeProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$-639508928$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, BadgeProps badgeProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, badgeProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, BadgeProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C417@14470L19:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-639508928, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$-639508928.<anonymous> (ExpoUIModule.kt:417)");
            }
            BadgeViewKt.BadgeContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, BadgedBoxProps, Composer, Integer, Unit> lambda$310743846 = ComposableLambdaKt.composableLambdaInstance(310743846, false, new Function4<FunctionalComposableScope, BadgedBoxProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$310743846$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, BadgedBoxProps badgedBoxProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, badgedBoxProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, BadgedBoxProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C421@14562L23:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(310743846, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$310743846.<anonymous> (ExpoUIModule.kt:421)");
            }
            BadgedBoxViewKt.BadgedBoxContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, SpacerProps, Composer, Integer, Unit> lambda$2076003825 = ComposableLambdaKt.composableLambdaInstance(2076003825, false, new Function4<FunctionalComposableScope, SpacerProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$2076003825$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, SpacerProps spacerProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, spacerProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, SpacerProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C425@14652L20:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2076003825, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$2076003825.<anonymous> (ExpoUIModule.kt:425)");
            }
            SpacerViewKt.SpacerContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function4<FunctionalComposableScope, BasicAlertDialogProps, Composer, Integer, Unit> lambda$671728666 = ComposableLambdaKt.composableLambdaInstance(671728666, false, ComposableSingletons$ExpoUIModuleKt$lambda$671728666$1.INSTANCE);

    /* JADX INFO: renamed from: lambda$-1219489658, reason: not valid java name */
    private static Function4<FunctionalComposableScope, SurfaceProps, Composer, Integer, Unit> f148lambda$1219489658 = ComposableLambdaKt.composableLambdaInstance(-1219489658, false, ComposableSingletons$ExpoUIModuleKt$lambda$1219489658$1.INSTANCE);
    private static Function4<FunctionalComposableScope, AnimatedVisibilityProps, Composer, Integer, Unit> lambda$1813471159 = ComposableLambdaKt.composableLambdaInstance(1813471159, false, new Function4<FunctionalComposableScope, AnimatedVisibilityProps, Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ExpoUIModuleKt$lambda$1813471159$1
        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(FunctionalComposableScope functionalComposableScope, AnimatedVisibilityProps animatedVisibilityProps, Composer composer, Integer num) {
            invoke(functionalComposableScope, animatedVisibilityProps, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(FunctionalComposableScope ExpoUIView, AnimatedVisibilityProps props, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(ExpoUIView, "$this$ExpoUIView");
            Intrinsics.checkNotNullParameter(props, "props");
            ComposerKt.sourceInformation(composer, "C444@15440L32:ExpoUIModule.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1813471159, i, -1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$1813471159.<anonymous> (ExpoUIModule.kt:444)");
            }
            AnimatedVisibilityViewKt.AnimatedVisibilityContent(ExpoUIView, props, composer, (i & 112) | FunctionalComposableScope.$stable | (i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1156478940, reason: not valid java name */
    private static Function4<FunctionalComposableScope, RadioButtonProps, Composer, Integer, Unit> f146lambda$1156478940 = ComposableLambdaKt.composableLambdaInstance(-1156478940, false, ComposableSingletons$ExpoUIModuleKt$lambda$1156478940$1.INSTANCE);
    private static Function4<FunctionalComposableScope, FloatingActionButtonProps, Composer, Integer, Unit> lambda$567717209 = ComposableLambdaKt.composableLambdaInstance(567717209, false, ComposableSingletons$ExpoUIModuleKt$lambda$567717209$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ExposedDropdownMenuBoxProps, Composer, Integer, Unit> lambda$1535170533 = ComposableLambdaKt.composableLambdaInstance(1535170533, false, ComposableSingletons$ExpoUIModuleKt$lambda$1535170533$1.INSTANCE);
    private static Function4<FunctionalComposableScope, ExposedDropdownMenuProps, Composer, Integer, Unit> lambda$155421711 = ComposableLambdaKt.composableLambdaInstance(155421711, false, ComposableSingletons$ExpoUIModuleKt$lambda$155421711$1.INSTANCE);

    /* JADX INFO: renamed from: getLambda$-1069787573$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, HorizontalUncontainedCarouselProps, Composer, Integer, Unit> m11095getLambda$1069787573$expo_ui_release() {
        return f142lambda$1069787573;
    }

    /* JADX INFO: renamed from: getLambda$-1113032583$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, ListItemProps, Composer, Integer, Unit> m11096getLambda$1113032583$expo_ui_release() {
        return f143lambda$1113032583;
    }

    /* JADX INFO: renamed from: getLambda$-1118094958$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, PullToRefreshBoxProps, Composer, Integer, Unit> m11097getLambda$1118094958$expo_ui_release() {
        return f144lambda$1118094958;
    }

    /* JADX INFO: renamed from: getLambda$-1125543977$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, ShapeProps, Composer, Integer, Unit> m11098getLambda$1125543977$expo_ui_release() {
        return f145lambda$1125543977;
    }

    /* JADX INFO: renamed from: getLambda$-1156478940$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, RadioButtonProps, Composer, Integer, Unit> m11099getLambda$1156478940$expo_ui_release() {
        return f146lambda$1156478940;
    }

    /* JADX INFO: renamed from: getLambda$-1163197848$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> m11100getLambda$1163197848$expo_ui_release() {
        return f147lambda$1163197848;
    }

    /* JADX INFO: renamed from: getLambda$-1219489658$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, SurfaceProps, Composer, Integer, Unit> m11101getLambda$1219489658$expo_ui_release() {
        return f148lambda$1219489658;
    }

    /* JADX INFO: renamed from: getLambda$-1483886746$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, SearchBarProps, Composer, Integer, Unit> m11102getLambda$1483886746$expo_ui_release() {
        return f149lambda$1483886746;
    }

    /* JADX INFO: renamed from: getLambda$-1656732937$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> m11103getLambda$1656732937$expo_ui_release() {
        return f150lambda$1656732937;
    }

    /* JADX INFO: renamed from: getLambda$-1700720811$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, HorizontalMultiBrowseCarouselProps, Composer, Integer, Unit> m11104getLambda$1700720811$expo_ui_release() {
        return f151lambda$1700720811;
    }

    /* JADX INFO: renamed from: getLambda$-1724074582$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> m11105getLambda$1724074582$expo_ui_release() {
        return f152lambda$1724074582;
    }

    /* JADX INFO: renamed from: getLambda$-1749060638$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, SliderProps, Composer, Integer, Unit> m11106getLambda$1749060638$expo_ui_release() {
        return f153lambda$1749060638;
    }

    /* JADX INFO: renamed from: getLambda$-1756934637$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, DockedSearchBarProps, Composer, Integer, Unit> m11107getLambda$1756934637$expo_ui_release() {
        return f154lambda$1756934637;
    }

    /* JADX INFO: renamed from: getLambda$-2048044005$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, SegmentedButtonProps, Composer, Integer, Unit> m11108getLambda$2048044005$expo_ui_release() {
        return f155lambda$2048044005;
    }

    /* JADX INFO: renamed from: getLambda$-2068023843$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, AssistChipProps, Composer, Integer, Unit> m11109getLambda$2068023843$expo_ui_release() {
        return f156lambda$2068023843;
    }

    /* JADX INFO: renamed from: getLambda$-2147115026$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, DividerProps, Composer, Integer, Unit> m11110getLambda$2147115026$expo_ui_release() {
        return f157lambda$2147115026;
    }

    /* JADX INFO: renamed from: getLambda$-22859264$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, SwitchProps, Composer, Integer, Unit> m11111getLambda$22859264$expo_ui_release() {
        return f158lambda$22859264;
    }

    /* JADX INFO: renamed from: getLambda$-298376229$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, CircularProgressIndicatorProps, Composer, Integer, Unit> m11112getLambda$298376229$expo_ui_release() {
        return f159lambda$298376229;
    }

    /* JADX INFO: renamed from: getLambda$-478967543$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> m11113getLambda$478967543$expo_ui_release() {
        return f160lambda$478967543;
    }

    /* JADX INFO: renamed from: getLambda$-639508928$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, BadgeProps, Composer, Integer, Unit> m11114getLambda$639508928$expo_ui_release() {
        return f161lambda$639508928;
    }

    /* JADX INFO: renamed from: getLambda$-870391607$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, TriStateCheckboxProps, Composer, Integer, Unit> m11115getLambda$870391607$expo_ui_release() {
        return f162lambda$870391607;
    }

    /* JADX INFO: renamed from: getLambda$-910306989$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, TextProps, Composer, Integer, Unit> m11116getLambda$910306989$expo_ui_release() {
        return f163lambda$910306989;
    }

    /* JADX INFO: renamed from: getLambda$-93399300$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> m11117getLambda$93399300$expo_ui_release() {
        return f164lambda$93399300;
    }

    /* JADX INFO: renamed from: getLambda$-972502632$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> m11118getLambda$972502632$expo_ui_release() {
        return f165lambda$972502632;
    }

    /* JADX INFO: renamed from: getLambda$-984615988$expo_ui_release, reason: not valid java name */
    public final Function4<FunctionalComposableScope, CircularWavyProgressIndicatorProps, Composer, Integer, Unit> m11119getLambda$984615988$expo_ui_release() {
        return f166lambda$984615988;
    }

    public final Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> getLambda$1202432104$expo_ui_release() {
        return lambda$1202432104;
    }

    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> getLambda$1269773749$expo_ui_release() {
        return lambda$1269773749;
    }

    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> getLambda$1275061310$expo_ui_release() {
        return lambda$1275061310;
    }

    public final Function4<FunctionalComposableScope, AlertDialogProps, Composer, Integer, Unit> getLambda$1289444291$expo_ui_release() {
        return lambda$1289444291;
    }

    public final Function4<FunctionalComposableScope, OutlinedCardProps, Composer, Integer, Unit> getLambda$1295041691$expo_ui_release() {
        return lambda$1295041691;
    }

    public final Function4<FunctionalComposableScope, DatePickerDialogProps, Composer, Integer, Unit> getLambda$1391962475$expo_ui_release() {
        return lambda$1391962475;
    }

    public final Function4<FunctionalComposableScope, DividerProps, Composer, Integer, Unit> getLambda$1463621965$expo_ui_release() {
        return lambda$1463621965;
    }

    public final Function4<FunctionalComposableScope, LinearWavyProgressIndicatorProps, Composer, Integer, Unit> getLambda$1472196327$expo_ui_release() {
        return lambda$1472196327;
    }

    public final Function4<FunctionalComposableScope, ExposedDropdownMenuBoxProps, Composer, Integer, Unit> getLambda$1535170533$expo_ui_release() {
        return lambda$1535170533;
    }

    public final Function4<FunctionalComposableScope, ExposedDropdownMenuProps, Composer, Integer, Unit> getLambda$155421711$expo_ui_release() {
        return lambda$155421711;
    }

    public final Function4<FunctionalComposableScope, CardProps, Composer, Integer, Unit> getLambda$1734130192$expo_ui_release() {
        return lambda$1734130192;
    }

    public final Function4<FunctionalComposableScope, AnimatedVisibilityProps, Composer, Integer, Unit> getLambda$1813471159$expo_ui_release() {
        return lambda$1813471159;
    }

    public final Function4<FunctionalComposableScope, SuggestionChipProps, Composer, Integer, Unit> getLambda$1838869750$expo_ui_release() {
        return lambda$1838869750;
    }

    public final Function4<FunctionalComposableScope, InputChipProps, Composer, Integer, Unit> getLambda$1842788147$expo_ui_release() {
        return lambda$1842788147;
    }

    public final Function4<FunctionalComposableScope, CheckboxProps, Composer, Integer, Unit> getLambda$1847121008$expo_ui_release() {
        return lambda$1847121008;
    }

    public final Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> getLambda$1886662409$expo_ui_release() {
        return lambda$1886662409;
    }

    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> getLambda$1954004054$expo_ui_release() {
        return lambda$1954004054;
    }

    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> getLambda$1959291615$expo_ui_release() {
        return lambda$1959291615;
    }

    public final Function4<FunctionalComposableScope, SpacerProps, Composer, Integer, Unit> getLambda$2076003825$expo_ui_release() {
        return lambda$2076003825;
    }

    public final Function4<FunctionalComposableScope, MultiChoiceSegmentedButtonRowProps, Composer, Integer, Unit> getLambda$213348912$expo_ui_release() {
        return lambda$213348912;
    }

    public final Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> getLambda$279374321$expo_ui_release() {
        return lambda$279374321;
    }

    public final Function4<FunctionalComposableScope, BadgedBoxProps, Composer, Integer, Unit> getLambda$310743846$expo_ui_release() {
        return lambda$310743846;
    }

    public final Function4<FunctionalComposableScope, HorizontalCenteredHeroCarouselProps, Composer, Integer, Unit> getLambda$406335891$expo_ui_release() {
        return lambda$406335891;
    }

    public final Function4<FunctionalComposableScope, ElevatedCardProps, Composer, Integer, Unit> getLambda$421470340$expo_ui_release() {
        return lambda$421470340;
    }

    public final Function4<FunctionalComposableScope, HorizontalFloatingToolbarProps, Composer, Integer, Unit> getLambda$509461546$expo_ui_release() {
        return lambda$509461546;
    }

    public final Function4<FunctionalComposableScope, ToggleButtonProps, Composer, Integer, Unit> getLambda$518201799$expo_ui_release() {
        return lambda$518201799;
    }

    public final Function4<FunctionalComposableScope, FloatingActionButtonProps, Composer, Integer, Unit> getLambda$567717209$expo_ui_release() {
        return lambda$567717209;
    }

    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> getLambda$585543444$expo_ui_release() {
        return lambda$585543444;
    }

    public final Function4<FunctionalComposableScope, ButtonProps, Composer, Integer, Unit> getLambda$590831005$expo_ui_release() {
        return lambda$590831005;
    }

    public final Function4<FunctionalComposableScope, SingleChoiceSegmentedButtonRowProps, Composer, Integer, Unit> getLambda$666608302$expo_ui_release() {
        return lambda$666608302;
    }

    public final Function4<FunctionalComposableScope, BasicAlertDialogProps, Composer, Integer, Unit> getLambda$671728666$expo_ui_release() {
        return lambda$671728666;
    }

    public final Function4<FunctionalComposableScope, TimePickerDialogProps, Composer, Integer, Unit> getLambda$674915625$expo_ui_release() {
        return lambda$674915625;
    }

    public final Function4<FunctionalComposableScope, DateTimePickerProps, Composer, Integer, Unit> getLambda$702065030$expo_ui_release() {
        return lambda$702065030;
    }

    public final Function4<FunctionalComposableScope, LinearProgressIndicatorProps, Composer, Integer, Unit> getLambda$909667318$expo_ui_release() {
        return lambda$909667318;
    }

    public final Function4<FunctionalComposableScope, DropdownMenuProps, Composer, Integer, Unit> getLambda$945131637$expo_ui_release() {
        return lambda$945131637;
    }

    public final Function4<FunctionalComposableScope, DropdownMenuItemProps, Composer, Integer, Unit> getLambda$960104775$expo_ui_release() {
        return lambda$960104775;
    }

    public final Function4<FunctionalComposableScope, LayoutProps, Composer, Integer, Unit> getLambda$963604626$expo_ui_release() {
        return lambda$963604626;
    }

    public final Function4<FunctionalComposableScope, FilterChipProps, Composer, Integer, Unit> getLambda$99663177$expo_ui_release() {
        return lambda$99663177;
    }
}
