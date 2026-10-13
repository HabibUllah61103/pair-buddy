package com.superwall.sdk.models.config;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.models.postback.PostbackRequest;
import com.superwall.sdk.models.postback.PostbackRequest$$serializer;
import java.util.List;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Config.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/superwall/sdk/models/config/Config.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/superwall/sdk/models/config/Config;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
public /* synthetic */ class Config$$serializer implements GeneratedSerializer<Config> {
    public static final Config$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private Config$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Config$$serializer config$$serializer = new Config$$serializer();
        INSTANCE = config$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.config.Config", config$$serializer, 17);
        pluginGeneratedSerialDescriptor.addElement("triggerOptions", false);
        pluginGeneratedSerialDescriptor.addElement("paywallResponses", false);
        pluginGeneratedSerialDescriptor.addElement("logLevel", false);
        pluginGeneratedSerialDescriptor.addElement("postback", false);
        pluginGeneratedSerialDescriptor.addElement("appSessionTimeoutMs", false);
        pluginGeneratedSerialDescriptor.addElement("toggles", false);
        pluginGeneratedSerialDescriptor.addElement("products", false);
        pluginGeneratedSerialDescriptor.addElement("products_v3", true);
        pluginGeneratedSerialDescriptor.addElement("disablePreload", false);
        pluginGeneratedSerialDescriptor.addElement("localization", false);
        pluginGeneratedSerialDescriptor.addElement("requestId", true);
        pluginGeneratedSerialDescriptor.addElement("locales", true);
        pluginGeneratedSerialDescriptor.addElement("web2app_config", true);
        pluginGeneratedSerialDescriptor.addElement("build_id", false);
        pluginGeneratedSerialDescriptor.addElement("bundle_id_config", true);
        pluginGeneratedSerialDescriptor.addElement("test_mode_user_ids", true);
        pluginGeneratedSerialDescriptor.addElement("prioritized_campaign_id", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr = Config.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], kSerializerArr[1], IntSerializer.INSTANCE, PostbackRequest$$serializer.INSTANCE, LongSerializer.INSTANCE, kSerializerArr[5], kSerializerArr[6], BuiltinSerializersKt.getNullable(kSerializerArr[7]), PreloadingDisabled$$serializer.INSTANCE, LocalizationConfig$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), kSerializerArr[11], BuiltinSerializersKt.getNullable(WebToAppConfig$$serializer.INSTANCE), StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(kSerializerArr[15]), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Config deserialize(Decoder decoder) {
        PreloadingDisabled preloadingDisabled;
        WebToAppConfig webToAppConfig;
        String str;
        Set set;
        LocalizationConfig localizationConfig;
        String str2;
        List list;
        int i;
        List list2;
        int i2;
        List list3;
        List list4;
        Set set2;
        PostbackRequest postbackRequest;
        List list5;
        long j;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = Config.$childSerializers;
        Set set3 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            Set set4 = (Set) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], null);
            List list6 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], null);
            int iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 2);
            PostbackRequest postbackRequest2 = (PostbackRequest) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, PostbackRequest$$serializer.INSTANCE, null);
            long jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 4);
            List list7 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], null);
            List list8 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 6, kSerializerArr[6], null);
            List list9 = (List) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 7, kSerializerArr[7], null);
            PreloadingDisabled preloadingDisabled2 = (PreloadingDisabled) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 8, PreloadingDisabled$$serializer.INSTANCE, null);
            LocalizationConfig localizationConfig2 = (LocalizationConfig) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 9, LocalizationConfig$$serializer.INSTANCE, null);
            String str5 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, null);
            Set set5 = (Set) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 11, kSerializerArr[11], null);
            WebToAppConfig webToAppConfig2 = (WebToAppConfig) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 12, WebToAppConfig$$serializer.INSTANCE, null);
            String strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 13);
            String str6 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 14, StringSerializer.INSTANCE, null);
            list = (List) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 15, kSerializerArr[15], null);
            str2 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 16, StringSerializer.INSTANCE, null);
            list5 = list7;
            str3 = strDecodeStringElement;
            str4 = str6;
            set = set5;
            str = str5;
            list4 = list9;
            j = jDecodeLongElement;
            webToAppConfig = webToAppConfig2;
            list2 = list6;
            localizationConfig = localizationConfig2;
            postbackRequest = postbackRequest2;
            set2 = set4;
            i2 = 131071;
            preloadingDisabled = preloadingDisabled2;
            i = iDecodeIntElement;
            list3 = list8;
        } else {
            long jDecodeLongElement2 = 0;
            int i3 = 0;
            int iDecodeIntElement2 = 0;
            int i4 = 5;
            int i5 = 1;
            boolean z = true;
            int i6 = 7;
            int i7 = 6;
            List list10 = null;
            PreloadingDisabled preloadingDisabled3 = null;
            PostbackRequest postbackRequest3 = null;
            String str7 = null;
            WebToAppConfig webToAppConfig3 = null;
            List list11 = null;
            String str8 = null;
            Set set6 = null;
            List list12 = null;
            List list13 = null;
            LocalizationConfig localizationConfig3 = null;
            String strDecodeStringElement2 = null;
            String str9 = null;
            List list14 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                switch (iDecodeElementIndex) {
                    case -1:
                        z = false;
                        list10 = list10;
                        i5 = 1;
                        i4 = 5;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 0:
                        set3 = (Set) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], set3);
                        i3 |= 1;
                        str7 = str7;
                        list10 = list10;
                        i5 = 1;
                        i4 = 5;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 1:
                        list10 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i5, kSerializerArr[i5], list10);
                        i3 |= 2;
                        str7 = str7;
                        set3 = set3;
                        i4 = 5;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 2:
                        iDecodeIntElement2 = compositeDecoderBeginStructure.decodeIntElement(serialDescriptor, 2);
                        i3 |= 4;
                        str7 = str7;
                        set3 = set3;
                        i4 = 5;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 3:
                        postbackRequest3 = (PostbackRequest) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 3, PostbackRequest$$serializer.INSTANCE, postbackRequest3);
                        i3 |= 8;
                        str7 = str7;
                        set3 = set3;
                        i4 = 5;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 4:
                        jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 4);
                        i3 |= 16;
                        str7 = str7;
                        set3 = set3;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 5:
                        list13 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i4, kSerializerArr[i4], list13);
                        i3 |= 32;
                        str7 = str7;
                        set3 = set3;
                        i7 = 6;
                        i6 = 7;
                        break;
                    case 6:
                        list11 = (List) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, i7, kSerializerArr[i7], list11);
                        i3 |= 64;
                        str7 = str7;
                        set3 = set3;
                        i6 = 7;
                        break;
                    case 7:
                        list12 = (List) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, i6, kSerializerArr[i6], list12);
                        i3 |= 128;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 8:
                        preloadingDisabled3 = (PreloadingDisabled) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 8, PreloadingDisabled$$serializer.INSTANCE, preloadingDisabled3);
                        i3 |= 256;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 9:
                        localizationConfig3 = (LocalizationConfig) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 9, LocalizationConfig$$serializer.INSTANCE, localizationConfig3);
                        i3 |= 512;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 10:
                        str8 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, str8);
                        i3 |= 1024;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 11:
                        set6 = (Set) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 11, kSerializerArr[11], set6);
                        i3 |= 2048;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 12:
                        webToAppConfig3 = (WebToAppConfig) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 12, WebToAppConfig$$serializer.INSTANCE, webToAppConfig3);
                        i3 |= 4096;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 13:
                        strDecodeStringElement2 = compositeDecoderBeginStructure.decodeStringElement(serialDescriptor, 13);
                        i3 |= 8192;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 14:
                        set3 = set3;
                        str9 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 14, StringSerializer.INSTANCE, str9);
                        i3 |= 16384;
                        str7 = str7;
                        list14 = list14;
                        set3 = set3;
                        break;
                    case 15:
                        list14 = (List) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 15, kSerializerArr[15], list14);
                        i3 |= 32768;
                        str7 = str7;
                        set3 = set3;
                        break;
                    case 16:
                        str7 = (String) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 16, StringSerializer.INSTANCE, str7);
                        i3 |= 65536;
                        set3 = set3;
                        break;
                    default:
                        throw new UnknownFieldException(iDecodeElementIndex);
                }
            }
            preloadingDisabled = preloadingDisabled3;
            webToAppConfig = webToAppConfig3;
            str = str8;
            set = set6;
            localizationConfig = localizationConfig3;
            str2 = str7;
            list = list14;
            i = iDecodeIntElement2;
            list2 = list10;
            i2 = i3;
            list3 = list11;
            list4 = list12;
            set2 = set3;
            postbackRequest = postbackRequest3;
            list5 = list13;
            j = jDecodeLongElement2;
            str3 = strDecodeStringElement2;
            str4 = str9;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new Config(i2, set2, list2, i, postbackRequest, j, list5, list3, list4, preloadingDisabled, localizationConfig, str, set, webToAppConfig, str3, str4, list, str2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, Config value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        Config.write$Self$superwall_release(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
