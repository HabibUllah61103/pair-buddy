package expo.modules.superwallexpo.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Variant.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class VariantKt {
    public static final Map<String, Object> toJson(com.superwall.sdk.models.triggers.Experiment.Variant variant) {
        Intrinsics.checkNotNullParameter(variant, "<this>");
        return MapsKt.mapOf(TuplesKt.to("id", variant.getId()), TuplesKt.to("type", variant.getType().toString()), TuplesKt.to("paywallId", variant.getPaywallId()));
    }
}
