.class public final Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;
.super Ljava/lang/Object;
.source "ProductItem.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/models/product/PlayStoreProduct;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductItem.kt\ncom/superwall/sdk/models/product/PlayStoreProductSerializer\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n*L\n1#1,497:1\n29#2,3:498\n*S KotlinDebug\n*F\n+ 1 ProductItem.kt\ncom/superwall/sdk/models/product/PlayStoreProductSerializer\n*L\n169#1:498,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/models/product/PlayStoreProduct;",
        "<init>",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;

    const/4 v0, 0x0

    .line 159
    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "PlayStoreProduct"

    invoke-static {v3, v0, v1, v2, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildClassSerialDescriptor$default(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/PlayStoreProduct;
    .locals 13

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_11

    .line 194
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.json.JsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/serialization/json/JsonObject;

    .line 198
    :try_start_0
    sget-object v0, Lcom/superwall/sdk/models/product/Store;->Companion:Lcom/superwall/sdk/models/product/Store$Companion;

    .line 199
    const-string v2, "store"

    invoke-virtual {p1, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {v0, v2}, Lcom/superwall/sdk/models/product/Store$Companion;->fromValue(Ljava/lang/String;)Lcom/superwall/sdk/models/product/Store;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_1
    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v2, "Store is missing"

    invoke-direct {v0, v2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    sget-object v0, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 207
    :goto_1
    const-string v2, "product_identifier"

    invoke-virtual {p1, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 208
    :cond_2
    const-string v3, "product"

    invoke-virtual {p1, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_10

    .line 209
    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 210
    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_10

    .line 211
    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 212
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 215
    :cond_3
    const-string v2, "base_plan_identifier"

    invoke-virtual {p1, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, ""

    .line 217
    :cond_5
    const-string v4, "offer"

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v4, :cond_6

    check-cast p1, Lkotlinx/serialization/json/JsonObject;

    goto :goto_2

    :cond_6
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_7

    .line 218
    const-string v4, "type"

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_f

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5fc185c2

    if-eq v5, v6, :cond_d

    const v6, 0x9da420b

    const/4 v7, 0x1

    if-eq v5, v6, :cond_b

    const v6, 0x41164d90

    if-eq v5, v6, :cond_8

    goto :goto_4

    :cond_8
    const-string v5, "SPECIFIED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    .line 226
    :cond_9
    const-string v4, "offer_identifier"

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 228
    new-instance v4, Lcom/superwall/sdk/models/product/Offer$Specified;

    invoke-direct {v4, v1, p1, v7, v1}, Lcom/superwall/sdk/models/product/Offer$Specified;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/superwall/sdk/models/product/Offer;

    goto :goto_5

    .line 227
    :cond_a
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "offer_identifier is missing"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_b
    const-string p1, "AUTOMATIC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    .line 222
    :cond_c
    new-instance p1, Lcom/superwall/sdk/models/product/Offer$Automatic;

    invoke-direct {p1, v1, v7, v1}, Lcom/superwall/sdk/models/product/Offer$Automatic;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, p1

    check-cast v4, Lcom/superwall/sdk/models/product/Offer;

    goto :goto_5

    .line 221
    :cond_d
    const-string p1, "NO_OFFER"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_4

    .line 223
    :cond_e
    sget-object p1, Lcom/superwall/sdk/models/product/Offer$NoOffer;->INSTANCE:Lcom/superwall/sdk/models/product/Offer$NoOffer;

    move-object v4, p1

    check-cast v4, Lcom/superwall/sdk/models/product/Offer;

    goto :goto_5

    .line 232
    :cond_f
    :goto_4
    sget-object v5, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 233
    sget-object v6, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 234
    sget-object v7, Lcom/superwall/sdk/logger/LogScope;->configManager:Lcom/superwall/sdk/logger/LogScope;

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown offer type for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", fallback to none"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 232
    invoke-static/range {v5 .. v12}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 237
    sget-object p1, Lcom/superwall/sdk/models/product/Offer$NoOffer;->INSTANCE:Lcom/superwall/sdk/models/product/Offer$NoOffer;

    move-object v4, p1

    check-cast v4, Lcom/superwall/sdk/models/product/Offer;

    .line 241
    :goto_5
    new-instance p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    invoke-direct {p1, v0, v3, v2, v4}, Lcom/superwall/sdk/models/product/PlayStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V

    return-object p1

    .line 213
    :cond_10
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "product_identifier is missing"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_11
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "This class can be loaded only by Json"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 159
    sget-object v0, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/PlayStoreProduct;)V
    .locals 5

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    instance-of v0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 498
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 170
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getStore()Lcom/superwall/sdk/models/product/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    const-string v2, "store"

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 171
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    const-string v2, "product_identifier"

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 172
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getBasePlanIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    const-string v2, "base_plan_identifier"

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 174
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getOffer()Lcom/superwall/sdk/models/product/Offer;

    move-result-object p2

    .line 175
    instance-of v1, p2, Lcom/superwall/sdk/models/product/Offer$Automatic;

    const-string v2, "type"

    if-eqz v1, :cond_1

    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    check-cast p2, Lcom/superwall/sdk/models/product/Offer$Automatic;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/Offer$Automatic;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v1, p2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    goto :goto_1

    .line 176
    :cond_1
    instance-of v1, p2, Lcom/superwall/sdk/models/product/Offer$NoOffer;

    if-eqz v1, :cond_2

    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    const-string p2, "NO_OFFER"

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v1, p2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    goto :goto_1

    .line 177
    :cond_2
    instance-of v1, p2, Lcom/superwall/sdk/models/product/Offer$Specified;

    if-eqz v1, :cond_3

    .line 178
    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    const/4 v3, 0x2

    .line 180
    new-array v3, v3, [Lkotlin/Pair;

    check-cast p2, Lcom/superwall/sdk/models/product/Offer$Specified;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/Offer$Specified;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 181
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/Offer$Specified;->getOfferIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p2

    const-string v2, "offer_identifier"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v3, v2

    .line 179
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 178
    invoke-direct {v1, p2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 185
    :goto_1
    const-string p2, "offer"

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, p2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 500
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    .line 187
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

    return-void

    .line 174
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 167
    :cond_4
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string p2, "This class can be saved only by Json"

    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p2, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/PlayStoreProduct;)V

    return-void
.end method
