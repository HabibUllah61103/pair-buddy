package com.superwall.sdk.models.customer;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.store.abstractions.product.receipt.LatestPeriodType;
import java.util.Date;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SubscriptionTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/customer/SubscriptionTransaction.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class SubscriptionTransaction$$serializer implements GeneratedSerializer<SubscriptionTransaction> {
    public static final SubscriptionTransaction$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private SubscriptionTransaction$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        SubscriptionTransaction$$serializer subscriptionTransaction$$serializer = new SubscriptionTransaction$$serializer();
        INSTANCE = subscriptionTransaction$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.customer.SubscriptionTransaction", subscriptionTransaction$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("transactionId", false);
        pluginGeneratedSerialDescriptor.addElement("productId", false);
        pluginGeneratedSerialDescriptor.addElement("purchaseDate", false);
        pluginGeneratedSerialDescriptor.addElement("willRenew", false);
        pluginGeneratedSerialDescriptor.addElement("isRevoked", false);
        pluginGeneratedSerialDescriptor.addElement("isInGracePeriod", false);
        pluginGeneratedSerialDescriptor.addElement("isInBillingRetryPeriod", false);
        pluginGeneratedSerialDescriptor.addElement("isActive", false);
        pluginGeneratedSerialDescriptor.addElement("expirationDate", false);
        pluginGeneratedSerialDescriptor.addElement("store", true);
        pluginGeneratedSerialDescriptor.addElement("offerType", true);
        pluginGeneratedSerialDescriptor.addElement("subscriptionGroupId", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = SubscriptionTransaction.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, DateSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), kSerializerArr[9], BuiltinSerializersKt.getNullable(kSerializerArr[10]), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final SubscriptionTransaction deserialize(Decoder decoder) {
        String str;
        LatestPeriodType latestPeriodType;
        String str2;
        Store store;
        Date date;
        Date date2;
        String str3;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = SubscriptionTransaction.$childSerializers;
        int i2 = 7;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
            date2 = (Date) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, DateSerializer.INSTANCE, null);
            boolean zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 3);
            boolean zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 4);
            boolean zDecodeBooleanElement3 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 5);
            boolean zDecodeBooleanElement4 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 6);
            boolean zDecodeBooleanElement5 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 7);
            Date date3 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, DateSerializer.INSTANCE, null);
            Store store2 = (Store) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 9, kSerializerArr[9], null);
            z4 = zDecodeBooleanElement;
            i = 4095;
            latestPeriodType = (LatestPeriodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, kSerializerArr[10], null);
            str2 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 11, StringSerializer.INSTANCE, null);
            z = zDecodeBooleanElement5;
            z2 = zDecodeBooleanElement4;
            date = date3;
            store = store2;
            str = strDecodeStringElement2;
            z5 = zDecodeBooleanElement2;
            str3 = strDecodeStringElement3;
            z3 = zDecodeBooleanElement3;
        } else {
            int i3 = 11;
            LatestPeriodType latestPeriodType2 = null;
            String str4 = null;
            Store store3 = null;
            String strDecodeStringElement4 = null;
            boolean z6 = true;
            int i4 = 0;
            boolean zDecodeBooleanElement6 = false;
            boolean zDecodeBooleanElement7 = false;
            boolean zDecodeBooleanElement8 = false;
            boolean zDecodeBooleanElement9 = false;
            boolean zDecodeBooleanElement10 = false;
            Date date4 = null;
            Date date5 = null;
            while (z6) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z6 = false;
                        i3 = 11;
                        break;
                    case 0:
                        i4 |= 1;
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
                        i3 = 11;
                        i2 = 7;
                        break;
                    case 1:
                        strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
                        i4 |= 2;
                        i3 = 11;
                        i2 = 7;
                        break;
                    case 2:
                        date5 = (Date) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, DateSerializer.INSTANCE, date5);
                        i4 |= 4;
                        i3 = 11;
                        i2 = 7;
                        break;
                    case 3:
                        zDecodeBooleanElement9 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 3);
                        i4 |= 8;
                        i3 = 11;
                        break;
                    case 4:
                        zDecodeBooleanElement10 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 4);
                        i4 |= 16;
                        i3 = 11;
                        break;
                    case 5:
                        zDecodeBooleanElement8 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 5);
                        i4 |= 32;
                        i3 = 11;
                        break;
                    case 6:
                        zDecodeBooleanElement7 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 6);
                        i4 |= 64;
                        break;
                    case 7:
                        zDecodeBooleanElement6 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, i2);
                        i4 |= 128;
                        break;
                    case 8:
                        date4 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, DateSerializer.INSTANCE, date4);
                        i4 |= 256;
                        break;
                    case 9:
                        store3 = (Store) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 9, kSerializerArr[9], store3);
                        i4 |= 512;
                        break;
                    case 10:
                        latestPeriodType2 = (LatestPeriodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, kSerializerArr[10], latestPeriodType2);
                        i4 |= 1024;
                        break;
                    case 11:
                        str4 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i3, StringSerializer.INSTANCE, str4);
                        i4 |= 2048;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            str = strDecodeStringElement;
            latestPeriodType = latestPeriodType2;
            str2 = str4;
            store = store3;
            date = date4;
            date2 = date5;
            str3 = strDecodeStringElement4;
            z = zDecodeBooleanElement6;
            z2 = zDecodeBooleanElement7;
            z3 = zDecodeBooleanElement8;
            z4 = zDecodeBooleanElement9;
            z5 = zDecodeBooleanElement10;
            i = i4;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new SubscriptionTransaction(i, str, str3, date2, z4, z5, z3, z2, z, date, store, latestPeriodType, str2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, SubscriptionTransaction value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        SubscriptionTransaction.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
