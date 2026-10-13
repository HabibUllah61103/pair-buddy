package expo.modules.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ChipView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposableSingletons$ChipViewKt {
    public static final ComposableSingletons$ChipViewKt INSTANCE = new ComposableSingletons$ChipViewKt();
    private static Function2<Composer, Integer, Unit> lambda$778385937 = ComposableLambdaKt.composableLambdaInstance(778385937, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ChipViewKt$lambda$778385937$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:ChipView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(778385937, i, -1, "expo.modules.ui.ComposableSingletons$ChipViewKt.lambda$778385937.<anonymous> (ChipView.kt:119)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda$-1073824393, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f141lambda$1073824393 = ComposableLambdaKt.composableLambdaInstance(-1073824393, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ChipViewKt$lambda$-1073824393$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:ChipView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1073824393, i, -1, "expo.modules.ui.ComposableSingletons$ChipViewKt.lambda$-1073824393.<anonymous> (ChipView.kt:180)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$289642877 = ComposableLambdaKt.composableLambdaInstance(289642877, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ChipViewKt$lambda$289642877$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:ChipView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(289642877, i, -1, "expo.modules.ui.ComposableSingletons$ChipViewKt.lambda$289642877.<anonymous> (ChipView.kt:242)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1542534682 = ComposableLambdaKt.composableLambdaInstance(1542534682, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$ChipViewKt$lambda$1542534682$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:ChipView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1542534682, i, -1, "expo.modules.ui.ComposableSingletons$ChipViewKt.lambda$1542534682.<anonymous> (ChipView.kt:298)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda$-1073824393$expo_ui_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m11094getLambda$1073824393$expo_ui_release() {
        return f141lambda$1073824393;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1542534682$expo_ui_release() {
        return lambda$1542534682;
    }

    public final Function2<Composer, Integer, Unit> getLambda$289642877$expo_ui_release() {
        return lambda$289642877;
    }

    public final Function2<Composer, Integer, Unit> getLambda$778385937$expo_ui_release() {
        return lambda$778385937;
    }
}
