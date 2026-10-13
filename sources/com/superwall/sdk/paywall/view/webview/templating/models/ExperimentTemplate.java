package com.superwall.sdk.paywall.view.webview.templating.models;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ExperimentTemplate.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 +2\u00020\u0001:\u0002*+B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J1\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\nHÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001J%\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0001¢\u0006\u0002\b)R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u000f\u001a\u0004\b\u0017\u0010\u0011¨\u0006,"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate;", "", "eventName", "", "experimentId", "variantId", "campaignId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEventName$annotations", "()V", "getEventName", "()Ljava/lang/String;", "getExperimentId$annotations", "getExperimentId", "getVariantId$annotations", "getVariantId", "getCampaignId$annotations", "getCampaignId", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class ExperimentTemplate {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String campaignId;
    private final String eventName;
    private final String experimentId;
    private final String variantId;

    public static /* synthetic */ ExperimentTemplate copy$default(ExperimentTemplate experimentTemplate, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = experimentTemplate.eventName;
        }
        if ((i & 2) != 0) {
            str2 = experimentTemplate.experimentId;
        }
        if ((i & 4) != 0) {
            str3 = experimentTemplate.variantId;
        }
        if ((i & 8) != 0) {
            str4 = experimentTemplate.campaignId;
        }
        return experimentTemplate.copy(str, str2, str3, str4);
    }

    @SerialName("campaignId")
    public static /* synthetic */ void getCampaignId$annotations() {
    }

    @SerialName("eventName")
    public static /* synthetic */ void getEventName$annotations() {
    }

    @SerialName("experimentId")
    public static /* synthetic */ void getExperimentId$annotations() {
    }

    @SerialName("variantId")
    public static /* synthetic */ void getVariantId$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEventName() {
        return this.eventName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getExperimentId() {
        return this.experimentId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getVariantId() {
        return this.variantId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCampaignId() {
        return this.campaignId;
    }

    public final ExperimentTemplate copy(String eventName, String experimentId, String variantId, String campaignId) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(experimentId, "experimentId");
        Intrinsics.checkNotNullParameter(variantId, "variantId");
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        return new ExperimentTemplate(eventName, experimentId, variantId, campaignId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExperimentTemplate)) {
            return false;
        }
        ExperimentTemplate experimentTemplate = (ExperimentTemplate) other;
        return Intrinsics.areEqual(this.eventName, experimentTemplate.eventName) && Intrinsics.areEqual(this.experimentId, experimentTemplate.experimentId) && Intrinsics.areEqual(this.variantId, experimentTemplate.variantId) && Intrinsics.areEqual(this.campaignId, experimentTemplate.campaignId);
    }

    public int hashCode() {
        return (((((this.eventName.hashCode() * 31) + this.experimentId.hashCode()) * 31) + this.variantId.hashCode()) * 31) + this.campaignId.hashCode();
    }

    public String toString() {
        return "ExperimentTemplate(eventName=" + this.eventName + ", experimentId=" + this.experimentId + ", variantId=" + this.variantId + ", campaignId=" + this.campaignId + ")";
    }

    /* JADX INFO: compiled from: ExperimentTemplate.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/view/webview/templating/models/ExperimentTemplate;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ExperimentTemplate> serializer() {
            return ExperimentTemplate$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ExperimentTemplate(int i, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (14 != (i & 14)) {
            PluginExceptionsKt.throwMissingFieldException(i, 14, ExperimentTemplate$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.eventName = "experiment";
        } else {
            this.eventName = str;
        }
        this.experimentId = str2;
        this.variantId = str3;
        this.campaignId = str4;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(ExperimentTemplate self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.eventName, "experiment")) {
            output.encodeStringElement(serialDesc, 0, self.eventName);
        }
        output.encodeStringElement(serialDesc, 1, self.experimentId);
        output.encodeStringElement(serialDesc, 2, self.variantId);
        output.encodeStringElement(serialDesc, 3, self.campaignId);
    }

    public ExperimentTemplate(String eventName, String experimentId, String variantId, String campaignId) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(experimentId, "experimentId");
        Intrinsics.checkNotNullParameter(variantId, "variantId");
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.eventName = eventName;
        this.experimentId = experimentId;
        this.variantId = variantId;
        this.campaignId = campaignId;
    }

    public final String getEventName() {
        return this.eventName;
    }

    public /* synthetic */ ExperimentTemplate(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "experiment" : str, str2, str3, str4);
    }

    public final String getExperimentId() {
        return this.experimentId;
    }

    public final String getVariantId() {
        return this.variantId;
    }

    public final String getCampaignId() {
        return this.campaignId;
    }
}
