package com.superwall.sdk.store.abstractions.product.receipt;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.storage.DateSerializer;
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

/* JADX INFO: compiled from: StoredEntitlementTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class StoredEntitlementTransaction$$serializer implements GeneratedSerializer<StoredEntitlementTransaction> {
    public static final StoredEntitlementTransaction$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private StoredEntitlementTransaction$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        StoredEntitlementTransaction$$serializer storedEntitlementTransaction$$serializer = new StoredEntitlementTransaction$$serializer();
        INSTANCE = storedEntitlementTransaction$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.store.abstractions.product.receipt.StoredEntitlementTransaction", storedEntitlementTransaction$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("product_id", false);
        pluginGeneratedSerialDescriptor.addElement("transaction_id", false);
        pluginGeneratedSerialDescriptor.addElement("purchase_date", false);
        pluginGeneratedSerialDescriptor.addElement("original_purchase_date", false);
        pluginGeneratedSerialDescriptor.addElement("expiration_date", false);
        pluginGeneratedSerialDescriptor.addElement("is_revoked", false);
        pluginGeneratedSerialDescriptor.addElement("product_type", false);
        pluginGeneratedSerialDescriptor.addElement("will_renew", false);
        pluginGeneratedSerialDescriptor.addElement("renewed_at", false);
        pluginGeneratedSerialDescriptor.addElement("is_in_grace_period", false);
        pluginGeneratedSerialDescriptor.addElement("is_in_billing_retry_period", false);
        pluginGeneratedSerialDescriptor.addElement("is_active", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, DateSerializer.INSTANCE, DateSerializer.INSTANCE, BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BooleanSerializer.INSTANCE, StoredEntitlementTransaction.$childSerializers[6], BooleanSerializer.INSTANCE, BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final StoredEntitlementTransaction deserialize(Decoder decoder) {
        boolean zDecodeBooleanElement;
        Date date;
        Date date2;
        Date date3;
        String str;
        boolean zDecodeBooleanElement2;
        boolean z;
        boolean zDecodeBooleanElement3;
        String str2;
        int i;
        Date date4;
        boolean z2;
        EntitlementTransactionType entitlementTransactionType;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = StoredEntitlementTransaction.$childSerializers;
        int i3 = 10;
        int i4 = 6;
        String strDecodeStringElement = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
            Date date5 = (Date) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, DateSerializer.INSTANCE, null);
            Date date6 = (Date) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, DateSerializer.INSTANCE, null);
            Date date7 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, DateSerializer.INSTANCE, null);
            boolean zDecodeBooleanElement4 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 5);
            EntitlementTransactionType entitlementTransactionType2 = (EntitlementTransactionType) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 6, kSerializerArr[6], null);
            boolean zDecodeBooleanElement5 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 7);
            Date date8 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, DateSerializer.INSTANCE, null);
            boolean zDecodeBooleanElement6 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 9);
            entitlementTransactionType = entitlementTransactionType2;
            str2 = strDecodeStringElement2;
            date4 = date8;
            zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 10);
            z2 = zDecodeBooleanElement6;
            zDecodeBooleanElement = zDecodeBooleanElement5;
            z = zDecodeBooleanElement4;
            date2 = date6;
            zDecodeBooleanElement3 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 11);
            date = date7;
            date3 = date5;
            i = 4095;
            str = strDecodeStringElement3;
        } else {
            int i5 = 11;
            EntitlementTransactionType entitlementTransactionType3 = null;
            Date date9 = null;
            Date date10 = null;
            String strDecodeStringElement4 = null;
            boolean z3 = true;
            int i6 = 0;
            boolean zDecodeBooleanElement7 = false;
            boolean zDecodeBooleanElement8 = false;
            zDecodeBooleanElement = false;
            boolean zDecodeBooleanElement9 = false;
            boolean zDecodeBooleanElement10 = false;
            Date date11 = null;
            Date date12 = null;
            while (z3) {
                int i7 = i4;
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z3 = false;
                        i5 = 11;
                        i4 = 6;
                        break;
                    case 0:
                        i6 |= 1;
                        strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
                        i5 = 11;
                        i3 = 10;
                        i4 = 6;
                        break;
                    case 1:
                        strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
                        i6 |= 2;
                        i5 = 11;
                        i3 = 10;
                        i4 = 6;
                        break;
                    case 2:
                        date12 = (Date) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 2, DateSerializer.INSTANCE, date12);
                        i6 |= 4;
                        i5 = 11;
                        i3 = 10;
                        i4 = 6;
                        break;
                    case 3:
                        date11 = (Date) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, DateSerializer.INSTANCE, date11);
                        i6 |= 8;
                        i5 = 11;
                        i3 = 10;
                        i4 = 6;
                        break;
                    case 4:
                        date10 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, DateSerializer.INSTANCE, date10);
                        i6 |= 16;
                        i5 = 11;
                        i3 = 10;
                        i4 = 6;
                        break;
                    case 5:
                        i2 = i7;
                        zDecodeBooleanElement9 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 5);
                        i6 |= 32;
                        i4 = i2;
                        i5 = 11;
                        break;
                    case 6:
                        i2 = i7;
                        entitlementTransactionType3 = (EntitlementTransactionType) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i2, kSerializerArr[i7], entitlementTransactionType3);
                        i6 |= 64;
                        i4 = i2;
                        i5 = 11;
                        break;
                    case 7:
                        zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 7);
                        i6 |= 128;
                        i4 = i7;
                        break;
                    case 8:
                        date9 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, DateSerializer.INSTANCE, date9);
                        i6 |= 256;
                        i4 = i7;
                        break;
                    case 9:
                        zDecodeBooleanElement8 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 9);
                        i6 |= 512;
                        i4 = i7;
                        break;
                    case 10:
                        zDecodeBooleanElement7 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, i3);
                        i6 |= 1024;
                        i4 = i7;
                        break;
                    case 11:
                        zDecodeBooleanElement10 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, i5);
                        i6 |= 2048;
                        i4 = i7;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            date = date10;
            date2 = date11;
            date3 = date12;
            str = strDecodeStringElement4;
            zDecodeBooleanElement2 = zDecodeBooleanElement7;
            z = zDecodeBooleanElement9;
            zDecodeBooleanElement3 = zDecodeBooleanElement10;
            str2 = strDecodeStringElement;
            i = i6;
            date4 = date9;
            z2 = zDecodeBooleanElement8;
            entitlementTransactionType = entitlementTransactionType3;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new StoredEntitlementTransaction(i, str2, str, date3, date2, date, z, entitlementTransactionType, zDecodeBooleanElement, date4, z2, zDecodeBooleanElement2, zDecodeBooleanElement3, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, StoredEntitlementTransaction value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        StoredEntitlementTransaction.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
