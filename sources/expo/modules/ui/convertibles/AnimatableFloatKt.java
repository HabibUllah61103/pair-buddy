package expo.modules.ui.convertibles;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SnapSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import com.facebook.hermes.intl.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimatableFloat.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\u001a3\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b¨\u0006\t²\u0006\n\u0010\n\u001a\u00020\u0001X\u008a\u0084\u0002"}, d2 = {"resolveAnimatable", "", "map", "", "", "", "key", Constants.COLLATION_DEFAULT, "(Ljava/util/Map;Ljava/lang/String;FLandroidx/compose/runtime/Composer;I)F", "expo-ui_release", "animated"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AnimatableFloatKt {
    /* JADX WARN: Code duplicated, block: B:21:0x0086  */
    public static final float resolveAnimatable(Map<String, ? extends Object> map, String key, float f, Composer composer, int i) {
        SnapSpec snapSpecSnap$default;
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(key, "key");
        composer.startReplaceGroup(-1336538080);
        ComposerKt.sourceInformation(composer, "C(resolveAnimatable)P(2,1)23@823L51:AnimatableFloat.kt#cvumyj");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1336538080, i, -1, "expo.modules.ui.convertibles.resolveAnimatable (AnimatableFloat.kt:10)");
        }
        Object obj = map.get(key);
        if (obj instanceof Number) {
            f = ((Number) obj).floatValue();
        } else if (obj instanceof Map) {
            Map map2 = (Map) obj;
            if (Intrinsics.areEqual(map2.get("$animated"), (Object) true)) {
                Object obj2 = map2.get("targetValue");
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Number");
                f = ((Number) obj2).floatValue();
            }
        }
        float f2 = f;
        if (obj instanceof Map) {
            Map map3 = (Map) obj;
            if (Intrinsics.areEqual(map3.get("$animated"), (Object) true)) {
                snapSpecSnap$default = AnimationSpecParamsKt.parseAnimationSpec(map3.get("animationSpec"));
                if (snapSpecSnap$default == null) {
                    snapSpecSnap$default = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                }
            } else {
                snapSpecSnap$default = AnimationSpecKt.snap$default(0, 1, null);
            }
        } else {
            snapSpecSnap$default = AnimationSpecKt.snap$default(0, 1, null);
        }
        float fResolveAnimatable$lambda$0 = resolveAnimatable$lambda$0(AnimateAsStateKt.animateFloatAsState(f2, snapSpecSnap$default, 0.0f, key, null, composer, (i << 6) & 7168, 20));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return fResolveAnimatable$lambda$0;
    }

    private static final float resolveAnimatable$lambda$0(State<Float> state) {
        return state.getValue().floatValue();
    }
}
