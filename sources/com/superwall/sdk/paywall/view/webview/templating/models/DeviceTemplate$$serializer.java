package com.superwall.sdk.paywall.view.webview.templating.models;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.common.C;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.identity.Keys;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: compiled from: DeviceTemplate.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class DeviceTemplate$$serializer implements GeneratedSerializer<DeviceTemplate> {
    public static final DeviceTemplate$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private DeviceTemplate$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        DeviceTemplate$$serializer deviceTemplate$$serializer = new DeviceTemplate$$serializer();
        INSTANCE = deviceTemplate$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.paywall.view.webview.templating.models.DeviceTemplate", deviceTemplate$$serializer, 54);
        pluginGeneratedSerialDescriptor.addElement("publicApiKey", false);
        pluginGeneratedSerialDescriptor.addElement("platform", false);
        pluginGeneratedSerialDescriptor.addElement(Keys.APP_USER_ID, false);
        pluginGeneratedSerialDescriptor.addElement("aliases", false);
        pluginGeneratedSerialDescriptor.addElement("vendorId", false);
        pluginGeneratedSerialDescriptor.addElement("deviceId", false);
        pluginGeneratedSerialDescriptor.addElement("appVersion", false);
        pluginGeneratedSerialDescriptor.addElement("appVersionPadded", false);
        pluginGeneratedSerialDescriptor.addElement("osVersion", false);
        pluginGeneratedSerialDescriptor.addElement("deviceModel", false);
        pluginGeneratedSerialDescriptor.addElement("deviceLocale", false);
        pluginGeneratedSerialDescriptor.addElement("preferredLocale", false);
        pluginGeneratedSerialDescriptor.addElement("deviceLanguageCode", false);
        pluginGeneratedSerialDescriptor.addElement("preferredLanguageCode", false);
        pluginGeneratedSerialDescriptor.addElement("regionCode", false);
        pluginGeneratedSerialDescriptor.addElement("preferredRegionCode", false);
        pluginGeneratedSerialDescriptor.addElement("deviceCurrencyCode", false);
        pluginGeneratedSerialDescriptor.addElement("deviceCurrencySymbol", false);
        pluginGeneratedSerialDescriptor.addElement("timezoneOffset", false);
        pluginGeneratedSerialDescriptor.addElement("radioType", false);
        pluginGeneratedSerialDescriptor.addElement("interfaceStyle", false);
        pluginGeneratedSerialDescriptor.addElement("isLowPowerModeEnabled", false);
        pluginGeneratedSerialDescriptor.addElement("bundleId", false);
        pluginGeneratedSerialDescriptor.addElement("appInstallDate", false);
        pluginGeneratedSerialDescriptor.addElement("isMac", false);
        pluginGeneratedSerialDescriptor.addElement("daysSinceInstall", false);
        pluginGeneratedSerialDescriptor.addElement("minutesSinceInstall", false);
        pluginGeneratedSerialDescriptor.addElement("daysSinceLastPaywallView", false);
        pluginGeneratedSerialDescriptor.addElement("minutesSinceLastPaywallView", false);
        pluginGeneratedSerialDescriptor.addElement("totalPaywallViews", false);
        pluginGeneratedSerialDescriptor.addElement("utcDate", false);
        pluginGeneratedSerialDescriptor.addElement("localDate", false);
        pluginGeneratedSerialDescriptor.addElement("utcTime", false);
        pluginGeneratedSerialDescriptor.addElement("localTime", false);
        pluginGeneratedSerialDescriptor.addElement("utcDateTime", false);
        pluginGeneratedSerialDescriptor.addElement("localDateTime", false);
        pluginGeneratedSerialDescriptor.addElement("isSandbox", false);
        pluginGeneratedSerialDescriptor.addElement("activeEntitlements", false);
        pluginGeneratedSerialDescriptor.addElement("activeEntitlementsObject", false);
        pluginGeneratedSerialDescriptor.addElement("subscriptionStatus", false);
        pluginGeneratedSerialDescriptor.addElement("activeProducts", false);
        pluginGeneratedSerialDescriptor.addElement("isFirstAppOpen", false);
        pluginGeneratedSerialDescriptor.addElement("sdkVersion", false);
        pluginGeneratedSerialDescriptor.addElement("sdkVersionPadded", false);
        pluginGeneratedSerialDescriptor.addElement("appBuildString", false);
        pluginGeneratedSerialDescriptor.addElement("appBuildStringNumber", false);
        pluginGeneratedSerialDescriptor.addElement("interfaceStyleMode", false);
        pluginGeneratedSerialDescriptor.addElement("capabilities", false);
        pluginGeneratedSerialDescriptor.addElement("capabilities_config", false);
        pluginGeneratedSerialDescriptor.addElement("platform_wrapper", false);
        pluginGeneratedSerialDescriptor.addElement("platform_wrapper_version", false);
        pluginGeneratedSerialDescriptor.addElement("deviceTier", false);
        pluginGeneratedSerialDescriptor.addElement("reviewRequestCount", false);
        pluginGeneratedSerialDescriptor.addElement("kotlinVersion", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = DeviceTemplate.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, kSerializerArr[3], StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, IntSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, BooleanSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, BooleanSerializer.INSTANCE, IntSerializer.INSTANCE, IntSerializer.INSTANCE, BuiltinSerializersKt.getNullable(IntSerializer.INSTANCE), BuiltinSerializersKt.getNullable(IntSerializer.INSTANCE), IntSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, kSerializerArr[37], kSerializerArr[38], BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), kSerializerArr[40], BooleanSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(IntSerializer.INSTANCE), StringSerializer.INSTANCE, kSerializerArr[47], JsonElementSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, IntSerializer.INSTANCE, StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final DeviceTemplate deserialize(Decoder decoder) {
        List list;
        String str;
        String str2;
        boolean z;
        String str3;
        int i;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String strDecodeStringElement;
        int i2;
        boolean z2;
        Integer num;
        Integer num2;
        JsonElement jsonElement;
        Integer num3;
        List list2;
        List list3;
        int i3;
        String str25;
        String str26;
        String str27;
        boolean z3;
        List list4;
        int i4;
        String str28;
        int iDecodeIntElement;
        String str29;
        String str30;
        String str31;
        String str32;
        int i5;
        List list5;
        String strDecodeStringElement2;
        int i6;
        String str33;
        String str34;
        String str35;
        int i7;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = DeviceTemplate.$childSerializers;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            String strDecodeStringElement3 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
            String strDecodeStringElement4 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
            String strDecodeStringElement5 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 2);
            List list6 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], null);
            strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 4);
            String strDecodeStringElement6 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 5);
            String strDecodeStringElement7 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 6);
            String strDecodeStringElement8 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 7);
            String strDecodeStringElement9 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 8);
            String strDecodeStringElement10 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 9);
            String strDecodeStringElement11 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 10);
            String strDecodeStringElement12 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 11);
            String strDecodeStringElement13 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 12);
            String strDecodeStringElement14 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 13);
            String strDecodeStringElement15 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 14);
            String strDecodeStringElement16 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 15);
            String strDecodeStringElement17 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 16);
            String strDecodeStringElement18 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 17);
            int iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 18);
            String strDecodeStringElement19 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 19);
            String strDecodeStringElement20 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 20);
            boolean zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 21);
            String strDecodeStringElement21 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 22);
            String strDecodeStringElement22 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 23);
            boolean zDecodeBooleanElement2 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 24);
            int iDecodeIntElement3 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 25);
            iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 26);
            Integer num4 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 27, IntSerializer.INSTANCE, null);
            Integer num5 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 28, IntSerializer.INSTANCE, null);
            int iDecodeIntElement4 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 29);
            String strDecodeStringElement23 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 30);
            String strDecodeStringElement24 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 31);
            String strDecodeStringElement25 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 32);
            String strDecodeStringElement26 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 33);
            String strDecodeStringElement27 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 34);
            String strDecodeStringElement28 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 35);
            String strDecodeStringElement29 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 36);
            List list7 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 37, kSerializerArr[37], null);
            List list8 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 38, kSerializerArr[38], null);
            String str36 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 39, StringSerializer.INSTANCE, null);
            List list9 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 40, kSerializerArr[40], null);
            boolean zDecodeBooleanElement3 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 41);
            String strDecodeStringElement30 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 42);
            String strDecodeStringElement31 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 43);
            String strDecodeStringElement32 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 44);
            Integer num6 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 45, IntSerializer.INSTANCE, null);
            String strDecodeStringElement33 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 46);
            List list10 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 47, kSerializerArr[47], null);
            JsonElement jsonElement2 = (JsonElement) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 48, JsonElementSerializer.INSTANCE, null);
            String strDecodeStringElement34 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 49);
            String strDecodeStringElement35 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 50);
            String strDecodeStringElement36 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 51);
            int iDecodeIntElement5 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 52);
            str6 = strDecodeStringElement9;
            list4 = list6;
            z = zDecodeBooleanElement3;
            str28 = str36;
            list3 = list7;
            str34 = strDecodeStringElement29;
            str19 = strDecodeStringElement28;
            str17 = strDecodeStringElement26;
            str15 = strDecodeStringElement24;
            str14 = strDecodeStringElement23;
            list2 = list10;
            strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 53);
            str23 = strDecodeStringElement34;
            str24 = strDecodeStringElement35;
            jsonElement = jsonElement2;
            str35 = strDecodeStringElement36;
            i = iDecodeIntElement5;
            str13 = strDecodeStringElement17;
            str20 = strDecodeStringElement31;
            str21 = strDecodeStringElement32;
            str8 = strDecodeStringElement11;
            list = list9;
            list5 = list8;
            i5 = -1;
            str5 = strDecodeStringElement8;
            str4 = strDecodeStringElement7;
            str22 = strDecodeStringElement33;
            str25 = strDecodeStringElement3;
            str = strDecodeStringElement4;
            str33 = strDecodeStringElement16;
            i6 = iDecodeIntElement3;
            str11 = strDecodeStringElement14;
            z2 = zDecodeBooleanElement2;
            str10 = strDecodeStringElement13;
            str31 = strDecodeStringElement22;
            str2 = strDecodeStringElement21;
            z3 = zDecodeBooleanElement;
            str3 = strDecodeStringElement20;
            str27 = strDecodeStringElement19;
            i2 = iDecodeIntElement2;
            str30 = strDecodeStringElement18;
            str12 = strDecodeStringElement15;
            str9 = strDecodeStringElement12;
            str26 = strDecodeStringElement6;
            str29 = strDecodeStringElement5;
            num2 = num4;
            num = num5;
            i3 = iDecodeIntElement4;
            str18 = strDecodeStringElement27;
            str16 = strDecodeStringElement25;
            str7 = strDecodeStringElement10;
            i4 = 4194303;
            num3 = num6;
            str32 = strDecodeStringElement30;
        } else {
            int i8 = 0;
            boolean zDecodeBooleanElement4 = false;
            int i9 = 0;
            int iDecodeIntElement6 = 0;
            int iDecodeIntElement7 = 0;
            int iDecodeIntElement8 = 0;
            int iDecodeIntElement9 = 0;
            boolean zDecodeBooleanElement5 = false;
            int i10 = 0;
            boolean z4 = true;
            Integer num7 = null;
            Integer num8 = null;
            JsonElement jsonElement3 = null;
            Integer num9 = null;
            List list11 = null;
            String str37 = null;
            List list12 = null;
            List list13 = null;
            String strDecodeStringElement37 = null;
            String strDecodeStringElement38 = null;
            String strDecodeStringElement39 = null;
            String str38 = null;
            String str39 = null;
            String str40 = null;
            String str41 = null;
            String str42 = null;
            String str43 = null;
            String str44 = null;
            String str45 = null;
            String str46 = null;
            String str47 = null;
            String str48 = null;
            String str49 = null;
            String str50 = null;
            String str51 = null;
            String str52 = null;
            String str53 = null;
            String str54 = null;
            String str55 = null;
            String str56 = null;
            String str57 = null;
            String str58 = null;
            String str59 = null;
            String str60 = null;
            String str61 = null;
            String str62 = null;
            String str63 = null;
            String str64 = null;
            String str65 = null;
            String str66 = null;
            String str67 = null;
            String str68 = null;
            String str69 = null;
            String str70 = null;
            int i11 = 3;
            boolean z5 = false;
            List list14 = null;
            List list15 = null;
            while (true) {
                boolean z6 = z5;
                if (z4) {
                    int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                    switch (iDecodeElementIndex) {
                        case -1:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            Unit unit = Unit.INSTANCE;
                            z4 = false;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 0:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            strDecodeStringElement37 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 0);
                            i8 |= 1;
                            Unit unit2 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 1:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            strDecodeStringElement38 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 1);
                            i8 |= 2;
                            Unit unit3 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 2:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            strDecodeStringElement39 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 2);
                            i8 |= 4;
                            Unit unit4 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 3:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            list14 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i11, kSerializerArr[i11], list14);
                            i8 |= 8;
                            Unit unit5 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 4:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement40 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 4);
                            i8 |= 16;
                            Unit unit6 = Unit.INSTANCE;
                            str38 = strDecodeStringElement40;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 5:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement41 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 5);
                            i8 |= 32;
                            Unit unit7 = Unit.INSTANCE;
                            str39 = strDecodeStringElement41;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 6:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement42 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 6);
                            i8 |= 64;
                            Unit unit8 = Unit.INSTANCE;
                            str40 = strDecodeStringElement42;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 7:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement43 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 7);
                            i8 |= 128;
                            Unit unit9 = Unit.INSTANCE;
                            str41 = strDecodeStringElement43;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 8:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement44 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 8);
                            i8 |= 256;
                            Unit unit10 = Unit.INSTANCE;
                            str42 = strDecodeStringElement44;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 9:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement45 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 9);
                            i8 |= 512;
                            Unit unit11 = Unit.INSTANCE;
                            str43 = strDecodeStringElement45;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 10:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement46 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 10);
                            i8 |= 1024;
                            Unit unit12 = Unit.INSTANCE;
                            str44 = strDecodeStringElement46;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 11:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement47 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 11);
                            i8 |= 2048;
                            Unit unit13 = Unit.INSTANCE;
                            str45 = strDecodeStringElement47;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 12:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement48 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 12);
                            i8 |= 4096;
                            Unit unit14 = Unit.INSTANCE;
                            str46 = strDecodeStringElement48;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 13:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement49 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 13);
                            i8 |= 8192;
                            Unit unit15 = Unit.INSTANCE;
                            str47 = strDecodeStringElement49;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 14:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement50 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 14);
                            i8 |= 16384;
                            Unit unit16 = Unit.INSTANCE;
                            str48 = strDecodeStringElement50;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 15:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement51 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 15);
                            i8 |= 32768;
                            Unit unit17 = Unit.INSTANCE;
                            str49 = strDecodeStringElement51;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 16:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement52 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 16);
                            i8 |= 65536;
                            Unit unit18 = Unit.INSTANCE;
                            str50 = strDecodeStringElement52;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 17:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement53 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 17);
                            i8 |= 131072;
                            Unit unit19 = Unit.INSTANCE;
                            str51 = strDecodeStringElement53;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 18:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            int iDecodeIntElement10 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 18);
                            i8 |= 262144;
                            Unit unit20 = Unit.INSTANCE;
                            i10 = iDecodeIntElement10;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 19:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement54 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 19);
                            i8 |= 524288;
                            Unit unit21 = Unit.INSTANCE;
                            str52 = strDecodeStringElement54;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 20:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement55 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 20);
                            i8 |= 1048576;
                            Unit unit22 = Unit.INSTANCE;
                            str53 = strDecodeStringElement55;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 21:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            boolean zDecodeBooleanElement6 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 21);
                            i8 |= 2097152;
                            Unit unit23 = Unit.INSTANCE;
                            z6 = zDecodeBooleanElement6;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 22:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement56 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 22);
                            i8 |= 4194304;
                            Unit unit24 = Unit.INSTANCE;
                            str54 = strDecodeStringElement56;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 23:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement57 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 23);
                            i8 |= 8388608;
                            Unit unit25 = Unit.INSTANCE;
                            str55 = strDecodeStringElement57;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 24:
                            zDecodeBooleanElement4 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 24);
                            i8 |= 16777216;
                            Unit unit26 = Unit.INSTANCE;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 25:
                            iDecodeIntElement6 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 25);
                            i7 = 33554432;
                            i8 |= i7;
                            Unit unit27 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 26:
                            iDecodeIntElement7 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 26);
                            i7 = 67108864;
                            i8 |= i7;
                            Unit unit28 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 27:
                            num8 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 27, IntSerializer.INSTANCE, num8);
                            i7 = C.BUFFER_FLAG_FIRST_SAMPLE;
                            i8 |= i7;
                            Unit unit29 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 28:
                            num7 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 28, IntSerializer.INSTANCE, num7);
                            i7 = 268435456;
                            i8 |= i7;
                            Unit unit210 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 29:
                            iDecodeIntElement9 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 29);
                            i7 = C.BUFFER_FLAG_LAST_SAMPLE;
                            i8 |= i7;
                            Unit unit211 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 30:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement58 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 30);
                            i8 |= 1073741824;
                            Unit unit30 = Unit.INSTANCE;
                            str56 = strDecodeStringElement58;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 31:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement59 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 31);
                            i8 |= Integer.MIN_VALUE;
                            Unit unit31 = Unit.INSTANCE;
                            str57 = strDecodeStringElement59;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 32:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement60 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 32);
                            i9 |= 1;
                            Unit unit32 = Unit.INSTANCE;
                            str58 = strDecodeStringElement60;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 33:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement61 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 33);
                            i9 |= 2;
                            Unit unit33 = Unit.INSTANCE;
                            str59 = strDecodeStringElement61;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 34:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement62 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 34);
                            i9 |= 4;
                            Unit unit34 = Unit.INSTANCE;
                            str60 = strDecodeStringElement62;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 35:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement63 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 35);
                            i9 |= 8;
                            Unit unit35 = Unit.INSTANCE;
                            str61 = strDecodeStringElement63;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 36:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement64 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 36);
                            i9 |= 16;
                            Unit unit36 = Unit.INSTANCE;
                            str62 = strDecodeStringElement64;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 37:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            List list16 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 37, kSerializerArr[37], list15);
                            i9 |= 32;
                            Unit unit37 = Unit.INSTANCE;
                            list15 = list16;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 38:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            List list17 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 38, kSerializerArr[38], list13);
                            i9 |= 64;
                            Unit unit38 = Unit.INSTANCE;
                            list13 = list17;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 39:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String str71 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 39, StringSerializer.INSTANCE, str37);
                            i9 |= 128;
                            Unit unit39 = Unit.INSTANCE;
                            str37 = str71;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 40:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            List list18 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 40, kSerializerArr[40], list11);
                            i9 |= 256;
                            Unit unit40 = Unit.INSTANCE;
                            list11 = list18;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 41:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            zDecodeBooleanElement5 = compositeDecoderBeginStructure.decodeBooleanElement(serialDescriptor, 41);
                            i9 |= 512;
                            Unit unit212 = Unit.INSTANCE;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 42:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement65 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 42);
                            i9 |= 1024;
                            Unit unit41 = Unit.INSTANCE;
                            str63 = strDecodeStringElement65;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 43:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement66 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 43);
                            i9 |= 2048;
                            Unit unit42 = Unit.INSTANCE;
                            str64 = strDecodeStringElement66;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 44:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement67 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 44);
                            i9 |= 4096;
                            Unit unit43 = Unit.INSTANCE;
                            str65 = strDecodeStringElement67;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 45:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            Integer num10 = (Integer) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 45, IntSerializer.INSTANCE, num9);
                            i9 |= 8192;
                            Unit unit44 = Unit.INSTANCE;
                            num9 = num10;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 46:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            String strDecodeStringElement68 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 46);
                            i9 |= 16384;
                            Unit unit45 = Unit.INSTANCE;
                            str66 = strDecodeStringElement68;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 47:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            List list19 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 47, kSerializerArr[47], list12);
                            i9 |= 32768;
                            Unit unit46 = Unit.INSTANCE;
                            list12 = list19;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 48:
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            JsonElement jsonElement4 = (JsonElement) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 48, JsonElementSerializer.INSTANCE, jsonElement3);
                            i9 |= 65536;
                            Unit unit47 = Unit.INSTANCE;
                            jsonElement3 = jsonElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 49:
                            String strDecodeStringElement69 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 49);
                            i9 |= 131072;
                            Unit unit48 = Unit.INSTANCE;
                            str67 = strDecodeStringElement69;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 50:
                            String strDecodeStringElement70 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 50);
                            i9 |= 262144;
                            Unit unit49 = Unit.INSTANCE;
                            str68 = strDecodeStringElement70;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                            String strDecodeStringElement71 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 51);
                            i9 |= 524288;
                            Unit unit50 = Unit.INSTANCE;
                            str69 = strDecodeStringElement71;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case 52:
                            iDecodeIntElement8 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 52);
                            i9 |= 1048576;
                            Unit unit213 = Unit.INSTANCE;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                            String strDecodeStringElement72 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 53);
                            i9 |= 2097152;
                            Unit unit51 = Unit.INSTANCE;
                            str70 = strDecodeStringElement72;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            z5 = z6;
                            zDecodeBooleanElement4 = zDecodeBooleanElement4;
                            i11 = 3;
                            break;
                        default:
                            throw new UnknownFieldException(iDecodeElementIndex);
                    }
                } else {
                    String str72 = str53;
                    list = list11;
                    str = strDecodeStringElement38;
                    str2 = str54;
                    z = zDecodeBooleanElement5;
                    str3 = str72;
                    i = iDecodeIntElement8;
                    str4 = str40;
                    str5 = str41;
                    str6 = str42;
                    str7 = str43;
                    str8 = str44;
                    str9 = str45;
                    str10 = str46;
                    str11 = str47;
                    str12 = str48;
                    str13 = str50;
                    str14 = str56;
                    str15 = str57;
                    str16 = str58;
                    str17 = str59;
                    str18 = str60;
                    str19 = str61;
                    str20 = str64;
                    str21 = str65;
                    str22 = str66;
                    str23 = str67;
                    str24 = str68;
                    strDecodeStringElement = str70;
                    i2 = i10;
                    z2 = zDecodeBooleanElement4;
                    num = num7;
                    num2 = num8;
                    jsonElement = jsonElement3;
                    num3 = num9;
                    list2 = list12;
                    list3 = list15;
                    i3 = iDecodeIntElement9;
                    str25 = strDecodeStringElement37;
                    str26 = str39;
                    str27 = str52;
                    z3 = z6;
                    list4 = list14;
                    i4 = i9;
                    str28 = str37;
                    iDecodeIntElement = iDecodeIntElement7;
                    str29 = strDecodeStringElement39;
                    str30 = str51;
                    str31 = str55;
                    str32 = str63;
                    i5 = i8;
                    list5 = list13;
                    strDecodeStringElement2 = str38;
                    i6 = iDecodeIntElement6;
                    str33 = str49;
                    str34 = str62;
                    str35 = str69;
                }
            }
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new DeviceTemplate(i5, i4, str25, str, str29, list4, strDecodeStringElement2, str26, str4, str5, str6, str7, str8, str9, str10, str11, str12, str33, str13, str30, i2, str27, str3, z3, str2, str31, z2, i6, iDecodeIntElement, num2, num, i3, str14, str15, str16, str17, str18, str19, str34, list3, list5, str28, list, z, str32, str20, str21, num3, str22, list2, jsonElement, str23, str24, str35, i, strDecodeStringElement, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, DeviceTemplate value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        DeviceTemplate.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
