package com.superwall.sdk.config.options;

import com.superwall.sdk.logger.LogScope;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallOptions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0005H\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0006H\u0000¨\u0006\u0007"}, d2 = {"toMap", "", "", "", "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SuperwallOptionsKt {
    public static final Map<String, Object> toMap(SuperwallOptions.NetworkEnvironment networkEnvironment) {
        Intrinsics.checkNotNullParameter(networkEnvironment, "<this>");
        Pair[] pairArr = new Pair[5];
        pairArr[0] = TuplesKt.to("host_domain", networkEnvironment.getHostDomain());
        pairArr[1] = TuplesKt.to("base_host", networkEnvironment.getBaseHost());
        pairArr[2] = TuplesKt.to("collector_host", networkEnvironment.getCollectorHost());
        pairArr[3] = TuplesKt.to("scheme", networkEnvironment.getScheme());
        Integer port = networkEnvironment.getPort();
        pairArr[4] = port != null ? TuplesKt.to("port", Integer.valueOf(port.intValue())) : null;
        return MapsKt.toMap(CollectionsKt.listOfNotNull((Object[]) pairArr));
    }

    public static final Map<String, Object> toMap(SuperwallOptions.Logging logging) {
        Intrinsics.checkNotNullParameter(logging, "<this>");
        Pair[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.to("level", logging.getLevel().toString());
        EnumSet<LogScope> scopes = logging.getScopes();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(scopes, 10));
        Iterator<T> it = scopes.iterator();
        while (it.hasNext()) {
            arrayList.add(((LogScope) it.next()).toString());
        }
        pairArr[1] = TuplesKt.to("scopes", arrayList);
        return MapsKt.mapOf(pairArr);
    }

    public static final Map<String, Object> toMap(SuperwallOptions superwallOptions) {
        Intrinsics.checkNotNullParameter(superwallOptions, "<this>");
        Pair[] pairArr = new Pair[7];
        pairArr[0] = TuplesKt.to("paywalls", PaywallOptionsKt.toMap(superwallOptions.getPaywalls()));
        pairArr[1] = TuplesKt.to("network_environment", toMap(superwallOptions.getNetworkEnvironment()));
        pairArr[2] = TuplesKt.to("is_external_data_collection_enabled", Boolean.valueOf(superwallOptions.getIsExternalDataCollectionEnabled()));
        String localeIdentifier = superwallOptions.getLocaleIdentifier();
        pairArr[3] = localeIdentifier != null ? TuplesKt.to("locale_identifier", localeIdentifier) : null;
        pairArr[4] = TuplesKt.to("is_game_controller_enabled", Boolean.valueOf(superwallOptions.getIsGameControllerEnabled()));
        pairArr[5] = TuplesKt.to("logging", toMap(superwallOptions.getLogging()));
        pairArr[6] = TuplesKt.to("test_mode_behavior", superwallOptions.getTestModeBehavior().name());
        return MapsKt.toMap(CollectionsKt.listOfNotNull((Object[]) pairArr));
    }
}
