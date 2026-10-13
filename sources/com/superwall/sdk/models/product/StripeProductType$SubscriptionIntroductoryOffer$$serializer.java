package com.superwall.sdk.models.product;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.serialization.BigDecimalSerializer;
import java.math.BigDecimal;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: StripeProductType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/product/StripeProductType.SubscriptionIntroductoryOffer.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType$SubscriptionIntroductoryOffer;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class StripeProductType$SubscriptionIntroductoryOffer$$serializer implements GeneratedSerializer<StripeProductType.SubscriptionIntroductoryOffer> {
    public static final StripeProductType$SubscriptionIntroductoryOffer$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private StripeProductType$SubscriptionIntroductoryOffer$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        StripeProductType$SubscriptionIntroductoryOffer$$serializer stripeProductType$SubscriptionIntroductoryOffer$$serializer = new StripeProductType$SubscriptionIntroductoryOffer$$serializer();
        INSTANCE = stripeProductType$SubscriptionIntroductoryOffer$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.product.StripeProductType.SubscriptionIntroductoryOffer", stripeProductType$SubscriptionIntroductoryOffer$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement(TypedValues.Cycle.S_WAVE_PERIOD, false);
        pluginGeneratedSerialDescriptor.addElement("price", false);
        pluginGeneratedSerialDescriptor.addElement("raw_price", false);
        pluginGeneratedSerialDescriptor.addElement("period_count", false);
        pluginGeneratedSerialDescriptor.addElement("payment_method", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, StringSerializer.INSTANCE, BigDecimalSerializer.INSTANCE, IntSerializer.INSTANCE, StripeProductType.SubscriptionIntroductoryOffer.$childSerializers[4]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final StripeProductType.SubscriptionIntroductoryOffer deserialize(Decoder decoder) {
        int i;
        int i2;
        StripeProductType.StripeSubscriptionPeriod stripeSubscriptionPeriod;
        String str;
        BigDecimal bigDecimal;
        StripeProductType.SubscriptionIntroductoryOffer.PaymentMethod paymentMethod;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = StripeProductType.SubscriptionIntroductoryOffer.$childSerializers;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            StripeProductType.StripeSubscriptionPeriod stripeSubscriptionPeriod2 = (StripeProductType.StripeSubscriptionPeriod) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, null);
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
            BigDecimal bigDecimal2 = (BigDecimal) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, BigDecimalSerializer.INSTANCE, null);
            int iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 3);
            paymentMethod = (StripeProductType.SubscriptionIntroductoryOffer.PaymentMethod) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], null);
            stripeSubscriptionPeriod = stripeSubscriptionPeriod2;
            i = iDecodeIntElement;
            bigDecimal = bigDecimal2;
            i2 = 31;
            str = strDecodeStringElement;
        } else {
            boolean z = true;
            int iDecodeIntElement2 = 0;
            StripeProductType.StripeSubscriptionPeriod stripeSubscriptionPeriod3 = null;
            String strDecodeStringElement2 = null;
            BigDecimal bigDecimal3 = null;
            StripeProductType.SubscriptionIntroductoryOffer.PaymentMethod paymentMethod2 = null;
            int i3 = 0;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    stripeSubscriptionPeriod3 = (StripeProductType.StripeSubscriptionPeriod) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, stripeSubscriptionPeriod3);
                    i3 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
                    i3 |= 2;
                } else if (iDecodeElementIndex == 2) {
                    bigDecimal3 = (BigDecimal) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, BigDecimalSerializer.INSTANCE, bigDecimal3);
                    i3 |= 4;
                } else if (iDecodeElementIndex == 3) {
                    iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 3);
                    i3 |= 8;
                } else {
                    if (iDecodeElementIndex != 4) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    paymentMethod2 = (StripeProductType.SubscriptionIntroductoryOffer.PaymentMethod) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], paymentMethod2);
                    i3 |= 16;
                }
            }
            i = iDecodeIntElement2;
            i2 = i3;
            stripeSubscriptionPeriod = stripeSubscriptionPeriod3;
            str = strDecodeStringElement2;
            bigDecimal = bigDecimal3;
            paymentMethod = paymentMethod2;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new StripeProductType.SubscriptionIntroductoryOffer(i2, stripeSubscriptionPeriod, str, bigDecimal, i, paymentMethod, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, StripeProductType.SubscriptionIntroductoryOffer value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        StripeProductType.SubscriptionIntroductoryOffer.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
