package com.superwall.sdk.models.product;

import androidx.core.app.FrameMetricsAggregator;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.serialization.BigDecimalSerializer;
import java.math.BigDecimal;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: StripeProductType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/product/StripeProductType.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/product/StripeProductType;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class StripeProductType$$serializer implements GeneratedSerializer<StripeProductType> {
    public static final StripeProductType$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private StripeProductType$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        StripeProductType$$serializer stripeProductType$$serializer = new StripeProductType$$serializer();
        INSTANCE = stripeProductType$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.product.StripeProductType", stripeProductType$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("product_id", false);
        pluginGeneratedSerialDescriptor.addElement("raw_price", false);
        pluginGeneratedSerialDescriptor.addElement("price", false);
        pluginGeneratedSerialDescriptor.addElement("currency_code", false);
        pluginGeneratedSerialDescriptor.addElement("currency_symbol", false);
        pluginGeneratedSerialDescriptor.addElement("price_locale", false);
        pluginGeneratedSerialDescriptor.addElement("subscription_period", false);
        pluginGeneratedSerialDescriptor.addElement("subscription_introductory_offer", false);
        pluginGeneratedSerialDescriptor.addElement("entitlements", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, BigDecimalSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StripeProductType$PriceLocale$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(StripeProductType$SubscriptionIntroductoryOffer$$serializer.INSTANCE), StripeProductType.$childSerializers[8]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final StripeProductType deserialize(Decoder decoder) {
        StripeProductType.StripeSubscriptionPeriod stripeSubscriptionPeriod;
        String str;
        String str2;
        String str3;
        StripeProductType.PriceLocale priceLocale;
        BigDecimal bigDecimal;
        String str4;
        int i;
        List list;
        StripeProductType.SubscriptionIntroductoryOffer subscriptionIntroductoryOffer;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = StripeProductType.$childSerializers;
        int i2 = 7;
        int i3 = 6;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
            BigDecimal bigDecimal2 = (BigDecimal) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, BigDecimalSerializer.INSTANCE, null);
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 2);
            String strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 3);
            String strDecodeStringElement5 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 4);
            StripeProductType.PriceLocale priceLocale2 = (StripeProductType.PriceLocale) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, StripeProductType$PriceLocale$$serializer.INSTANCE, null);
            StripeProductType.StripeSubscriptionPeriod stripeSubscriptionPeriod2 = (StripeProductType.StripeSubscriptionPeriod) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, null);
            StripeProductType.SubscriptionIntroductoryOffer subscriptionIntroductoryOffer2 = (StripeProductType.SubscriptionIntroductoryOffer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StripeProductType$SubscriptionIntroductoryOffer$$serializer.INSTANCE, null);
            List list2 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 8, kSerializerArr[8], null);
            i = FrameMetricsAggregator.EVERY_DURATION;
            list = list2;
            subscriptionIntroductoryOffer = subscriptionIntroductoryOffer2;
            stripeSubscriptionPeriod = stripeSubscriptionPeriod2;
            priceLocale = priceLocale2;
            str4 = strDecodeStringElement4;
            str3 = strDecodeStringElement5;
            str2 = strDecodeStringElement3;
            bigDecimal = bigDecimal2;
            str = strDecodeStringElement2;
        } else {
            boolean z = true;
            int i4 = 0;
            List list3 = null;
            StripeProductType.SubscriptionIntroductoryOffer subscriptionIntroductoryOffer3 = null;
            StripeProductType.StripeSubscriptionPeriod stripeSubscriptionPeriod3 = null;
            StripeProductType.PriceLocale priceLocale3 = null;
            BigDecimal bigDecimal3 = null;
            String strDecodeStringElement6 = null;
            String strDecodeStringElement7 = null;
            String strDecodeStringElement8 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 7;
                        break;
                    case 0:
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
                        i4 |= 1;
                        i2 = 7;
                        i3 = 6;
                        break;
                    case 1:
                        bigDecimal3 = (BigDecimal) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, BigDecimalSerializer.INSTANCE, bigDecimal3);
                        i4 |= 2;
                        i2 = 7;
                        i3 = 6;
                        break;
                    case 2:
                        i4 |= 4;
                        strDecodeStringElement6 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 2);
                        i2 = 7;
                        break;
                    case 3:
                        strDecodeStringElement7 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 3);
                        i4 |= 8;
                        i2 = 7;
                        break;
                    case 4:
                        strDecodeStringElement8 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 4);
                        i4 |= 16;
                        break;
                    case 5:
                        priceLocale3 = (StripeProductType.PriceLocale) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, StripeProductType$PriceLocale$$serializer.INSTANCE, priceLocale3);
                        i4 |= 32;
                        break;
                    case 6:
                        stripeSubscriptionPeriod3 = (StripeProductType.StripeSubscriptionPeriod) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i3, StripeProductType$StripeSubscriptionPeriod$$serializer.INSTANCE, stripeSubscriptionPeriod3);
                        i4 |= 64;
                        break;
                    case 7:
                        subscriptionIntroductoryOffer3 = (StripeProductType.SubscriptionIntroductoryOffer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i2, StripeProductType$SubscriptionIntroductoryOffer$$serializer.INSTANCE, subscriptionIntroductoryOffer3);
                        i4 |= 128;
                        break;
                    case 8:
                        list3 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 8, kSerializerArr[8], list3);
                        i4 |= 256;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str5 = strDecodeStringElement8;
            stripeSubscriptionPeriod = stripeSubscriptionPeriod3;
            str = strDecodeStringElement;
            str2 = strDecodeStringElement6;
            str3 = str5;
            String str6 = strDecodeStringElement7;
            priceLocale = priceLocale3;
            bigDecimal = bigDecimal3;
            str4 = str6;
            i = i4;
            list = list3;
            subscriptionIntroductoryOffer = subscriptionIntroductoryOffer3;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new StripeProductType(i, str, bigDecimal, str2, str4, str3, priceLocale, stripeSubscriptionPeriod, subscriptionIntroductoryOffer, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, StripeProductType value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        StripeProductType.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
