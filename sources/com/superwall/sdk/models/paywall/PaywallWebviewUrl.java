package com.superwall.sdk.models.paywall;

import com.google.android.gms.common.internal.ImagesContract;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaywallWebviewUrl.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 +2\u00020\u0001:\u0003)*+B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J'\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0007HÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001J%\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0001¢\u0006\u0002\b(R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0017¨\u0006,"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;", "", ImagesContract.URL, "", "timeout", "", "score", "", "<init>", "(Ljava/lang/String;JI)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;JILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getUrl$annotations", "()V", "getUrl", "()Ljava/lang/String;", "getTimeout$annotations", "getTimeout", "()J", "getScore$annotations", "getScore", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Config", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PaywallWebviewUrl {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int score;
    private final long timeout;
    private final String url;

    public static /* synthetic */ PaywallWebviewUrl copy$default(PaywallWebviewUrl paywallWebviewUrl, String str, long j, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = paywallWebviewUrl.url;
        }
        if ((i2 & 2) != 0) {
            j = paywallWebviewUrl.timeout;
        }
        if ((i2 & 4) != 0) {
            i = paywallWebviewUrl.score;
        }
        return paywallWebviewUrl.copy(str, j, i);
    }

    @SerialName("percentage")
    public static /* synthetic */ void getScore$annotations() {
    }

    @SerialName("timeout_ms")
    public static /* synthetic */ void getTimeout$annotations() {
    }

    @SerialName(ImagesContract.URL)
    public static /* synthetic */ void getUrl$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getTimeout() {
        return this.timeout;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getScore() {
        return this.score;
    }

    public final PaywallWebviewUrl copy(String url, long timeout, int score) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new PaywallWebviewUrl(url, timeout, score);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaywallWebviewUrl)) {
            return false;
        }
        PaywallWebviewUrl paywallWebviewUrl = (PaywallWebviewUrl) other;
        return Intrinsics.areEqual(this.url, paywallWebviewUrl.url) && this.timeout == paywallWebviewUrl.timeout && this.score == paywallWebviewUrl.score;
    }

    public int hashCode() {
        return (((this.url.hashCode() * 31) + Long.hashCode(this.timeout)) * 31) + Integer.hashCode(this.score);
    }

    public String toString() {
        return "PaywallWebviewUrl(url=" + this.url + ", timeout=" + this.timeout + ", score=" + this.score + ")";
    }

    /* JADX INFO: compiled from: PaywallWebviewUrl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<PaywallWebviewUrl> serializer() {
            return PaywallWebviewUrl$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PaywallWebviewUrl(int i, String str, long j, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, PaywallWebviewUrl$$serializer.INSTANCE.getDescriptor());
        }
        this.url = str;
        this.timeout = j;
        this.score = i2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PaywallWebviewUrl self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.url);
        output.encodeLongElement(serialDesc, 1, self.timeout);
        output.encodeIntElement(serialDesc, 2, self.score);
    }

    public PaywallWebviewUrl(String url, long j, int i) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.timeout = j;
        this.score = i;
    }

    public final String getUrl() {
        return this.url;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public final int getScore() {
        return this.score;
    }

    /* JADX INFO: compiled from: PaywallWebviewUrl.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bB3\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;", "", "maxAttempts", "", "endpoints", "", "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl;", "<init>", "(ILjava/util/List;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getMaxAttempts$annotations", "()V", "getMaxAttempts", "()I", "getEndpoints$annotations", "getEndpoints", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Config {
        private final List<PaywallWebviewUrl> endpoints;
        private final int maxAttempts;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, new ArrayListSerializer(PaywallWebviewUrl$$serializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Config copy$default(Config config, int i, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = config.maxAttempts;
            }
            if ((i2 & 2) != 0) {
                list = config.endpoints;
            }
            return config.copy(i, list);
        }

        @SerialName("endpoints")
        public static /* synthetic */ void getEndpoints$annotations() {
        }

        @SerialName("max_attempts")
        public static /* synthetic */ void getMaxAttempts$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getMaxAttempts() {
            return this.maxAttempts;
        }

        public final List<PaywallWebviewUrl> component2() {
            return this.endpoints;
        }

        public final Config copy(int maxAttempts, List<PaywallWebviewUrl> endpoints) {
            Intrinsics.checkNotNullParameter(endpoints, "endpoints");
            return new Config(maxAttempts, endpoints);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Config)) {
                return false;
            }
            Config config = (Config) other;
            return this.maxAttempts == config.maxAttempts && Intrinsics.areEqual(this.endpoints, config.endpoints);
        }

        public int hashCode() {
            return (Integer.hashCode(this.maxAttempts) * 31) + this.endpoints.hashCode();
        }

        public String toString() {
            return "Config(maxAttempts=" + this.maxAttempts + ", endpoints=" + this.endpoints + ")";
        }

        /* JADX INFO: compiled from: PaywallWebviewUrl.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Config> serializer() {
                return PaywallWebviewUrl$Config$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Config(int i, int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, PaywallWebviewUrl$Config$$serializer.INSTANCE.getDescriptor());
            }
            this.maxAttempts = i2;
            this.endpoints = list;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(Config self, CompositeEncoder output, SerialDescriptor serialDesc) {
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeIntElement(serialDesc, 0, self.maxAttempts);
            output.encodeSerializableElement(serialDesc, 1, kSerializerArr[1], self.endpoints);
        }

        public Config(int i, List<PaywallWebviewUrl> endpoints) {
            Intrinsics.checkNotNullParameter(endpoints, "endpoints");
            this.maxAttempts = i;
            this.endpoints = endpoints;
        }

        public final int getMaxAttempts() {
            return this.maxAttempts;
        }

        public final List<PaywallWebviewUrl> getEndpoints() {
            return this.endpoints;
        }
    }
}
