package com.superwall.sdk.config.models;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: compiled from: SurveyShowCondition.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/config/models/SurveyShowConditionSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/config/models/SurveyShowCondition;", "<init>", "()V", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SurveyShowConditionSerializer implements KSerializer<SurveyShowCondition> {
    public static final SurveyShowConditionSerializer INSTANCE = new SurveyShowConditionSerializer();
    private static final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.config.models.SurveyShowCondition", null, 1);
        pluginGeneratedSerialDescriptor.addElement("rawValue", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SurveyShowConditionSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, SurveyShowCondition value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(value.getRawValue());
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public SurveyShowCondition deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        String strDecodeString = decoder.decodeString();
        for (SurveyShowCondition surveyShowCondition : SurveyShowCondition.values()) {
            if (Intrinsics.areEqual(surveyShowCondition.getRawValue(), strDecodeString)) {
                if (surveyShowCondition != null) {
                    return surveyShowCondition;
                }
                throw new IllegalArgumentException("Unsupported survey condition.");
            }
        }
        surveyShowCondition = null;
        if (surveyShowCondition != null) {
            return surveyShowCondition;
        }
        throw new IllegalArgumentException("Unsupported survey condition.");
    }
}
