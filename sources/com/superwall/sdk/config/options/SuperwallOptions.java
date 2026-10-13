package com.superwall.sdk.config.options;

import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.store.testmode.TestModeBehavior;
import java.util.EnumSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallOptions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002:;B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\"\b\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\u0004\b\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0012\"\u0004\b$\u0010\u0014R\u001a\u0010%\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0012\"\u0004\b'\u0010\u0014R\u001a\u0010(\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0012\"\u0004\b*\u0010\u0014R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0012\"\u0004\b3\u0010\u0014R\u001a\u00104\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006<"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions;", "", "<init>", "()V", "definition", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "paywalls", "Lcom/superwall/sdk/config/options/PaywallOptions;", "getPaywalls", "()Lcom/superwall/sdk/config/options/PaywallOptions;", "setPaywalls", "(Lcom/superwall/sdk/config/options/PaywallOptions;)V", "shouldObservePurchases", "", "getShouldObservePurchases", "()Z", "setShouldObservePurchases", "(Z)V", "networkEnvironment", "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "getNetworkEnvironment", "()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "setNetworkEnvironment", "(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V", "isExternalDataCollectionEnabled", "setExternalDataCollectionEnabled", "localeIdentifier", "", "getLocaleIdentifier", "()Ljava/lang/String;", "setLocaleIdentifier", "(Ljava/lang/String;)V", "isGameControllerEnabled", "setGameControllerEnabled", "passIdentifiersToPlayStore", "getPassIdentifiersToPlayStore", "setPassIdentifiersToPlayStore", "enableExperimentalDeviceVariables", "getEnableExperimentalDeviceVariables", "setEnableExperimentalDeviceVariables", "logging", "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;", "getLogging", "()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;", "setLogging", "(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)V", "useMockReviews", "getUseMockReviews", "setUseMockReviews", "testModeBehavior", "Lcom/superwall/sdk/store/testmode/TestModeBehavior;", "getTestModeBehavior", "()Lcom/superwall/sdk/store/testmode/TestModeBehavior;", "setTestModeBehavior", "(Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V", "NetworkEnvironment", "Logging", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SuperwallOptions {
    private boolean enableExperimentalDeviceVariables;
    private boolean isExternalDataCollectionEnabled;
    private boolean isGameControllerEnabled;
    private String localeIdentifier;
    private Logging logging;
    private NetworkEnvironment networkEnvironment;
    private boolean passIdentifiersToPlayStore;
    private PaywallOptions paywalls;
    private boolean shouldObservePurchases;
    private TestModeBehavior testModeBehavior;
    private boolean useMockReviews;

    public SuperwallOptions() {
        this.paywalls = new PaywallOptions();
        this.networkEnvironment = new NetworkEnvironment.Release();
        this.isExternalDataCollectionEnabled = true;
        this.logging = new Logging();
        this.testModeBehavior = TestModeBehavior.AUTOMATIC;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SuperwallOptions(Function1<? super SuperwallOptions, Unit> definition) {
        this();
        Intrinsics.checkNotNullParameter(definition, "definition");
        definition.invoke(this);
    }

    public final PaywallOptions getPaywalls() {
        return this.paywalls;
    }

    public final void setPaywalls(PaywallOptions paywallOptions) {
        Intrinsics.checkNotNullParameter(paywallOptions, "<set-?>");
        this.paywalls = paywallOptions;
    }

    public final boolean getShouldObservePurchases() {
        return this.shouldObservePurchases;
    }

    public final void setShouldObservePurchases(boolean z) {
        this.shouldObservePurchases = z;
    }

    /* JADX INFO: compiled from: SuperwallOptions.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0004\u0016\u0017\u0018\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0007R\u0014\u0010\u0010\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0007R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "", "hostDomain", "", "<init>", "(Ljava/lang/String;)V", "getHostDomain", "()Ljava/lang/String;", "baseHost", "getBaseHost", "collectorHost", "getCollectorHost", "subscriptionHost", "getSubscriptionHost", "scheme", "getScheme", "enrichmentHost", "getEnrichmentHost", "port", "", "getPort", "()Ljava/lang/Integer;", "Release", "ReleaseCandidate", "Developer", "Custom", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class NetworkEnvironment {
        private final String hostDomain;

        public Integer getPort() {
            return null;
        }

        public NetworkEnvironment(String hostDomain) {
            Intrinsics.checkNotNullParameter(hostDomain, "hostDomain");
            this.hostDomain = hostDomain;
        }

        public String getHostDomain() {
            return this.hostDomain;
        }

        public String getBaseHost() {
            return "api." + getHostDomain();
        }

        public String getCollectorHost() {
            return "collector." + getHostDomain();
        }

        public String getSubscriptionHost() {
            if (this instanceof Release) {
                return "subscriptions-api.superwall.com";
            }
            return "subscriptions-api.superwall.dev";
        }

        public String getScheme() {
            return "https";
        }

        public String getEnrichmentHost() {
            if (this instanceof Release) {
                return "enrichment-api.superwall.com";
            }
            return "enrichment-api.superwall.dev";
        }

        /* JADX INFO: compiled from: SuperwallOptions.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;", "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Release extends NetworkEnvironment {
            public Release() {
                super("superwall.me");
            }
        }

        /* JADX INFO: compiled from: SuperwallOptions.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$ReleaseCandidate;", "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ReleaseCandidate extends NetworkEnvironment {
            public ReleaseCandidate() {
                super("superwallcanary.com");
            }
        }

        /* JADX INFO: compiled from: SuperwallOptions.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Developer;", "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Developer extends NetworkEnvironment {
            public Developer() {
                super("superwall.dev");
            }
        }

        /* JADX INFO: compiled from: SuperwallOptions.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Custom;", "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;", "baseHost", "", "collectorHost", "scheme", "port", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getBaseHost", "()Ljava/lang/String;", "getCollectorHost", "getScheme", "getPort", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Custom extends NetworkEnvironment {
            private final String baseHost;
            private final String collectorHost;
            private final Integer port;
            private final String scheme;

            @Override // com.superwall.sdk.config.options.SuperwallOptions.NetworkEnvironment
            public String getBaseHost() {
                return this.baseHost;
            }

            @Override // com.superwall.sdk.config.options.SuperwallOptions.NetworkEnvironment
            public String getCollectorHost() {
                return this.collectorHost;
            }

            @Override // com.superwall.sdk.config.options.SuperwallOptions.NetworkEnvironment
            public String getScheme() {
                return this.scheme;
            }

            @Override // com.superwall.sdk.config.options.SuperwallOptions.NetworkEnvironment
            public Integer getPort() {
                return this.port;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Custom(String baseHost, String collectorHost, String scheme, Integer num) {
                super(baseHost);
                Intrinsics.checkNotNullParameter(baseHost, "baseHost");
                Intrinsics.checkNotNullParameter(collectorHost, "collectorHost");
                Intrinsics.checkNotNullParameter(scheme, "scheme");
                this.baseHost = baseHost;
                this.collectorHost = collectorHost;
                this.scheme = scheme;
                this.port = num;
            }
        }
    }

    public final NetworkEnvironment getNetworkEnvironment() {
        return this.networkEnvironment;
    }

    public final void setNetworkEnvironment(NetworkEnvironment networkEnvironment) {
        Intrinsics.checkNotNullParameter(networkEnvironment, "<set-?>");
        this.networkEnvironment = networkEnvironment;
    }

    /* JADX INFO: renamed from: isExternalDataCollectionEnabled, reason: from getter */
    public final boolean getIsExternalDataCollectionEnabled() {
        return this.isExternalDataCollectionEnabled;
    }

    public final void setExternalDataCollectionEnabled(boolean z) {
        this.isExternalDataCollectionEnabled = z;
    }

    public final String getLocaleIdentifier() {
        return this.localeIdentifier;
    }

    public final void setLocaleIdentifier(String str) {
        this.localeIdentifier = str;
    }

    /* JADX INFO: renamed from: isGameControllerEnabled, reason: from getter */
    public final boolean getIsGameControllerEnabled() {
        return this.isGameControllerEnabled;
    }

    public final void setGameControllerEnabled(boolean z) {
        this.isGameControllerEnabled = z;
    }

    public final boolean getPassIdentifiersToPlayStore() {
        return this.passIdentifiersToPlayStore;
    }

    public final void setPassIdentifiersToPlayStore(boolean z) {
        this.passIdentifiersToPlayStore = z;
    }

    public final boolean getEnableExperimentalDeviceVariables() {
        return this.enableExperimentalDeviceVariables;
    }

    public final void setEnableExperimentalDeviceVariables(boolean z) {
        this.enableExperimentalDeviceVariables = z;
    }

    /* JADX INFO: compiled from: SuperwallOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\"\b\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\u0004\b\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;", "", "<init>", "()V", "definition", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "level", "Lcom/superwall/sdk/logger/LogLevel;", "getLevel", "()Lcom/superwall/sdk/logger/LogLevel;", "setLevel", "(Lcom/superwall/sdk/logger/LogLevel;)V", "scopes", "Ljava/util/EnumSet;", "Lcom/superwall/sdk/logger/LogScope;", "getScopes", "()Ljava/util/EnumSet;", "setScopes", "(Ljava/util/EnumSet;)V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Logging {
        private LogLevel level;
        private EnumSet<LogScope> scopes;

        public Logging() {
            this.level = LogLevel.warn;
            EnumSet<LogScope> enumSetOf = EnumSet.of(LogScope.all);
            Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
            this.scopes = enumSetOf;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Logging(Function1<? super Logging, Unit> definition) {
            this();
            Intrinsics.checkNotNullParameter(definition, "definition");
            definition.invoke(this);
        }

        public final LogLevel getLevel() {
            return this.level;
        }

        public final void setLevel(LogLevel logLevel) {
            Intrinsics.checkNotNullParameter(logLevel, "<set-?>");
            this.level = logLevel;
        }

        public final EnumSet<LogScope> getScopes() {
            return this.scopes;
        }

        public final void setScopes(EnumSet<LogScope> enumSet) {
            Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
            this.scopes = enumSet;
        }
    }

    public final Logging getLogging() {
        return this.logging;
    }

    public final void setLogging(Logging logging) {
        Intrinsics.checkNotNullParameter(logging, "<set-?>");
        this.logging = logging;
    }

    public final boolean getUseMockReviews() {
        return this.useMockReviews;
    }

    public final void setUseMockReviews(boolean z) {
        this.useMockReviews = z;
    }

    public final TestModeBehavior getTestModeBehavior() {
        return this.testModeBehavior;
    }

    public final void setTestModeBehavior(TestModeBehavior testModeBehavior) {
        Intrinsics.checkNotNullParameter(testModeBehavior, "<set-?>");
        this.testModeBehavior = testModeBehavior;
    }
}
