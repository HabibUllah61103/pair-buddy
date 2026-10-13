package expo.modules.superwallexpo.json;

import com.facebook.hermes.intl.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Experiment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lexpo/modules/superwallexpo/json/Experiment;", "", "<init>", "()V", "Companion", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Experiment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: Experiment.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lexpo/modules/superwallexpo/json/Experiment$Companion;", "", "<init>", "()V", "toJson", "", "", "experiment", "Lcom/superwall/sdk/models/triggers/Experiment;", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<String, Object> toJson(com.superwall.sdk.models.triggers.Experiment experiment) {
            Intrinsics.checkNotNullParameter(experiment, "experiment");
            return MapsKt.mapOf(TuplesKt.to("id", experiment.getId()), TuplesKt.to("groupId", experiment.getGroupId()), TuplesKt.to(Constants.SENSITIVITY_VARIANT, VariantKt.toJson(experiment.getVariant())));
        }
    }
}
