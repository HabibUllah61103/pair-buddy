package com.superwall.sdk.models.triggers;

import com.reactcommunity.rndatetimepicker.RNConstants;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: TriggerRule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/triggers/TriggerRule.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class TriggerRule$$serializer implements GeneratedSerializer<TriggerRule> {
    public static final TriggerRule$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private TriggerRule$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        TriggerRule$$serializer triggerRule$$serializer = new TriggerRule$$serializer();
        INSTANCE = triggerRule$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.triggers.TriggerRule", triggerRule$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("experiment_id", false);
        pluginGeneratedSerialDescriptor.addElement("experiment_group_id", false);
        pluginGeneratedSerialDescriptor.addElement("variants", false);
        pluginGeneratedSerialDescriptor.addElement("expression", true);
        pluginGeneratedSerialDescriptor.addElement("expression_js", true);
        pluginGeneratedSerialDescriptor.addElement("expression_cel", true);
        pluginGeneratedSerialDescriptor.addElement("occurrence", true);
        pluginGeneratedSerialDescriptor.addElement("computed_properties", true);
        pluginGeneratedSerialDescriptor.addElement("preload", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = TriggerRule.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, kSerializerArr[2], BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(TriggerRuleOccurrence$$serializer.INSTANCE), kSerializerArr[7], TriggerRule.TriggerPreloadSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final TriggerRule deserialize(Decoder decoder) {
        String str;
        List list;
        String str2;
        String str3;
        String str4;
        String str5;
        List list2;
        TriggerRule.TriggerPreload triggerPreload;
        TriggerRuleOccurrence triggerRuleOccurrence;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = TriggerRule.$childSerializers;
        int i2 = 8;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
            List list3 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], null);
            String str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, null);
            String str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, null);
            String str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, null);
            TriggerRuleOccurrence triggerRuleOccurrence2 = (TriggerRuleOccurrence) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, TriggerRuleOccurrence$$serializer.INSTANCE, null);
            str4 = str6;
            i = 511;
            list2 = list3;
            str = str7;
            str2 = strDecodeStringElement3;
            list = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], null);
            triggerRuleOccurrence = triggerRuleOccurrence2;
            str3 = str8;
            triggerPreload = (TriggerRule.TriggerPreload) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 8, TriggerRule.TriggerPreloadSerializer.INSTANCE, null);
            str5 = strDecodeStringElement2;
        } else {
            boolean z = true;
            int i3 = 0;
            TriggerRule.TriggerPreload triggerPreload2 = null;
            TriggerRuleOccurrence triggerRuleOccurrence3 = null;
            List list4 = null;
            String str9 = null;
            str = null;
            String str10 = null;
            String strDecodeStringElement4 = null;
            List list5 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        break;
                    case 0:
                        i3 |= 1;
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
                        i2 = 8;
                        break;
                    case 1:
                        strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
                        i3 |= 2;
                        i2 = 8;
                        break;
                    case 2:
                        list5 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], list5);
                        i3 |= 4;
                        i2 = 8;
                        break;
                    case 3:
                        str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str10);
                        i3 |= 8;
                        i2 = 8;
                        break;
                    case 4:
                        str = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str);
                        i3 |= 16;
                        i2 = 8;
                        break;
                    case 5:
                        str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str9);
                        i3 |= 32;
                        i2 = 8;
                        break;
                    case 6:
                        triggerRuleOccurrence3 = (TriggerRuleOccurrence) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, TriggerRuleOccurrence$$serializer.INSTANCE, triggerRuleOccurrence3);
                        i3 |= 64;
                        i2 = 8;
                        break;
                    case 7:
                        list4 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], list4);
                        i3 |= 128;
                        break;
                    case 8:
                        triggerPreload2 = (TriggerRule.TriggerPreload) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i2, TriggerRule.TriggerPreloadSerializer.INSTANCE, triggerPreload2);
                        i3 |= 256;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str11 = strDecodeStringElement4;
            list = list4;
            str2 = str11;
            String str12 = str10;
            str3 = str9;
            str4 = str12;
            str5 = strDecodeStringElement;
            list2 = list5;
            triggerPreload = triggerPreload2;
            triggerRuleOccurrence = triggerRuleOccurrence3;
            i = i3;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new TriggerRule(i, str5, str2, list2, str4, str, str3, triggerRuleOccurrence, list, triggerPreload, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, TriggerRule value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        TriggerRule.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
