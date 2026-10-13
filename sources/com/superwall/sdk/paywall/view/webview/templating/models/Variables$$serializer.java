package com.superwall.sdk.paywall.view.webview.templating.models;

import com.reactcommunity.rndatetimepicker.RNConstants;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: Variables.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/paywall/view/webview/templating/models/Variables.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class Variables$$serializer implements GeneratedSerializer<Variables> {
    public static final Variables$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private Variables$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Variables$$serializer variables$$serializer = new Variables$$serializer();
        INSTANCE = variables$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.paywall.view.webview.templating.models.Variables", variables$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("user", false);
        pluginGeneratedSerialDescriptor.addElement("device", false);
        pluginGeneratedSerialDescriptor.addElement("params", false);
        pluginGeneratedSerialDescriptor.addElement("products", true);
        pluginGeneratedSerialDescriptor.addElement("primary", true);
        pluginGeneratedSerialDescriptor.addElement("secondary", true);
        pluginGeneratedSerialDescriptor.addElement("tertiary", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = Variables.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], kSerializerArr[4], kSerializerArr[5], kSerializerArr[6]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Variables deserialize(Decoder decoder) {
        Map map;
        Map map2;
        List list;
        Map map3;
        Map map4;
        Map map5;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = Variables.$childSerializers;
        int i2 = 6;
        int i3 = 2;
        Map map6 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            Map map7 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], null);
            Map map8 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], null);
            Map map9 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], null);
            List list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], null);
            Map map10 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], null);
            Map map11 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], null);
            map4 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 6, kSerializerArr[6], null);
            map6 = map7;
            i = 127;
            map5 = map11;
            list = list2;
            map3 = map10;
            map2 = map9;
            map = map8;
        } else {
            int i4 = 1;
            boolean z = true;
            int i5 = 0;
            Map map12 = null;
            Map map13 = null;
            map = null;
            map2 = null;
            list = null;
            map3 = null;
            while (z) {
                int i6 = i3;
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 6;
                        i3 = 2;
                        i4 = 1;
                        break;
                    case 0:
                        map6 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], map6);
                        i5 |= 1;
                        i2 = 6;
                        i3 = 2;
                        i4 = 1;
                        break;
                    case 1:
                        map = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i4, kSerializerArr[i4], map);
                        i5 |= 2;
                        i2 = 6;
                        i3 = 2;
                        break;
                    case 2:
                        map2 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i6, kSerializerArr[i6], map2);
                        i5 |= 4;
                        i3 = i6;
                        i2 = 6;
                        break;
                    case 3:
                        list = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], list);
                        i5 |= 8;
                        i3 = i6;
                        break;
                    case 4:
                        map3 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], map3);
                        i5 |= 16;
                        i3 = i6;
                        break;
                    case 5:
                        map13 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], map13);
                        i5 |= 32;
                        i3 = i6;
                        break;
                    case 6:
                        map12 = (Map) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i2, kSerializerArr[i2], map12);
                        i5 |= 64;
                        i3 = i6;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            map4 = map12;
            map5 = map13;
            i = i5;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new Variables(i, map6, map, map2, list, map3, map5, map4, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, Variables value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        Variables.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
