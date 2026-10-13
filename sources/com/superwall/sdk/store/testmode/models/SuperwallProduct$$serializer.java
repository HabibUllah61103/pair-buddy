package com.superwall.sdk.store.testmode.models;

import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.notifications.service.NotificationsService;
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

/* JADX INFO: compiled from: SuperwallProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/store/testmode/models/SuperwallProduct.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class SuperwallProduct$$serializer implements GeneratedSerializer<SuperwallProduct> {
    public static final SuperwallProduct$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private SuperwallProduct$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        SuperwallProduct$$serializer superwallProduct$$serializer = new SuperwallProduct$$serializer();
        INSTANCE = superwallProduct$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.store.testmode.models.SuperwallProduct", superwallProduct$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("object", true);
        pluginGeneratedSerialDescriptor.addElement(NotificationsService.IDENTIFIER_KEY, false);
        pluginGeneratedSerialDescriptor.addElement("platform", false);
        pluginGeneratedSerialDescriptor.addElement("price", true);
        pluginGeneratedSerialDescriptor.addElement("subscription", true);
        pluginGeneratedSerialDescriptor.addElement("entitlements", true);
        pluginGeneratedSerialDescriptor.addElement("storefront", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = SuperwallProduct.$childSerializers;
        return new KSerializer[]{BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), StringSerializer.INSTANCE, kSerializerArr[2], BuiltinSerializersKt.getNullable(SuperwallProductPrice$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(SuperwallProductSubscription$$serializer.INSTANCE), kSerializerArr[5], BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final SuperwallProduct deserialize(Decoder decoder) {
        String strDecodeStringElement;
        SuperwallProductPlatform superwallProductPlatform;
        SuperwallProductPrice superwallProductPrice;
        SuperwallProductSubscription superwallProductSubscription;
        String str;
        List list;
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = SuperwallProduct.$childSerializers;
        int i3 = 6;
        int i4 = 3;
        int i5 = 2;
        String str2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, null);
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
            SuperwallProductPlatform superwallProductPlatform2 = (SuperwallProductPlatform) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], null);
            SuperwallProductPrice superwallProductPrice2 = (SuperwallProductPrice) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, SuperwallProductPrice$$serializer.INSTANCE, null);
            SuperwallProductSubscription superwallProductSubscription2 = (SuperwallProductSubscription) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, SuperwallProductSubscription$$serializer.INSTANCE, null);
            list = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], null);
            str2 = str3;
            str = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, null);
            superwallProductPrice = superwallProductPrice2;
            superwallProductSubscription = superwallProductSubscription2;
            i = 127;
            superwallProductPlatform = superwallProductPlatform2;
            strDecodeStringElement = strDecodeStringElement2;
        } else {
            boolean z = true;
            int i6 = 0;
            String str4 = null;
            List list2 = null;
            strDecodeStringElement = null;
            superwallProductPlatform = null;
            superwallProductPrice = null;
            superwallProductSubscription = null;
            while (z) {
                int i7 = i5;
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i4 = 3;
                        i5 = 2;
                        break;
                    case 0:
                        str2 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 0, StringSerializer.INSTANCE, str2);
                        i6 |= 1;
                        i3 = 6;
                        i4 = 3;
                        i5 = 2;
                        break;
                    case 1:
                        i2 = i7;
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
                        i6 |= 2;
                        i5 = i2;
                        i3 = 6;
                        break;
                    case 2:
                        i2 = i7;
                        superwallProductPlatform = (SuperwallProductPlatform) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i2, kSerializerArr[i7], superwallProductPlatform);
                        i6 |= 4;
                        i5 = i2;
                        i3 = 6;
                        break;
                    case 3:
                        superwallProductPrice = (SuperwallProductPrice) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i4, SuperwallProductPrice$$serializer.INSTANCE, superwallProductPrice);
                        i6 |= 8;
                        i5 = i7;
                        break;
                    case 4:
                        superwallProductSubscription = (SuperwallProductSubscription) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, SuperwallProductSubscription$$serializer.INSTANCE, superwallProductSubscription);
                        i6 |= 16;
                        i5 = i7;
                        break;
                    case 5:
                        list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], list2);
                        i6 |= 32;
                        i5 = i7;
                        break;
                    case 6:
                        str4 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i3, StringSerializer.INSTANCE, str4);
                        i6 |= 64;
                        i5 = i7;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            str = str4;
            list = list2;
            i = i6;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new SuperwallProduct(i, str2, strDecodeStringElement, superwallProductPlatform, superwallProductPrice, superwallProductSubscription, list, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, SuperwallProduct value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        SuperwallProduct.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
