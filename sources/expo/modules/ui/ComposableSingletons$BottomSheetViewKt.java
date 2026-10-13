package expo.modules.ui;

import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: BottomSheetView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposableSingletons$BottomSheetViewKt {
    public static final ComposableSingletons$BottomSheetViewKt INSTANCE = new ComposableSingletons$BottomSheetViewKt();

    /* JADX INFO: renamed from: lambda$-865286969, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f140lambda$865286969 = ComposableLambdaKt.composableLambdaInstance(-865286969, false, new Function2<Composer, Integer, Unit>() { // from class: expo.modules.ui.ComposableSingletons$BottomSheetViewKt$lambda$-865286969$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C93@4063L12:BottomSheetView.kt#v15e7d");
            if ((i & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-865286969, i, -1, "expo.modules.ui.ComposableSingletons$BottomSheetViewKt.lambda$-865286969.<anonymous> (BottomSheetView.kt:93)");
            }
            BottomSheetDefaults.INSTANCE.m2057DragHandlelgZ2HuY(null, 0.0f, 0.0f, null, 0L, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda$-865286969$expo_ui_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m11093getLambda$865286969$expo_ui_release() {
        return f140lambda$865286969;
    }
}
