package com.superwall.sdk.models.entitlements;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.store.abstractions.product.receipt.LatestPeriodType;
import com.superwall.sdk.store.abstractions.product.receipt.LatestSubscriptionState;
import expo.modules.notifications.service.NotificationsService;
import java.util.Date;
import java.util.Set;
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

/* JADX INFO: compiled from: Entitlement.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/entitlements/Entitlement.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class Entitlement$$serializer implements GeneratedSerializer<Entitlement> {
    public static final Entitlement$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private Entitlement$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Entitlement$$serializer entitlement$$serializer = new Entitlement$$serializer();
        INSTANCE = entitlement$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.entitlements.Entitlement", entitlement$$serializer, 13);
        pluginGeneratedSerialDescriptor.addElement(NotificationsService.IDENTIFIER_KEY, false);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("isActive", true);
        pluginGeneratedSerialDescriptor.addElement("productIds", true);
        pluginGeneratedSerialDescriptor.addElement("latestProductId", true);
        pluginGeneratedSerialDescriptor.addElement("startsAt", true);
        pluginGeneratedSerialDescriptor.addElement("renewedAt", true);
        pluginGeneratedSerialDescriptor.addElement("expiresAt", true);
        pluginGeneratedSerialDescriptor.addElement("isLifetime", true);
        pluginGeneratedSerialDescriptor.addElement("willRenew", true);
        pluginGeneratedSerialDescriptor.addElement("state", true);
        pluginGeneratedSerialDescriptor.addElement("offerType", true);
        pluginGeneratedSerialDescriptor.addElement("store", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = Entitlement.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, kSerializerArr[1], BooleanSerializer.INSTANCE, kSerializerArr[3], BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(DateSerializer.INSTANCE), BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE), BuiltinSerializersKt.getNullable(BooleanSerializer.INSTANCE), BuiltinSerializersKt.getNullable(kSerializerArr[10]), BuiltinSerializersKt.getNullable(kSerializerArr[11]), BuiltinSerializersKt.getNullable(kSerializerArr[12])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Entitlement deserialize(Decoder decoder) {
        int i;
        Boolean bool;
        Boolean bool2;
        Date date;
        LatestSubscriptionState latestSubscriptionState;
        Date date2;
        Store store;
        Date date3;
        Set set;
        LatestPeriodType latestPeriodType;
        String str;
        boolean z;
        Entitlement.Type type;
        String str2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = Entitlement.$childSerializers;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
            Entitlement.Type type2 = (Entitlement.Type) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], null);
            boolean zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 2);
            Set set2 = (Set) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], null);
            String str3 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, null);
            Date date4 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, DateSerializer.INSTANCE, null);
            Date date5 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, DateSerializer.INSTANCE, null);
            Date date6 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 7, DateSerializer.INSTANCE, null);
            Boolean bool3 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, BooleanSerializer.INSTANCE, null);
            Boolean bool4 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 9, BooleanSerializer.INSTANCE, null);
            LatestSubscriptionState latestSubscriptionState2 = (LatestSubscriptionState) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, kSerializerArr[10], null);
            i = 8191;
            latestPeriodType = (LatestPeriodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 11, kSerializerArr[11], null);
            bool = bool4;
            date = date6;
            date2 = date5;
            date3 = date4;
            bool2 = bool3;
            str2 = str3;
            store = (Store) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 12, kSerializerArr[12], null);
            latestSubscriptionState = latestSubscriptionState2;
            set = set2;
            type = type2;
            str = strDecodeStringElement;
            z = zDecodeBooleanElement;
        } else {
            int i2 = 12;
            boolean zDecodeBooleanElement2 = false;
            LatestPeriodType latestPeriodType2 = null;
            Boolean bool5 = null;
            Boolean bool6 = null;
            Date date7 = null;
            LatestSubscriptionState latestSubscriptionState3 = null;
            Date date8 = null;
            String str4 = null;
            String strDecodeStringElement2 = null;
            int i3 = 10;
            int i4 = 3;
            boolean z2 = true;
            i = 0;
            Entitlement.Type type3 = null;
            Store store2 = null;
            Date date9 = null;
            Set set3 = null;
            while (z2) {
                int i5 = i2;
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        z2 = false;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i4 = 3;
                        i3 = 10;
                        break;
                    case 0:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
                        i |= 1;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i4 = 3;
                        i3 = 10;
                        break;
                    case 1:
                        type3 = (Entitlement.Type) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], type3);
                        i |= 2;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i4 = 3;
                        i3 = 10;
                        break;
                    case 2:
                        i |= 4;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 2);
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 3:
                        set3 = (Set) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i4, kSerializerArr[i4], set3);
                        i |= 8;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 4:
                        str4 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str4);
                        i |= 16;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 5:
                        date9 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 5, DateSerializer.INSTANCE, date9);
                        i |= 32;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 6:
                        date8 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 6, DateSerializer.INSTANCE, date8);
                        i |= 64;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 7:
                        date7 = (Date) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 7, DateSerializer.INSTANCE, date7);
                        i |= 128;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 8:
                        bool6 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 8, BooleanSerializer.INSTANCE, bool6);
                        i |= 256;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 9:
                        bool5 = (Boolean) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 9, BooleanSerializer.INSTANCE, bool5);
                        i |= 512;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        i3 = 10;
                        break;
                    case 10:
                        latestSubscriptionState3 = (LatestSubscriptionState) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i3, kSerializerArr[i3], latestSubscriptionState3);
                        i |= 1024;
                        latestPeriodType2 = latestPeriodType2;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        break;
                    case 11:
                        latestPeriodType2 = (LatestPeriodType) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 11, kSerializerArr[11], latestPeriodType2);
                        i |= 2048;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        i2 = 12;
                        break;
                    case 12:
                        store2 = (Store) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i5, kSerializerArr[i5], store2);
                        i |= 4096;
                        i2 = i5;
                        zDecodeBooleanElement2 = zDecodeBooleanElement2;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            bool = bool5;
            bool2 = bool6;
            date = date7;
            latestSubscriptionState = latestSubscriptionState3;
            date2 = date8;
            store = store2;
            date3 = date9;
            set = set3;
            latestPeriodType = latestPeriodType2;
            str = strDecodeStringElement2;
            z = zDecodeBooleanElement2;
            type = type3;
            str2 = str4;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new Entitlement(i, str, type, z, set, str2, date3, date2, date, bool2, bool, latestSubscriptionState, latestPeriodType, store, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, Entitlement value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        Entitlement.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
