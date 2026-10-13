package com.superwall.sdk.models.config;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: WebToAppConfig.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B7\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0002\u0010\rJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001¢\u0006\u0002\b\"R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u0003\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R&\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0003\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R&\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0003\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017¨\u0006%"}, d2 = {"Lcom/superwall/sdk/models/config/WebToAppConfig;", "", "<init>", "()V", "seen0", "", "entitlementsMaxAgeMs", "", "restoreAccesUrl", "", "urlSchema", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IJLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEntitlementsMaxAgeMs$annotations", "getEntitlementsMaxAgeMs", "()J", "setEntitlementsMaxAgeMs", "(J)V", "getRestoreAccesUrl$annotations", "getRestoreAccesUrl", "()Ljava/lang/String;", "setRestoreAccesUrl", "(Ljava/lang/String;)V", "getUrlSchema$annotations", "getUrlSchema", "setUrlSchema", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final class WebToAppConfig {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private long entitlementsMaxAgeMs;
    private String restoreAccesUrl;
    private String urlSchema;

    @SerialName("entitlements_max_age_ms")
    public static /* synthetic */ void getEntitlementsMaxAgeMs$annotations() {
    }

    @SerialName("restore_access_url")
    public static /* synthetic */ void getRestoreAccesUrl$annotations() {
    }

    @SerialName("url_schema")
    public static /* synthetic */ void getUrlSchema$annotations() {
    }

    /* JADX INFO: compiled from: WebToAppConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/config/WebToAppConfig$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/WebToAppConfig;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<WebToAppConfig> serializer() {
            return WebToAppConfig$$serializer.INSTANCE;
        }
    }

    public WebToAppConfig() {
    }

    public /* synthetic */ WebToAppConfig(int i, long j, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        this.entitlementsMaxAgeMs = (i & 1) == 0 ? 0L : j;
        if ((i & 2) == 0) {
            this.restoreAccesUrl = null;
        } else {
            this.restoreAccesUrl = str;
        }
        if ((i & 4) == 0) {
            this.urlSchema = null;
        } else {
            this.urlSchema = str2;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(WebToAppConfig self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.entitlementsMaxAgeMs != 0) {
            output.encodeLongElement(serialDesc, 0, self.entitlementsMaxAgeMs);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.restoreAccesUrl != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.restoreAccesUrl);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.urlSchema == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.urlSchema);
    }

    public final long getEntitlementsMaxAgeMs() {
        return this.entitlementsMaxAgeMs;
    }

    public final void setEntitlementsMaxAgeMs(long j) {
        this.entitlementsMaxAgeMs = j;
    }

    public final String getRestoreAccesUrl() {
        return this.restoreAccesUrl;
    }

    public final void setRestoreAccesUrl(String str) {
        this.restoreAccesUrl = str;
    }

    public final String getUrlSchema() {
        return this.urlSchema;
    }

    public final void setUrlSchema(String str) {
        this.urlSchema = str;
    }
}
