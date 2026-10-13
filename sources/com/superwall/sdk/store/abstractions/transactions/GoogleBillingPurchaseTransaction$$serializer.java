package com.superwall.sdk.store.abstractions.transactions;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.serialization.DateSerializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: GoogleBillingPurchaseTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/store/abstractions/transactions/GoogleBillingPurchaseTransaction;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class GoogleBillingPurchaseTransaction$$serializer implements GeneratedSerializer<GoogleBillingPurchaseTransaction> {
    public static final GoogleBillingPurchaseTransaction$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private GoogleBillingPurchaseTransaction$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        GoogleBillingPurchaseTransaction$$serializer googleBillingPurchaseTransaction$$serializer = new GoogleBillingPurchaseTransaction$$serializer();
        INSTANCE = googleBillingPurchaseTransaction$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.store.abstractions.transactions.GoogleBillingPurchaseTransaction", googleBillingPurchaseTransaction$$serializer, 16);
        pluginGeneratedSerialDescriptor.addElement("transaction_date", false);
        pluginGeneratedSerialDescriptor.addElement("original_transaction_identifier", false);
        pluginGeneratedSerialDescriptor.addElement("state", false);
        pluginGeneratedSerialDescriptor.addElement("store_transaction_id", false);
        pluginGeneratedSerialDescriptor.addElement("original_transaction_date", false);
        pluginGeneratedSerialDescriptor.addElement("web_order_line_item_id", false);
        pluginGeneratedSerialDescriptor.addElement("app_bundle_id", false);
        pluginGeneratedSerialDescriptor.addElement("subscription_group_id", false);
        pluginGeneratedSerialDescriptor.addElement("is_upgraded", false);
        pluginGeneratedSerialDescriptor.addElement("expiration_date", false);
        pluginGeneratedSerialDescriptor.addElement("offer_id", false);
        pluginGeneratedSerialDescriptor.addElement("revocation_date", false);
        pluginGeneratedSerialDescriptor.addElement("app_account_token", false);
        pluginGeneratedSerialDescriptor.addElement("purchase_token", false);
        pluginGeneratedSerialDescriptor.addElement("payment", false);
        pluginGeneratedSerialDescriptor.addElement("signature", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), StoreTransactionStateSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), StringSerializer.INSTANCE, StorePayment$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final GoogleBillingPurchaseTransaction deserialize(Decoder decoder) {
        String str;
        Date date;
        String str2;
        String str3;
        StorePayment storePayment;
        String str4;
        Date date2;
        int i;
        Boolean bool;
        Date date3;
        StoreTransactionState storeTransactionState;
        String str5;
        Date date4;
        String str6;
        String str7;
        String str8;
        String str9;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            Date date5 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 0, DateSerializer.INSTANCE, null);
            String str10 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, null);
            StoreTransactionState storeTransactionState2 = (StoreTransactionState) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, StoreTransactionStateSerializer.INSTANCE, null);
            String str11 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, null);
            Date date6 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, DateSerializer.INSTANCE, null);
            String str12 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, null);
            String str13 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, null);
            String str14 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, null);
            Boolean bool2 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, BooleanSerializer.INSTANCE, null);
            Date date7 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 9, DateSerializer.INSTANCE, null);
            String str15 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, null);
            Date date8 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 11, DateSerializer.INSTANCE, null);
            String str16 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 12, StringSerializer.INSTANCE, null);
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 13);
            str5 = str13;
            str8 = str11;
            bool = bool2;
            str6 = str12;
            date4 = date6;
            storePayment = (StorePayment) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 14, StorePayment$$serializer.INSTANCE, null);
            str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 15, StringSerializer.INSTANCE, null);
            str9 = strDecodeStringElement;
            str = str16;
            str2 = str15;
            str7 = str14;
            storeTransactionState = storeTransactionState2;
            date2 = date5;
            date = date8;
            date3 = date7;
            str4 = str10;
            i = 65535;
        } else {
            boolean z = true;
            String str17 = null;
            StoreTransactionState storeTransactionState3 = null;
            String str18 = null;
            Date date9 = null;
            String str19 = null;
            Boolean bool3 = null;
            String str20 = null;
            String str21 = null;
            Date date10 = null;
            Date date11 = null;
            String str22 = null;
            Date date12 = null;
            String strDecodeStringElement2 = null;
            StorePayment storePayment2 = null;
            String str23 = null;
            int i2 = 0;
            String str24 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        storeTransactionState3 = storeTransactionState3;
                        str23 = str23;
                        str17 = str17;
                        break;
                    case 0:
                        date12 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 0, DateSerializer.INSTANCE, date12);
                        i2 |= 1;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        str23 = str23;
                        str17 = str17;
                        break;
                    case 1:
                        String str25 = str24;
                        i2 |= 2;
                        str17 = str17;
                        storeTransactionState3 = storeTransactionState3;
                        str23 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str23);
                        str24 = str25;
                        break;
                    case 2:
                        storeTransactionState3 = (StoreTransactionState) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, StoreTransactionStateSerializer.INSTANCE, storeTransactionState3);
                        i2 |= 4;
                        str24 = str24;
                        str17 = str17;
                        break;
                    case 3:
                        str17 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str17);
                        i2 |= 8;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 4:
                        date10 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, DateSerializer.INSTANCE, date10);
                        i2 |= 16;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 5:
                        str22 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str22);
                        i2 |= 32;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 6:
                        str21 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str21);
                        i2 |= 64;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 7:
                        str20 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str20);
                        i2 |= 128;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 8:
                        bool3 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, BooleanSerializer.INSTANCE, bool3);
                        i2 |= 256;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 9:
                        date11 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 9, DateSerializer.INSTANCE, date11);
                        i2 |= 512;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 10:
                        str19 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, str19);
                        i2 |= 1024;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 11:
                        date9 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 11, DateSerializer.INSTANCE, date9);
                        i2 |= 2048;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 12:
                        storeTransactionState3 = storeTransactionState3;
                        str18 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 12, StringSerializer.INSTANCE, str18);
                        i2 |= 4096;
                        str24 = str24;
                        storePayment2 = storePayment2;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 13:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 13);
                        i2 |= 8192;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 14:
                        storePayment2 = (StorePayment) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 14, StorePayment$$serializer.INSTANCE, storePayment2);
                        i2 |= 16384;
                        str24 = str24;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    case 15:
                        str24 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 15, StringSerializer.INSTANCE, str24);
                        i2 |= 32768;
                        storeTransactionState3 = storeTransactionState3;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            String str26 = str17;
            String str27 = str23;
            StoreTransactionState storeTransactionState4 = storeTransactionState3;
            Date date13 = date12;
            str = str18;
            date = date9;
            str2 = str19;
            str3 = str24;
            storePayment = storePayment2;
            str4 = str27;
            date2 = date13;
            i = i2;
            bool = bool3;
            date3 = date11;
            storeTransactionState = storeTransactionState4;
            str5 = str21;
            date4 = date10;
            str6 = str22;
            str7 = str20;
            str8 = str26;
            str9 = strDecodeStringElement2;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new GoogleBillingPurchaseTransaction(i, date2, str4, storeTransactionState, str8, date4, str6, str5, str7, bool, date3, str2, date, str, str9, storePayment, str3, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, GoogleBillingPurchaseTransaction value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        GoogleBillingPurchaseTransaction.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
