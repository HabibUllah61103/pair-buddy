.class public final synthetic Lcom/superwall/sdk/models/config/Config$$serializer;
.super Ljava/lang/Object;
.source "Config.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/config/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/superwall/sdk/models/config/Config;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
    message = "This synthesized declaration should not be used directly"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "com/superwall/sdk/models/config/Config.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/superwall/sdk/models/config/Config;",
        "<init>",
        "()V",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/config/Config$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/config/Config$$serializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/config/Config$$serializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/config/Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/Config$$serializer;

    .line 13
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x11

    const-string v3, "com.superwall.sdk.models.config.Config"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "triggerOptions"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paywallResponses"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "logLevel"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "postback"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "appSessionTimeoutMs"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "toggles"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "products"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "products_v3"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "disablePreload"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "localization"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "requestId"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "locales"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "web2app_config"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "build_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "bundle_id_config"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "test_mode_user_ids"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prioritized_campaign_id"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v1, Lcom/superwall/sdk/models/config/Config$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/superwall/sdk/models/config/Config;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    sget-object v2, Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v2, 0xd

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v2, 0xf

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    return-object v1
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/config/Config;
    .locals 38

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/superwall/sdk/models/config/Config$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/superwall/sdk/models/config/Config;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v8, 0x9

    const/4 v9, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v10, 0x7

    const/16 v16, 0xf

    const/4 v14, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v20, 0xb

    const/4 v15, 0x0

    if-eqz v3, :cond_0

    aget-object v3, v2, v6

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v6, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    aget-object v6, v2, v5

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v5, v6, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v6

    sget-object v13, Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;

    check-cast v13, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v9, v13, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/superwall/sdk/models/postback/PostbackRequest;

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v12

    aget-object v21, v2, v4

    move-object/from16 v7, v21

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v7, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    aget-object v7, v2, v14

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v7, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    aget-object v14, v2, v10

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v14, Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v11, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/superwall/sdk/models/config/PreloadingDisabled;

    sget-object v14, Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v8, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/models/config/LocalizationConfig;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v21, v2

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v14, v21, v20

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v2

    move/from16 v2, v20

    invoke-interface {v0, v1, v2, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    sget-object v14, Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/config/WebToAppConfig;

    const/16 v14, 0xd

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v14

    sget-object v18, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v3, v21, v16

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v2

    move/from16 v2, v16

    invoke-interface {v0, v1, v2, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v16, v6

    const/16 v6, 0x10

    invoke-interface {v0, v1, v6, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v6, 0x1ffff

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object v15, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v17

    move-object/from16 v21, v20

    move-object/from16 v20, v22

    move-object/from16 v17, v10

    move-wide v13, v12

    move-object/from16 v22, v19

    move-object v10, v5

    move-object/from16 v19, v8

    move-object v12, v9

    move-object/from16 v9, v18

    move v8, v6

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v16, v7

    goto/16 :goto_9

    :cond_0
    move-object/from16 v21, v2

    move v2, v6

    const/16 v6, 0x10

    const-wide/16 v23, 0x0

    move/from16 p1, v2

    move/from16 v3, p1

    move/from16 v35, v3

    move/from16 v29, v4

    move/from16 v25, v5

    move/from16 v36, v25

    move/from16 v31, v10

    move/from16 v30, v14

    move-object v2, v15

    move-object v4, v2

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v32, v14

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    :goto_0
    if-eqz v36, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v37, v15

    const/16 v15, 0x10

    invoke-interface {v0, v1, v15, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const/high16 v6, 0x10000

    or-int/2addr v3, v6

    move v6, v15

    move-object/from16 v15, v37

    goto :goto_0

    :pswitch_1
    move-object/from16 v37, v15

    const/16 v6, 0xf

    const/16 v15, 0x10

    aget-object v16, v21, v6

    move-object/from16 v15, v16

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v7

    move-object/from16 v7, v34

    invoke-interface {v0, v1, v6, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v34, v7

    check-cast v34, Ljava/util/List;

    const v7, 0x8000

    or-int/2addr v3, v7

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v7, v34

    const/16 v6, 0xf

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v7

    move-object/from16 v6, v33

    const/16 v7, 0xe

    invoke-interface {v0, v1, v7, v15, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v33, v6

    check-cast v33, Ljava/lang/String;

    or-int/lit16 v3, v3, 0x4000

    move-object/from16 v7, v16

    move-object/from16 v34, v17

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0xe

    const/16 v15, 0xd

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v32

    or-int/lit16 v3, v3, 0x2000

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0xe

    const/16 v15, 0xd

    sget-object v18, Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;

    move-object/from16 v7, v18

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0xc

    invoke-interface {v0, v1, v15, v7, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/superwall/sdk/models/config/WebToAppConfig;

    or-int/lit16 v3, v3, 0x1000

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0xb

    const/16 v15, 0xc

    aget-object v19, v21, v7

    move-object/from16 v15, v19

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v7, v15, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    or-int/lit16 v3, v3, 0x800

    goto :goto_1

    :pswitch_6
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0xb

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0xa

    invoke-interface {v0, v1, v7, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    or-int/lit16 v3, v3, 0x400

    goto :goto_1

    :pswitch_7
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0xa

    sget-object v15, Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/LocalizationConfig$$serializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x9

    invoke-interface {v0, v1, v7, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/superwall/sdk/models/config/LocalizationConfig;

    or-int/lit16 v3, v3, 0x200

    goto :goto_1

    :pswitch_8
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0x9

    sget-object v15, Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/PreloadingDisabled$$serializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x8

    invoke-interface {v0, v1, v7, v15, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/config/PreloadingDisabled;

    or-int/lit16 v3, v3, 0x100

    goto :goto_1

    :pswitch_9
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/16 v7, 0x8

    aget-object v15, v21, v31

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v7, v31

    invoke-interface {v0, v1, v7, v15, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    or-int/lit16 v3, v3, 0x80

    :goto_1
    move-object/from16 v7, v16

    :goto_2
    move-object/from16 v15, v37

    const/16 v6, 0x10

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move/from16 v7, v31

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    aget-object v15, v21, v30

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v7, v30

    invoke-interface {v0, v1, v7, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v7, v16

    move-object/from16 v15, v37

    const/16 v6, 0x10

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move/from16 v7, v30

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    aget-object v15, v21, v29

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v7, v29

    invoke-interface {v0, v1, v7, v15, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    goto :goto_3

    :pswitch_c
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move/from16 v7, v29

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/4 v15, 0x4

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v23

    or-int/lit8 v3, v3, 0x10

    :goto_3
    move-object/from16 v7, v16

    move-object/from16 v15, v37

    const/16 v6, 0x10

    goto/16 :goto_7

    :pswitch_d
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move/from16 v7, v29

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/4 v15, 0x4

    sget-object v28, Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/postback/PostbackRequest$$serializer;

    move-object/from16 v7, v28

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v15, 0x3

    invoke-interface {v0, v1, v15, v7, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/models/postback/PostbackRequest;

    or-int/lit8 v3, v3, 0x8

    goto :goto_4

    :pswitch_e
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/4 v7, 0x2

    const/4 v15, 0x3

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v35

    or-int/lit8 v3, v3, 0x4

    goto :goto_4

    :pswitch_f
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    const/4 v7, 0x2

    const/4 v15, 0x3

    aget-object v26, v21, v25

    move-object/from16 v7, v26

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v15, v25

    invoke-interface {v0, v1, v15, v7, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :goto_4
    move-object/from16 v7, v16

    move-object/from16 v15, v37

    const/16 v6, 0x10

    goto :goto_6

    :pswitch_10
    move-object/from16 v16, v7

    move-object/from16 v37, v15

    move/from16 v15, v25

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    aget-object v7, v21, p1

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v15, v37

    move-object/from16 v37, v2

    move/from16 v2, p1

    invoke-interface {v0, v1, v2, v7, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/util/Set;

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v16

    goto :goto_5

    :pswitch_11
    move-object/from16 v37, v2

    move-object/from16 v16, v7

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    move/from16 v2, p1

    move/from16 v36, p1

    :goto_5
    move-object/from16 v2, v37

    const/16 v6, 0x10

    const/16 v25, 0x1

    :goto_6
    const/16 v29, 0x5

    :goto_7
    const/16 v30, 0x6

    :goto_8
    const/16 v31, 0x7

    goto/16 :goto_0

    :cond_1
    move-object/from16 v37, v2

    move-object/from16 v16, v7

    move-object/from16 v6, v33

    move-object/from16 v17, v34

    move-object/from16 v18, v4

    move-object/from16 v22, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v19, v14

    move-object/from16 v26, v16

    move-object/from16 v25, v17

    move/from16 v11, v35

    move-object/from16 v10, v37

    move v8, v3

    move-object/from16 v16, v9

    move-object/from16 v17, v12

    move-object v9, v15

    move-object v12, v5

    move-object v15, v13

    move-wide/from16 v13, v23

    move-object/from16 v23, v32

    move-object/from16 v24, v6

    :goto_9
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v7, Lcom/superwall/sdk/models/config/Config;

    const/16 v27, 0x0

    invoke-direct/range {v7 .. v27}, Lcom/superwall/sdk/models/config/Config;-><init>(ILjava/util/Set;Ljava/util/List;ILcom/superwall/sdk/models/postback/PostbackRequest;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/config/PreloadingDisabled;Lcom/superwall/sdk/models/config/LocalizationConfig;Ljava/lang/String;Ljava/util/Set;Lcom/superwall/sdk/models/config/WebToAppConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v7

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/config/Config$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/config/Config;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/config/Config$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/config/Config;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/superwall/sdk/models/config/Config$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/superwall/sdk/models/config/Config;->write$Self$superwall_release(Lcom/superwall/sdk/models/config/Config;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/config/Config$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/config/Config;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
