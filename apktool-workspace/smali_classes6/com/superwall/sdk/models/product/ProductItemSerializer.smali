.class public final Lcom/superwall/sdk/models/product/ProductItemSerializer;
.super Ljava/lang/Object;
.source "ProductItem.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductItem.kt\ncom/superwall/sdk/models/product/ProductItemSerializer\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,497:1\n29#2,3:498\n1557#3:501\n1628#3,2:502\n1630#3:505\n309#4:504\n*S KotlinDebug\n*F\n+ 1 ProductItem.kt\ncom/superwall/sdk/models/product/ProductItemSerializer\n*L\n407#1:498,3\n435#1:501\n435#1:502,2\n435#1:505\n436#1:504\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/ProductItemSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "<init>",
        "()V",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/product/ProductItemSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/product/ProductItemSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/product/ProductItemSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/product/ProductItemSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItemSerializer;

    .line 396
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "com.superwall.sdk.models.product.ProductItem"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "sw_composite_product_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "reference_name"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "store_product"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "entitlements"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lcom/superwall/sdk/models/product/ProductItemSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/ProductItem;
    .locals 9

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_d

    .line 425
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 428
    const-string v2, "reference_name"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, ""

    .line 430
    :cond_2
    const-string v3, "store_product"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_c

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 433
    const-string v4, "entitlements"

    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    if-eqz v4, :cond_4

    .line 434
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 433
    check-cast v4, Ljava/lang/Iterable;

    .line 501
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 502
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 503
    check-cast v6, Lkotlinx/serialization/json/JsonElement;

    .line 436
    sget-object v7, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v7, Lkotlinx/serialization/json/Json;

    .line 504
    invoke-virtual {v7}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/superwall/sdk/models/entitlements/Entitlement;->Companion:Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v7, v8, v6}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 503
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 505
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 433
    check-cast v5, Ljava/lang/Iterable;

    .line 437
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 440
    :goto_2
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    sget-object v5, Lcom/superwall/sdk/models/product/StoreProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/StoreProductSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p1, v5, v3}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    .line 442
    const-string v3, "sw_composite_product_id"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_b

    .line 446
    instance-of v0, p1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 447
    :cond_6
    instance-of v0, p1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;->getProduct()Lcom/superwall/sdk/models/product/AppStoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/AppStoreProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 448
    :cond_7
    instance-of v0, p1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;->getProduct()Lcom/superwall/sdk/models/product/StripeProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/StripeProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 449
    :cond_8
    instance-of v0, p1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;->getProduct()Lcom/superwall/sdk/models/product/PaddleProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/PaddleProduct;->getFullIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 450
    :cond_9
    instance-of v0, p1, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;->getProduct()Lcom/superwall/sdk/models/product/UnknownStoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/UnknownStoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 445
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 453
    :cond_b
    :goto_3
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem;

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/superwall/sdk/models/product/ProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;Ljava/util/Set;)V

    return-object v0

    .line 431
    :cond_c
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Missing store_product"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_d
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "This class can be loaded only by Json"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/product/ProductItemSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/ProductItem;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/product/ProductItemSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/ProductItem;)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    instance-of v0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 498
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 408
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    const-string v2, "product"

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 411
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    const-string v2, "productId"

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 413
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/product/StoreProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/StoreProductSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem;->getType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 414
    const-string v1, "store_product"

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 500
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    .line 417
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

    return-void

    .line 405
    :cond_1
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string p2, "This class can be saved only by Json"

    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 396
    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/product/ProductItemSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/ProductItem;)V

    return-void
.end method
