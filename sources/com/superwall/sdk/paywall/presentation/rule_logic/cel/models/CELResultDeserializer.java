package com.superwall.sdk.paywall.presentation.rule_logic.cel.models;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;

/* JADX INFO: compiled from: PassableValues.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResultDeserializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/CELResult;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CELResultDeserializer implements KSerializer<CELResult> {
    public static final CELResultDeserializer INSTANCE = new CELResultDeserializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("CELResult", new SerialDescriptor[0], new Function1() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.CELResultDeserializer$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return CELResultDeserializer.descriptor$lambda$0((ClassSerialDescriptorBuilder) obj);
        }
    });

    private CELResultDeserializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public CELResult deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (!(decoder instanceof JsonDecoder)) {
            throw new IllegalArgumentException("This deserializer can be used only with Json format".toString());
        }
        JsonDecoder jsonDecoder = (JsonDecoder) decoder;
        JsonElement jsonElementDecodeJsonElement = jsonDecoder.decodeJsonElement();
        if (JsonElementKt.getJsonObject(jsonElementDecodeJsonElement).containsKey((Object) "Ok")) {
            Object obj = JsonElementKt.getJsonObject(jsonElementDecodeJsonElement).get((Object) "Ok");
            Intrinsics.checkNotNull(obj);
            Json json = jsonDecoder.getJson();
            json.getSerializersModule();
            return new CELResult.Ok((PassableValue) json.decodeFromJsonElement(PassableValue.INSTANCE.serializer(), (JsonElement) obj));
        }
        if (JsonElementKt.getJsonObject(jsonElementDecodeJsonElement).containsKey((Object) "Err")) {
            Object obj2 = JsonElementKt.getJsonObject(jsonElementDecodeJsonElement).get((Object) "Err");
            Intrinsics.checkNotNull(obj2);
            return new CELResult.Err(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent());
        }
        throw new SerializationException("Unknown result type");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, CELResult value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        throw new NotImplementedError("An operation is not implemented: Serialization not needed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit descriptor$lambda$0(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        buildClassSerialDescriptor.element("Ok", JsonElement.INSTANCE.serializer().getDescriptor(), CollectionsKt.emptyList(), false);
        buildClassSerialDescriptor.element("Err", JsonElement.INSTANCE.serializer().getDescriptor(), CollectionsKt.emptyList(), false);
        return Unit.INSTANCE;
    }
}
