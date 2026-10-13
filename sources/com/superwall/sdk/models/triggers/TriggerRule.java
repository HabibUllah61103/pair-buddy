package com.superwall.sdk.models.triggers;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.config.ComputedPropertyRequest$$serializer;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: TriggerRule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 Q2\u00020\u0001:\u0004OPQRBm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012B\u0081\u0001\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0011\u0010\u0017J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\u000f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006HÆ\u0003J\t\u0010@\u001a\u00020\u0010HÆ\u0003Jw\u0010A\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010HÆ\u0001J\u0013\u0010B\u001a\u00020C2\b\u0010D\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010E\u001a\u00020\u0014HÖ\u0001J\t\u0010F\u001a\u00020\u0003HÖ\u0001J%\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u0001¢\u0006\u0002\bNR$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\u0019\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010\u0019\u001a\u0004\b'\u0010\u001bR\u001e\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b(\u0010\u0019\u001a\u0004\b)\u0010\u001bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b*\u0010\u0019\u001a\u0004\b+\u0010\u001bR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010\u0019\u001a\u0004\b-\u0010.R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010\u0019\u001a\u0004\b0\u0010#R\u001c\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010\u0019\u001a\u0004\b2\u00103R\u0011\u00104\u001a\u0002058F¢\u0006\u0006\u001a\u0004\b6\u00107¨\u0006S"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRule;", "", "experimentId", "", "experimentGroupId", "variants", "", "Lcom/superwall/sdk/models/triggers/VariantOption;", "expression", "expressionJs", "expressionCEL", "occurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "computedPropertyRequests", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "preload", "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Ljava/util/List;Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getExperimentId$annotations", "()V", "getExperimentId", "()Ljava/lang/String;", "setExperimentId", "(Ljava/lang/String;)V", "getExperimentGroupId$annotations", "getExperimentGroupId", "setExperimentGroupId", "getVariants$annotations", "getVariants", "()Ljava/util/List;", "setVariants", "(Ljava/util/List;)V", "getExpression$annotations", "getExpression", "getExpressionJs$annotations", "getExpressionJs", "getExpressionCEL$annotations", "getExpressionCEL", "getOccurrence$annotations", "getOccurrence", "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "getComputedPropertyRequests$annotations", "getComputedPropertyRequests", "getPreload$annotations", "getPreload", "()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;", "experiment", "Lcom/superwall/sdk/models/triggers/RawExperiment;", "getExperiment", "()Lcom/superwall/sdk/models/triggers/RawExperiment;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "TriggerPreload", "TriggerPreloadSerializer", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class TriggerRule {
    private final List<ComputedPropertyRequest> computedPropertyRequests;
    private String experimentGroupId;
    private String experimentId;
    private final String expression;
    private final String expressionCEL;
    private final String expressionJs;
    private final TriggerRuleOccurrence occurrence;
    private final TriggerPreload preload;
    private List<VariantOption> variants;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new ArrayListSerializer(VariantOption$$serializer.INSTANCE), null, null, null, null, new ArrayListSerializer(ComputedPropertyRequest$$serializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TriggerRule copy$default(TriggerRule triggerRule, String str, String str2, List list, String str3, String str4, String str5, TriggerRuleOccurrence triggerRuleOccurrence, List list2, TriggerPreload triggerPreload, int i, Object obj) {
        if ((i & 1) != 0) {
            str = triggerRule.experimentId;
        }
        if ((i & 2) != 0) {
            str2 = triggerRule.experimentGroupId;
        }
        if ((i & 4) != 0) {
            list = triggerRule.variants;
        }
        if ((i & 8) != 0) {
            str3 = triggerRule.expression;
        }
        if ((i & 16) != 0) {
            str4 = triggerRule.expressionJs;
        }
        if ((i & 32) != 0) {
            str5 = triggerRule.expressionCEL;
        }
        if ((i & 64) != 0) {
            triggerRuleOccurrence = triggerRule.occurrence;
        }
        if ((i & 128) != 0) {
            list2 = triggerRule.computedPropertyRequests;
        }
        if ((i & 256) != 0) {
            triggerPreload = triggerRule.preload;
        }
        List list3 = list2;
        TriggerPreload triggerPreload2 = triggerPreload;
        String str6 = str5;
        TriggerRuleOccurrence triggerRuleOccurrence2 = triggerRuleOccurrence;
        String str7 = str4;
        List list4 = list;
        return triggerRule.copy(str, str2, list4, str3, str7, str6, triggerRuleOccurrence2, list3, triggerPreload2);
    }

    @SerialName("computed_properties")
    public static /* synthetic */ void getComputedPropertyRequests$annotations() {
    }

    @SerialName("experiment_group_id")
    public static /* synthetic */ void getExperimentGroupId$annotations() {
    }

    @SerialName("experiment_id")
    public static /* synthetic */ void getExperimentId$annotations() {
    }

    @SerialName("expression")
    public static /* synthetic */ void getExpression$annotations() {
    }

    @SerialName("expression_cel")
    public static /* synthetic */ void getExpressionCEL$annotations() {
    }

    @SerialName("expression_js")
    public static /* synthetic */ void getExpressionJs$annotations() {
    }

    @SerialName("occurrence")
    public static /* synthetic */ void getOccurrence$annotations() {
    }

    @SerialName("preload")
    public static /* synthetic */ void getPreload$annotations() {
    }

    @SerialName("variants")
    public static /* synthetic */ void getVariants$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getExperimentId() {
        return this.experimentId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getExperimentGroupId() {
        return this.experimentGroupId;
    }

    public final List<VariantOption> component3() {
        return this.variants;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getExpression() {
        return this.expression;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getExpressionJs() {
        return this.expressionJs;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExpressionCEL() {
        return this.expressionCEL;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final TriggerRuleOccurrence getOccurrence() {
        return this.occurrence;
    }

    public final List<ComputedPropertyRequest> component8() {
        return this.computedPropertyRequests;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final TriggerPreload getPreload() {
        return this.preload;
    }

    public final TriggerRule copy(String experimentId, String experimentGroupId, List<VariantOption> variants, String expression, String expressionJs, String expressionCEL, TriggerRuleOccurrence occurrence, List<ComputedPropertyRequest> computedPropertyRequests, TriggerPreload preload) {
        Intrinsics.checkNotNullParameter(experimentId, "experimentId");
        Intrinsics.checkNotNullParameter(experimentGroupId, "experimentGroupId");
        Intrinsics.checkNotNullParameter(variants, "variants");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(preload, "preload");
        return new TriggerRule(experimentId, experimentGroupId, variants, expression, expressionJs, expressionCEL, occurrence, computedPropertyRequests, preload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TriggerRule)) {
            return false;
        }
        TriggerRule triggerRule = (TriggerRule) other;
        return Intrinsics.areEqual(this.experimentId, triggerRule.experimentId) && Intrinsics.areEqual(this.experimentGroupId, triggerRule.experimentGroupId) && Intrinsics.areEqual(this.variants, triggerRule.variants) && Intrinsics.areEqual(this.expression, triggerRule.expression) && Intrinsics.areEqual(this.expressionJs, triggerRule.expressionJs) && Intrinsics.areEqual(this.expressionCEL, triggerRule.expressionCEL) && Intrinsics.areEqual(this.occurrence, triggerRule.occurrence) && Intrinsics.areEqual(this.computedPropertyRequests, triggerRule.computedPropertyRequests) && Intrinsics.areEqual(this.preload, triggerRule.preload);
    }

    public int hashCode() {
        int iHashCode = ((((this.experimentId.hashCode() * 31) + this.experimentGroupId.hashCode()) * 31) + this.variants.hashCode()) * 31;
        String str = this.expression;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.expressionJs;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.expressionCEL;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        TriggerRuleOccurrence triggerRuleOccurrence = this.occurrence;
        return ((((iHashCode4 + (triggerRuleOccurrence != null ? triggerRuleOccurrence.hashCode() : 0)) * 31) + this.computedPropertyRequests.hashCode()) * 31) + this.preload.hashCode();
    }

    public String toString() {
        return "TriggerRule(experimentId=" + this.experimentId + ", experimentGroupId=" + this.experimentGroupId + ", variants=" + this.variants + ", expression=" + this.expression + ", expressionJs=" + this.expressionJs + ", expressionCEL=" + this.expressionCEL + ", occurrence=" + this.occurrence + ", computedPropertyRequests=" + this.computedPropertyRequests + ", preload=" + this.preload + ")";
    }

    public /* synthetic */ TriggerRule(int i, String str, String str2, List list, String str3, String str4, String str5, TriggerRuleOccurrence triggerRuleOccurrence, List list2, TriggerPreload triggerPreload, SerializationConstructorMarker serializationConstructorMarker) {
        if (263 != (i & 263)) {
            PluginExceptionsKt.throwMissingFieldException(i, 263, TriggerRule$$serializer.INSTANCE.getDescriptor());
        }
        this.experimentId = str;
        this.experimentGroupId = str2;
        this.variants = list;
        if ((i & 8) == 0) {
            this.expression = null;
        } else {
            this.expression = str3;
        }
        if ((i & 16) == 0) {
            this.expressionJs = null;
        } else {
            this.expressionJs = str4;
        }
        if ((i & 32) == 0) {
            this.expressionCEL = null;
        } else {
            this.expressionCEL = str5;
        }
        if ((i & 64) == 0) {
            this.occurrence = null;
        } else {
            this.occurrence = triggerRuleOccurrence;
        }
        if ((i & 128) == 0) {
            this.computedPropertyRequests = CollectionsKt.emptyList();
        } else {
            this.computedPropertyRequests = list2;
        }
        this.preload = triggerPreload;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(TriggerRule self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.experimentId);
        output.encodeStringElement(serialDesc, 1, self.experimentGroupId);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.variants);
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.expression != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.expression);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.expressionJs != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.expressionJs);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.expressionCEL != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.expressionCEL);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.occurrence != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, TriggerRuleOccurrence$$serializer.INSTANCE, self.occurrence);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || !Intrinsics.areEqual(self.computedPropertyRequests, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 7, kSerializerArr[7], self.computedPropertyRequests);
        }
        output.encodeSerializableElement(serialDesc, 8, TriggerPreloadSerializer.INSTANCE, self.preload);
    }

    public TriggerRule(String experimentId, String experimentGroupId, List<VariantOption> variants, String str, String str2, String str3, TriggerRuleOccurrence triggerRuleOccurrence, List<ComputedPropertyRequest> computedPropertyRequests, TriggerPreload preload) {
        Intrinsics.checkNotNullParameter(experimentId, "experimentId");
        Intrinsics.checkNotNullParameter(experimentGroupId, "experimentGroupId");
        Intrinsics.checkNotNullParameter(variants, "variants");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(preload, "preload");
        this.experimentId = experimentId;
        this.experimentGroupId = experimentGroupId;
        this.variants = variants;
        this.expression = str;
        this.expressionJs = str2;
        this.expressionCEL = str3;
        this.occurrence = triggerRuleOccurrence;
        this.computedPropertyRequests = computedPropertyRequests;
        this.preload = preload;
    }

    public final String getExperimentId() {
        return this.experimentId;
    }

    public final void setExperimentId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.experimentId = str;
    }

    public final String getExperimentGroupId() {
        return this.experimentGroupId;
    }

    public final void setExperimentGroupId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.experimentGroupId = str;
    }

    public final List<VariantOption> getVariants() {
        return this.variants;
    }

    public final void setVariants(List<VariantOption> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.variants = list;
    }

    public final String getExpression() {
        return this.expression;
    }

    public final String getExpressionJs() {
        return this.expressionJs;
    }

    public final String getExpressionCEL() {
        return this.expressionCEL;
    }

    public final TriggerRuleOccurrence getOccurrence() {
        return this.occurrence;
    }

    public final List<ComputedPropertyRequest> getComputedPropertyRequests() {
        return this.computedPropertyRequests;
    }

    public /* synthetic */ TriggerRule(String str, String str2, List list, String str3, String str4, String str5, TriggerRuleOccurrence triggerRuleOccurrence, List list2, TriggerPreload triggerPreload, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : triggerRuleOccurrence, (i & 128) != 0 ? CollectionsKt.emptyList() : list2, triggerPreload);
    }

    public final TriggerPreload getPreload() {
        return this.preload;
    }

    /* JADX INFO: compiled from: TriggerRule.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ$\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;", "", "behavior", "Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;", "requiresReEvaluation", "", "<init>", "(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)V", "getBehavior", "()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;", "setBehavior", "(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;)V", "getRequiresReEvaluation", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;Ljava/lang/Boolean;)Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;", "equals", "other", "hashCode", "", "toString", "", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable(with = TriggerPreloadSerializer.class)
    public static final /* data */ class TriggerPreload {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private TriggerPreloadBehavior behavior;
        private final Boolean requiresReEvaluation;

        public static /* synthetic */ TriggerPreload copy$default(TriggerPreload triggerPreload, TriggerPreloadBehavior triggerPreloadBehavior, Boolean bool, int i, Object obj) {
            if ((i & 1) != 0) {
                triggerPreloadBehavior = triggerPreload.behavior;
            }
            if ((i & 2) != 0) {
                bool = triggerPreload.requiresReEvaluation;
            }
            return triggerPreload.copy(triggerPreloadBehavior, bool);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TriggerPreloadBehavior getBehavior() {
            return this.behavior;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Boolean getRequiresReEvaluation() {
            return this.requiresReEvaluation;
        }

        public final TriggerPreload copy(TriggerPreloadBehavior behavior, Boolean requiresReEvaluation) {
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            return new TriggerPreload(behavior, requiresReEvaluation);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TriggerPreload)) {
                return false;
            }
            TriggerPreload triggerPreload = (TriggerPreload) other;
            return this.behavior == triggerPreload.behavior && Intrinsics.areEqual(this.requiresReEvaluation, triggerPreload.requiresReEvaluation);
        }

        public int hashCode() {
            int iHashCode = this.behavior.hashCode() * 31;
            Boolean bool = this.requiresReEvaluation;
            return iHashCode + (bool == null ? 0 : bool.hashCode());
        }

        public String toString() {
            return "TriggerPreload(behavior=" + this.behavior + ", requiresReEvaluation=" + this.requiresReEvaluation + ")";
        }

        /* JADX INFO: compiled from: TriggerRule.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<TriggerPreload> serializer() {
                return TriggerPreloadSerializer.INSTANCE;
            }
        }

        public TriggerPreload(TriggerPreloadBehavior behavior, Boolean bool) {
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            this.behavior = behavior;
            this.requiresReEvaluation = bool;
        }

        public /* synthetic */ TriggerPreload(TriggerPreloadBehavior triggerPreloadBehavior, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(triggerPreloadBehavior, (i & 2) != 0 ? null : bool);
        }

        public final TriggerPreloadBehavior getBehavior() {
            return this.behavior;
        }

        public final void setBehavior(TriggerPreloadBehavior triggerPreloadBehavior) {
            Intrinsics.checkNotNullParameter(triggerPreloadBehavior, "<set-?>");
            this.behavior = triggerPreloadBehavior;
        }

        public final Boolean getRequiresReEvaluation() {
            return this.requiresReEvaluation;
        }
    }

    /* JADX INFO: compiled from: TriggerRule.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreloadSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TriggerPreloadSerializer implements KSerializer<TriggerPreload> {
        public static final TriggerPreloadSerializer INSTANCE = new TriggerPreloadSerializer();
        private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("TriggerPreload", new SerialDescriptor[0], new Function1() { // from class: com.superwall.sdk.models.triggers.TriggerRule$TriggerPreloadSerializer$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TriggerRule.TriggerPreloadSerializer.descriptor$lambda$0((ClassSerialDescriptorBuilder) obj);
            }
        });

        private TriggerPreloadSerializer() {
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        public SerialDescriptor getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, TriggerPreload value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(getDescriptor());
            compositeEncoderBeginStructure.encodeStringElement(getDescriptor(), 0, value.getBehavior().getRawValue());
            if (value.getRequiresReEvaluation() != null) {
                compositeEncoderBeginStructure.encodeBooleanElement(getDescriptor(), 1, value.getRequiresReEvaluation().booleanValue());
            }
            compositeEncoderBeginStructure.endStructure(getDescriptor());
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public TriggerPreload deserialize(Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(getDescriptor());
            TriggerPreloadBehavior triggerPreloadBehaviorValueOf = null;
            Boolean boolValueOf = null;
            while (true) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    compositeDecoderBeginStructure.endStructure(getDescriptor());
                    if (triggerPreloadBehaviorValueOf == null) {
                        throw new SerializationException("Behavior is missing");
                    }
                    if (Intrinsics.areEqual((Object) boolValueOf, (Object) true)) {
                        return new TriggerPreload(TriggerPreloadBehavior.ALWAYS, boolValueOf);
                    }
                    return new TriggerPreload(triggerPreloadBehaviorValueOf, boolValueOf);
                }
                if (iDecodeElementIndex == 0) {
                    String upperCase = compositeDecoderBeginStructure.decodeStringElement(getDescriptor(), iDecodeElementIndex).toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    triggerPreloadBehaviorValueOf = TriggerPreloadBehavior.valueOf(upperCase);
                } else if (iDecodeElementIndex == 1) {
                    boolValueOf = Boolean.valueOf(compositeDecoderBeginStructure.decodeBooleanElement(getDescriptor(), iDecodeElementIndex));
                } else {
                    throw new SerializationException("Unknown index " + iDecodeElementIndex);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit descriptor$lambda$0(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
            Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
            buildClassSerialDescriptor.element("behavior", StringSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
            buildClassSerialDescriptor.element("requiresReEvaluation", BooleanSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), true);
            return Unit.INSTANCE;
        }
    }

    public final RawExperiment getExperiment() {
        return new RawExperiment(this.experimentId, this.experimentGroupId, this.variants);
    }

    /* JADX INFO: compiled from: TriggerRule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRule$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<TriggerRule> serializer() {
            return TriggerRule$$serializer.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final TriggerRule stub() {
            List listListOf = CollectionsKt.listOf(new VariantOption(Experiment.Variant.VariantType.HOLDOUT, ExifInterface.GPS_MEASUREMENT_3D, 20, null));
            List listEmptyList = CollectionsKt.emptyList();
            TriggerPreloadBehavior triggerPreloadBehavior = TriggerPreloadBehavior.ALWAYS;
            String str = null;
            TriggerRuleOccurrence triggerRuleOccurrence = null;
            return new TriggerRule(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, ExifInterface.GPS_MEASUREMENT_2D, listListOf, (String) null, (String) (0 == true ? 1 : 0), str, triggerRuleOccurrence, listEmptyList, new TriggerPreload(triggerPreloadBehavior, null, 2, 0 == true ? 1 : 0), 32, (DefaultConstructorMarker) null);
        }
    }
}
