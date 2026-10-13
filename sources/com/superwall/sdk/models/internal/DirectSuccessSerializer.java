package com.superwall.sdk.models.internal;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: WebRedemption.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/internal/DirectSuccessSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/internal/RedemptionResult$Success;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DirectSuccessSerializer implements KSerializer<RedemptionResult.Success> {
    public static final DirectSuccessSerializer INSTANCE = new DirectSuccessSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("SUCCESS", new SerialDescriptor[0], new Function1() { // from class: com.superwall.sdk.models.internal.DirectSuccessSerializer$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return DirectSuccessSerializer.descriptor$lambda$0((ClassSerialDescriptorBuilder) obj);
        }
    });

    private DirectSuccessSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, RedemptionResult.Success value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(getDescriptor());
        compositeEncoderBeginStructure.encodeStringElement(getDescriptor(), 0, value.getCode());
        compositeEncoderBeginStructure.encodeSerializableElement(getDescriptor(), 1, JsonElement.INSTANCE.serializer(), JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.models.internal.DirectSuccessSerializer$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DirectSuccessSerializer.serialize$lambda$1((JsonBuilder) obj);
            }
        }, 1, null).encodeToJsonElement(RedemptionInfo.INSTANCE.serializer(), value.getRedemptionInfo()));
        compositeEncoderBeginStructure.endStructure(getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit serialize$lambda$1(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        Json.setIgnoreUnknownKeys(true);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public RedemptionResult.Success deserialize(Decoder decoder) {
        JsonPrimitive jsonPrimitive;
        String content;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("Expected JSON decoder");
        }
        Json jsonJson$default = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.models.internal.DirectSuccessSerializer$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DirectSuccessSerializer.deserialize$lambda$2((JsonBuilder) obj);
            }
        }, 1, null);
        JsonObject jsonObject = JsonElementKt.getJsonObject(jsonDecoder.decodeJsonElement());
        JsonElement jsonElement = (JsonElement) jsonObject.get((Object) "code");
        if (jsonElement == null || (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) == null || (content = jsonPrimitive.getContent()) == null) {
            throw new SerializationException("Required field 'code' was not found");
        }
        JsonElement jsonElement2 = (JsonElement) jsonObject.get((Object) "redemption_info");
        if (jsonElement2 == null && (jsonElement2 = (JsonElement) jsonObject.get((Object) "redemptionInfo")) == null) {
            throw new SerializationException("Required field 'redemptionInfo' was not found");
        }
        return new RedemptionResult.Success(content, (RedemptionInfo) jsonJson$default.decodeFromJsonElement(RedemptionInfo.INSTANCE.serializer(), jsonElement2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deserialize$lambda$2(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setEncodeDefaults(true);
        Json.setIgnoreUnknownKeys(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit descriptor$lambda$0(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        buildClassSerialDescriptor.element("code", StringSerializer.INSTANCE.getDescriptor(), CollectionsKt.emptyList(), false);
        buildClassSerialDescriptor.element("redemptionInfo", JsonElement.INSTANCE.serializer().getDescriptor(), CollectionsKt.emptyList(), false);
        return Unit.INSTANCE;
    }
}
