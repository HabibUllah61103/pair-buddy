package com.superwall.sdk.models.internal;

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

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/internal/RedemptionInfo.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionInfo;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class RedemptionInfo$$serializer implements GeneratedSerializer<RedemptionInfo> {
    public static final RedemptionInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private RedemptionInfo$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        RedemptionInfo$$serializer redemptionInfo$$serializer = new RedemptionInfo$$serializer();
        INSTANCE = redemptionInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.internal.RedemptionInfo", redemptionInfo$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("ownership", false);
        pluginGeneratedSerialDescriptor.addElement("purchaserInfo", false);
        pluginGeneratedSerialDescriptor.addElement("paywallInfo", true);
        pluginGeneratedSerialDescriptor.addElement("entitlements", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = RedemptionInfo.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], PurchaserInfo$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(RedemptionResult$PaywallInfo$$serializer.INSTANCE), kSerializerArr[3]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final RedemptionInfo deserialize(Decoder decoder) {
        int i;
        RedemptionOwnership redemptionOwnership;
        PurchaserInfo purchaserInfo;
        RedemptionResult.PaywallInfo paywallInfo;
        List list;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = RedemptionInfo.$childSerializers;
        RedemptionOwnership redemptionOwnership2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            RedemptionOwnership redemptionOwnership3 = (RedemptionOwnership) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], null);
            PurchaserInfo purchaserInfo2 = (PurchaserInfo) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, PurchaserInfo$$serializer.INSTANCE, null);
            RedemptionResult.PaywallInfo paywallInfo2 = (RedemptionResult.PaywallInfo) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 2, RedemptionResult$PaywallInfo$$serializer.INSTANCE, null);
            list = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], null);
            redemptionOwnership = redemptionOwnership3;
            paywallInfo = paywallInfo2;
            i = 15;
            purchaserInfo = purchaserInfo2;
        } else {
            boolean z = true;
            int i2 = 0;
            PurchaserInfo purchaserInfo3 = null;
            RedemptionResult.PaywallInfo paywallInfo3 = null;
            List list2 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    redemptionOwnership2 = (RedemptionOwnership) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], redemptionOwnership2);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    purchaserInfo3 = (PurchaserInfo) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, PurchaserInfo$$serializer.INSTANCE, purchaserInfo3);
                    i2 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    paywallInfo3 = (RedemptionResult.PaywallInfo) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 2, RedemptionResult$PaywallInfo$$serializer.INSTANCE, paywallInfo3);
                    i2 |= 4;
                } else {
                    if (iDecodeElementIndex != 3) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], list2);
                    i2 |= 8;
                }
            }
            i = i2;
            redemptionOwnership = redemptionOwnership2;
            purchaserInfo = purchaserInfo3;
            paywallInfo = paywallInfo3;
            list = list2;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new RedemptionInfo(i, redemptionOwnership, purchaserInfo, paywallInfo, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, RedemptionInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        RedemptionInfo.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
