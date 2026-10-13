package com.superwall.sdk.models.product;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/product/StoreProductSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StoreProductSerializer implements KSerializer<ProductItem.StoreProductType> {
    public static final StoreProductSerializer INSTANCE = new StoreProductSerializer();
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor$default("StoreProduct", new SerialDescriptor[0], null, 4, null);

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Store.values().length];
            try {
                iArr[Store.PLAY_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Store.APP_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Store.STRIPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Store.PADDLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Store.SUPERWALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Store.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private StoreProductSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, ProductItem.StoreProductType value) {
        JsonElement jsonElementEncodeToJsonElement;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            throw new SerializationException("This class can be saved only by Json");
        }
        if (value instanceof ProductItem.StoreProductType.PlayStore) {
            jsonElementEncodeToJsonElement = jsonEncoder.getJson().encodeToJsonElement(PlayStoreProductSerializer.INSTANCE, ((ProductItem.StoreProductType.PlayStore) value).getProduct());
        } else if (value instanceof ProductItem.StoreProductType.AppStore) {
            jsonElementEncodeToJsonElement = jsonEncoder.getJson().encodeToJsonElement(AppStoreProduct.INSTANCE.serializer(), ((ProductItem.StoreProductType.AppStore) value).getProduct());
        } else if (value instanceof ProductItem.StoreProductType.Stripe) {
            jsonElementEncodeToJsonElement = jsonEncoder.getJson().encodeToJsonElement(StripeProduct.INSTANCE.serializer(), ((ProductItem.StoreProductType.Stripe) value).getProduct());
        } else if (value instanceof ProductItem.StoreProductType.Paddle) {
            jsonElementEncodeToJsonElement = jsonEncoder.getJson().encodeToJsonElement(PaddleProduct.INSTANCE.serializer(), ((ProductItem.StoreProductType.Paddle) value).getProduct());
        } else {
            if (!(value instanceof ProductItem.StoreProductType.Other)) {
                throw new NoWhenBranchMatchedException();
            }
            jsonElementEncodeToJsonElement = jsonEncoder.getJson().encodeToJsonElement(UnknownStoreProduct.INSTANCE.serializer(), ((ProductItem.StoreProductType.Other) value).getProduct());
        }
        jsonEncoder.encodeJsonElement(jsonElementEncodeToJsonElement);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public ProductItem.StoreProductType deserialize(Decoder decoder) {
        JsonObject jsonObject;
        JsonElement jsonElement;
        JsonPrimitive jsonPrimitive;
        String content;
        Store storeFromValue;
        JsonPrimitive jsonPrimitive2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by Json");
        }
        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonDecoder.decodeJsonElement());
        JsonElement jsonElement2 = (JsonElement) jsonObject2.get((Object) "store");
        if (jsonElement2 == null || (jsonPrimitive2 = JsonElementKt.getJsonPrimitive(jsonElement2)) == null || (content = jsonPrimitive2.getContent()) == null) {
            JsonElement jsonElement3 = (JsonElement) jsonObject2.get((Object) "product");
            if (jsonElement3 != null && (jsonObject = JsonElementKt.getJsonObject(jsonElement3)) != null && (jsonElement = (JsonElement) jsonObject.get((Object) "store")) != null && (jsonPrimitive = JsonElementKt.getJsonPrimitive(jsonElement)) != null) {
                content = jsonPrimitive.getContent();
            } else {
                throw new SerializationException("Store is missing");
            }
        }
        try {
            storeFromValue = Store.INSTANCE.fromValue(content);
        } catch (Throwable unused) {
            storeFromValue = Store.PLAY_STORE;
        }
        Json json = jsonDecoder.getJson();
        switch (WhenMappings.$EnumSwitchMapping$0[storeFromValue.ordinal()]) {
            case 1:
                return new ProductItem.StoreProductType.PlayStore((PlayStoreProduct) json.decodeFromJsonElement(PlayStoreProductSerializer.INSTANCE, jsonObject2));
            case 2:
                return new ProductItem.StoreProductType.AppStore((AppStoreProduct) json.decodeFromJsonElement(AppStoreProduct.INSTANCE.serializer(), jsonObject2));
            case 3:
                return new ProductItem.StoreProductType.Stripe((StripeProduct) json.decodeFromJsonElement(StripeProduct.INSTANCE.serializer(), jsonObject2));
            case 4:
                return new ProductItem.StoreProductType.Paddle((PaddleProduct) json.decodeFromJsonElement(PaddleProduct.INSTANCE.serializer(), jsonObject2));
            case 5:
            case 6:
                return new ProductItem.StoreProductType.Other((UnknownStoreProduct) json.decodeFromJsonElement(UnknownStoreProduct.INSTANCE.serializer(), jsonObject2));
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
