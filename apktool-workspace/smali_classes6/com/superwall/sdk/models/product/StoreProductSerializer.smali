.class public final Lcom/superwall/sdk/models/product/StoreProductSerializer;
.super Ljava/lang/Object;
.source "ProductItem.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/StoreProductSerializer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/StoreProductSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/product/StoreProductSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/product/StoreProductSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/product/StoreProductSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/product/StoreProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/StoreProductSerializer;

    const/4 v0, 0x0

    .line 246
    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "StoreProduct"

    invoke-static {v3, v0, v1, v2, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildClassSerialDescriptor$default(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/product/StoreProductSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 285
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 287
    const-string v1, "store"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 288
    :cond_1
    const-string v2, "product"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_3

    .line 289
    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_3

    .line 291
    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 296
    :cond_2
    :try_start_0
    sget-object v1, Lcom/superwall/sdk/models/product/Store;->Companion:Lcom/superwall/sdk/models/product/Store$Companion;

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/models/product/Store$Companion;->fromValue(Ljava/lang/String;)Lcom/superwall/sdk/models/product/Store;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 298
    :catchall_0
    sget-object v1, Lcom/superwall/sdk/models/product/Store;->PLAY_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 300
    :goto_1
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 301
    sget-object v2, Lcom/superwall/sdk/models/product/StoreProductSerializer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/Store;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 326
    :pswitch_0
    sget-object v1, Lcom/superwall/sdk/models/product/UnknownStoreProduct;->Companion:Lcom/superwall/sdk/models/product/UnknownStoreProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/UnknownStoreProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/product/UnknownStoreProduct;

    .line 327
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;-><init>(Lcom/superwall/sdk/models/product/UnknownStoreProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    goto :goto_2

    .line 318
    :pswitch_1
    sget-object v1, Lcom/superwall/sdk/models/product/PaddleProduct;->Companion:Lcom/superwall/sdk/models/product/PaddleProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/PaddleProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/product/PaddleProduct;

    .line 319
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;-><init>(Lcom/superwall/sdk/models/product/PaddleProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    goto :goto_2

    .line 313
    :pswitch_2
    sget-object v1, Lcom/superwall/sdk/models/product/StripeProduct;->Companion:Lcom/superwall/sdk/models/product/StripeProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/product/StripeProduct;

    .line 314
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;-><init>(Lcom/superwall/sdk/models/product/StripeProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    goto :goto_2

    .line 308
    :pswitch_3
    sget-object v1, Lcom/superwall/sdk/models/product/AppStoreProduct;->Companion:Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/product/AppStoreProduct;

    .line 309
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;-><init>(Lcom/superwall/sdk/models/product/AppStoreProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    goto :goto_2

    .line 303
    :pswitch_4
    sget-object v1, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/models/product/PlayStoreProduct;

    .line 304
    new-instance v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;-><init>(Lcom/superwall/sdk/models/product/PlayStoreProduct;)V

    check-cast v0, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    :goto_2
    return-object v0

    .line 293
    :cond_3
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Store is missing"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_4
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "This class can be loaded only by Json"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/product/StoreProductSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 246
    sget-object v0, Lcom/superwall/sdk/models/product/StoreProductSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    instance-of v0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 257
    instance-of v0, p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    if-eqz v0, :cond_1

    .line 258
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/PlayStoreProductSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    goto :goto_1

    .line 260
    :cond_1
    instance-of v0, p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    if-eqz v0, :cond_2

    .line 261
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/superwall/sdk/models/product/AppStoreProduct;->Companion:Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 263
    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$AppStore;->getProduct()Lcom/superwall/sdk/models/product/AppStoreProduct;

    move-result-object p2

    .line 261
    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    goto :goto_1

    .line 266
    :cond_2
    instance-of v0, p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    if-eqz v0, :cond_3

    .line 267
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/models/product/StripeProduct;->Companion:Lcom/superwall/sdk/models/product/StripeProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/StripeProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Stripe;->getProduct()Lcom/superwall/sdk/models/product/StripeProduct;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    goto :goto_1

    .line 269
    :cond_3
    instance-of v0, p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    if-eqz v0, :cond_4

    .line 270
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/models/product/PaddleProduct;->Companion:Lcom/superwall/sdk/models/product/PaddleProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/PaddleProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Paddle;->getProduct()Lcom/superwall/sdk/models/product/PaddleProduct;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    goto :goto_1

    .line 272
    :cond_4
    instance-of v0, p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    if-eqz v0, :cond_5

    .line 273
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/superwall/sdk/models/product/UnknownStoreProduct;->Companion:Lcom/superwall/sdk/models/product/UnknownStoreProduct$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/UnknownStoreProduct$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 275
    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;

    invoke-virtual {p2}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$Other;->getProduct()Lcom/superwall/sdk/models/product/UnknownStoreProduct;

    move-result-object p2

    .line 273
    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 278
    :goto_1
    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

    return-void

    .line 256
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 254
    :cond_6
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string p2, "This class can be saved only by Json"

    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p2, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/product/StoreProductSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;)V

    return-void
.end method
