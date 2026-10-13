.class public final Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;
.super Ljava/lang/Object;
.source "CrossplatformProduct.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossplatformProduct.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossplatformProduct.kt\ncom/superwall/sdk/models/product/CrossplatformProductSerializer\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 3 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,438:1\n29#2,2:439\n31#2:443\n298#3:441\n298#3:442\n309#3:447\n309#3:449\n309#3:450\n309#3:451\n309#3:452\n309#3:453\n1557#4:444\n1628#4,2:445\n1630#4:448\n*S KotlinDebug\n*F\n+ 1 CrossplatformProduct.kt\ncom/superwall/sdk/models/product/CrossplatformProductSerializer\n*L\n375#1:439,2\n375#1:443\n378#1:441\n379#1:442\n399#1:447\n406#1:449\n407#1:450\n408#1:451\n409#1:452\n410#1:453\n398#1:444\n398#1:445,2\n398#1:448\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;

    .line 365
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "com.superwall.sdk.models.product.CrossplatformProduct"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "sw_composite_product_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "store_product"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "entitlements"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "reference_name"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/CrossplatformProduct;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "unknown"

    const-string v2, "store"

    const-string v3, "decoder"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    instance-of v3, v0, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_12

    .line 388
    invoke-interface {v3}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v3

    .line 391
    const-string v5, "sw_composite_product_id"

    invoke-virtual {v3, v5}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/json/JsonElement;

    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v6

    .line 393
    :cond_2
    const-string v7, "store_product"

    invoke-virtual {v3, v7}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    if-eqz v7, :cond_11

    invoke-static {v7}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 396
    const-string v8, "entitlements"

    invoke-virtual {v3, v8}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/json/JsonElement;

    if-eqz v8, :cond_4

    .line 397
    invoke-static {v8}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 396
    check-cast v8, Ljava/lang/Iterable;

    .line 444
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 445
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 446
    check-cast v10, Lkotlinx/serialization/json/JsonElement;

    .line 399
    move-object v11, v0

    check-cast v11, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {v11}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v11

    .line 447
    invoke-virtual {v11}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v12, Lcom/superwall/sdk/models/entitlements/Entitlement;->Companion:Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;

    invoke-virtual {v12}, Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v12

    check-cast v12, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v11, v12, v10}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/superwall/sdk/models/entitlements/Entitlement;

    .line 446
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_3
    check-cast v9, Ljava/util/List;

    goto :goto_2

    .line 400
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 404
    :goto_2
    :try_start_0
    invoke-virtual {v7, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/json/JsonElement;

    if-eqz v8, :cond_5

    invoke-static {v8}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    move-object v8, v4

    .line 405
    :goto_3
    const-string v10, "OTHER"

    if-eqz v8, :cond_b

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v11, "APP_STORE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_4

    .line 407
    :cond_6
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$AppStore$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    move-object v10, v7

    check-cast v10, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v8, v10}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    goto/16 :goto_9

    .line 405
    :sswitch_1
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_4

    .line 410
    :cond_7
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    move-object v10, v7

    check-cast v10, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v8, v10}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    goto/16 :goto_9

    .line 405
    :sswitch_2
    const-string v11, "PLAY_STORE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_4

    .line 406
    :cond_8
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    move-object v10, v7

    check-cast v10, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v8, v10}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    goto/16 :goto_9

    .line 405
    :sswitch_3
    const-string v11, "STRIPE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_4

    .line 408
    :cond_9
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    move-object v10, v7

    check-cast v10, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v8, v10}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    goto/16 :goto_9

    .line 405
    :sswitch_4
    const-string v11, "PADDLE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_4

    .line 409
    :cond_a
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {v0}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;

    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    move-object v10, v7

    check-cast v10, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v8, v10}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    goto/16 :goto_9

    :cond_b
    :goto_4
    move-object v0, v10

    .line 412
    new-instance v10, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;

    if-nez v8, :cond_c

    move-object v11, v0

    goto :goto_5

    :cond_c
    move-object v11, v8

    .line 414
    :goto_5
    const-string v0, "product_identifier"

    invoke-virtual {v7, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    move-object v12, v0

    goto :goto_7

    :cond_e
    :goto_6
    move-object v12, v1

    :goto_7
    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 412
    invoke-direct/range {v10 .. v15}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v10

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 418
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 419
    sget-object v11, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 420
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->configManager:Lcom/superwall/sdk/logger/LogScope;

    .line 421
    invoke-virtual {v0}, Lkotlinx/serialization/SerializationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to deserialize product store, falling back to OTHER- "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " for "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 422
    move-object v14, v3

    check-cast v14, Ljava/util/Map;

    .line 423
    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;

    .line 418
    invoke-virtual/range {v10 .. v15}, Lcom/superwall/sdk/logger/Logger;->debug(Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 425
    invoke-virtual {v7, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 427
    :cond_f
    new-instance v10, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;

    if-nez v4, :cond_10

    move-object v12, v1

    goto :goto_8

    :cond_10
    move-object v12, v4

    :goto_8
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "OTHER"

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Other;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v10

    check-cast v0, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    .line 430
    :goto_9
    new-instance v1, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    invoke-direct {v1, v5, v0, v9, v6}, Lcom/superwall/sdk/models/product/CrossplatformProduct;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 394
    :cond_11
    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v1, "Missing store_product"

    invoke-direct {v0, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_12
    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v1, "This class can be loaded only by Json"

    invoke-direct {v0, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73c86496 -> :sswitch_4
        -0x6d97abb3 -> :sswitch_3
        -0x39af500a -> :sswitch_2
        0x48086f0 -> :sswitch_1
        0x4a861d03 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/CrossplatformProduct;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/CrossplatformProduct;)V
    .locals 5

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    instance-of v0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 439
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 376
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    const-string v3, "sw_composite_product_id"

    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 377
    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getFullProductId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    const-string v3, "product_id"

    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 378
    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getStoreProduct()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    move-result-object v3

    .line 441
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Companion;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v2, v4, v3}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    .line 378
    const-string v3, "store_product"

    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 379
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getEntitlements()Ljava/util/List;

    move-result-object p2

    .line 442
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/entitlements/Entitlement;->Companion:Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/entitlements/Entitlement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p1, v2, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 379
    const-string p2, "entitlements"

    invoke-virtual {v1, p2, p1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 443
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 381
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

    return-void

    .line 373
    :cond_1
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string p2, "This class can be saved only by Json"

    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 365
    check-cast p2, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/CrossplatformProduct;)V

    return-void
.end method
