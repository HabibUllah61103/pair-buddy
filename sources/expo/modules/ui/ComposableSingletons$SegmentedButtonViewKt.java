package expo.modules.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: SegmentedButtonView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposableSingletons$SegmentedButtonViewKt {
    public static final ComposableSingletons$SegmentedButtonViewKt INSTANCE = new ComposableSingletons$SegmentedButtonViewKt();
    private static Function2<Composer, Integer, Unit> lambda$1431986096 = ComposableLambdaKt.composableLambdaInstance(1431986096, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$SegmentedButtonViewKt$lambda$1431986096$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:SegmentedButtonView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1431986096, i, -1, "expo.modules.ui.ComposableSingletons$SegmentedButtonViewKt.lambda$1431986096.<anonymous> (SegmentedButtonView.kt:77)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    public final Function2<Composer, Integer, Unit> getLambda$1431986096$expo_ui_release() {
        return lambda$1431986096;
    }
}
