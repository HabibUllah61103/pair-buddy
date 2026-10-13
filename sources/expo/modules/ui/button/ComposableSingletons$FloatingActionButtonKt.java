package expo.modules.ui.button;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: FloatingActionButton.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposableSingletons$FloatingActionButtonKt {
    public static final ComposableSingletons$FloatingActionButtonKt INSTANCE = new ComposableSingletons$FloatingActionButtonKt();
    private static Function2<Composer, Integer, Unit> lambda$2023503970 = ComposableLambdaKt.composableLambdaInstance(2023503970, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ComposableSingletons$FloatingActionButtonKt$lambda$2023503970$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:FloatingActionButton.kt#kazlex");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2023503970, i, -1, "expo.modules.ui.button.ComposableSingletons$FloatingActionButtonKt.lambda$2023503970.<anonymous> (FloatingActionButton.kt:49)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$84818774 = ComposableLambdaKt.composableLambdaInstance(84818774, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.button.ComposableSingletons$FloatingActionButtonKt$lambda$84818774$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:FloatingActionButton.kt#kazlex");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(84818774, i, -1, "expo.modules.ui.button.ComposableSingletons$FloatingActionButtonKt.lambda$84818774.<anonymous> (FloatingActionButton.kt:74)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    public final Function2<Composer, Integer, Unit> getLambda$2023503970$expo_ui_release() {
        return lambda$2023503970;
    }

    public final Function2<Composer, Integer, Unit> getLambda$84818774$expo_ui_release() {
        return lambda$84818774;
    }
}
