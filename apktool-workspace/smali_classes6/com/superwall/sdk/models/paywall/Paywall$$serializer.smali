.class public final synthetic Lcom/superwall/sdk/models/paywall/Paywall$$serializer;
.super Ljava/lang/Object;
.source "Paywall.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/paywall/Paywall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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
        "com/superwall/sdk/models/paywall/Paywall.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/superwall/sdk/models/paywall/Paywall;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/paywall/Paywall$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/Paywall$$serializer;

    .line 40
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x1d

    const-string v3, "com.superwall.sdk.models.paywall.Paywall"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "identifier"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "url"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paywalljs_event"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentation_style_v2"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentation_style_v3"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentation_delay"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentation_condition"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "background_color_hex"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "dark_background_color_hex"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "products_v3"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "products_v2"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "productVariables"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "swProductVariablesTemplate"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paywalljsVersion"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "isFreeTrialAvailable"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentationSourceType"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "feature_gating"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "computed_properties"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "local_notifications"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "on_device_cache"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "url_config"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "cache_key"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "build_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "surveys"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "is_scroll_enabled"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "reroute_back_button"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "intro_offer_eligibility"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v1, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    .line 40
    invoke-static {}, Lcom/superwall/sdk/models/paywall/Paywall;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x1d

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

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

    const/16 v2, 0xc

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x10

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const/16 v2, 0x12

    sget-object v3, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x14

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const/16 v2, 0x1b

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 59

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/superwall/sdk/models/paywall/Paywall;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 p1, 0x1c

    const/16 v16, 0x1b

    const/16 v17, 0x19

    const/16 v18, 0x14

    const/16 v19, 0x13

    const/16 v21, 0xe

    const/4 v15, 0x6

    const/16 v22, 0xd

    const/4 v13, 0x1

    const/16 v23, 0xc

    const/4 v14, 0x0

    const/16 v24, 0xb

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v8, v14, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/models/paywall/PaywallURL;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/superwall/sdk/models/paywall/PaywallURL;->unbox-impl()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v10

    :goto_0
    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v7, v14, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v14, v2, v15

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v14, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v25

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v9, v2, v24

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v15, v24

    invoke-interface {v0, v1, v15, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    aget-object v15, v2, v23

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v27, v2

    move/from16 v2, v23

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    aget-object v15, v27, v22

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    aget-object v15, v27, v21

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v2

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v15, 0x10

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    sget-object v20, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v24, v2

    move-object/from16 v2, v20

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v3

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v28, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    aget-object v3, v27, v19

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v29, v2

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    aget-object v3, v27, v18

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v2

    move/from16 v2, v18

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v2

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v30, v2

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    const/16 v3, 0x17

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x18

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    aget-object v32, v27, v17

    move-object/from16 v33, v2

    move-object/from16 v2, v32

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v3

    move/from16 v3, v17

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-interface {v0, v1, v3, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v31, v2

    const/16 v2, 0x1a

    invoke-interface {v0, v1, v2, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    aget-object v3, v27, v16

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v34, v2

    move/from16 v2, v16

    invoke-interface {v0, v1, v2, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    aget-object v3, v27, p1

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v13

    move/from16 v13, p1

    invoke-interface {v0, v1, v13, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    const v13, 0x1fffffff

    move-object/from16 v44, v2

    move-object/from16 v45, v3

    move-object/from16 v27, v4

    move-object/from16 v41, v10

    move-object/from16 v37, v18

    move-object/from16 v36, v19

    move-object/from16 v35, v29

    move-object/from16 v38, v30

    move-object/from16 v42, v31

    move-object/from16 v40, v32

    move-object/from16 v39, v33

    move-object/from16 v43, v34

    move-object/from16 v19, v8

    move-object/from16 v18, v12

    move/from16 v33, v15

    move-object/from16 v31, v21

    move-object/from16 v30, v22

    move-object/from16 v29, v23

    move-object/from16 v32, v24

    move-wide/from16 v23, v25

    move-object/from16 v34, v28

    move-object/from16 v26, v5

    move-object/from16 v25, v6

    move-object/from16 v21, v7

    move-object/from16 v28, v9

    move-object/from16 v22, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v11

    goto/16 :goto_12

    :cond_1
    move-object/from16 v27, v2

    move v2, v13

    move v3, v14

    move/from16 v13, p1

    move-object v14, v10

    const-wide/16 v25, 0x0

    move/from16 v55, v2

    move/from16 v49, v3

    move/from16 v52, v49

    move-object v2, v14

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v50, v48

    move-object/from16 v51, v50

    move/from16 v32, v15

    move-wide/from16 v53, v25

    move-object/from16 v15, v51

    :goto_1
    if-eqz v55, :cond_4

    move/from16 v56, v13

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v13}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    aget-object v13, v27, v56

    check-cast v13, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v57, v14

    move/from16 v14, v56

    invoke-interface {v0, v1, v14, v13, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    move/from16 v13, v49

    const/high16 v56, 0x10000000

    or-int v49, v13, v56

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v57, v14

    move/from16 v13, v49

    const/16 v14, 0x1b

    aget-object v16, v27, v14

    move-object/from16 v49, v10

    move-object/from16 v10, v16

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    const/high16 v10, 0x8000000

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v57, v14

    move/from16 v13, v49

    const/16 v14, 0x1b

    move-object/from16 v49, v10

    sget-object v10, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v14, 0x1a

    invoke-interface {v0, v1, v14, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    const/high16 v10, 0x4000000

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x19

    aget-object v14, v27, v10

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v14, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/high16 v14, 0x2000000

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x19

    const/16 v14, 0x18

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v46

    const/high16 v14, 0x1000000

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x19

    const/16 v14, 0x17

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v39

    const/high16 v14, 0x800000

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x19

    sget-object v14, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v10, 0x16

    invoke-interface {v0, v1, v10, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    const/high16 v10, 0x400000

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    sget-object v10, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v14, 0x15

    invoke-interface {v0, v1, v14, v10, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    const/high16 v10, 0x200000

    goto/16 :goto_3

    :pswitch_8
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x14

    aget-object v14, v27, v10

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v14, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/high16 v14, 0x100000

    goto :goto_2

    :pswitch_9
    move-object/from16 v57, v14

    move/from16 v13, v49

    const/16 v14, 0x13

    move-object/from16 v49, v10

    const/16 v10, 0x14

    aget-object v18, v27, v14

    move-object/from16 v10, v18

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v10, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/List;

    const/high16 v10, 0x80000

    goto :goto_3

    :pswitch_a
    move-object/from16 v57, v14

    move/from16 v13, v49

    const/16 v14, 0x13

    move-object/from16 v49, v10

    sget-object v10, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v14, 0x12

    invoke-interface {v0, v1, v14, v10, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    const/high16 v10, 0x40000

    goto :goto_3

    :pswitch_b
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v14, 0x11

    invoke-interface {v0, v1, v14, v10, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    const/high16 v10, 0x20000

    goto :goto_3

    :pswitch_c
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x10

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v52

    const/high16 v14, 0x10000

    :goto_2
    or-int/2addr v13, v14

    goto :goto_5

    :pswitch_d
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0x10

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v10, 0xf

    invoke-interface {v0, v1, v10, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v10, 0x8000

    :goto_3
    or-int/2addr v10, v13

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v13, v49

    move/from16 v49, v10

    move-object v10, v13

    :goto_4
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v24, v37

    move-object/from16 v13, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move-object/from16 v23, v51

    move-object/from16 v14, v57

    goto/16 :goto_c

    :pswitch_e
    move-object/from16 v57, v14

    move/from16 v13, v49

    move-object/from16 v49, v10

    const/16 v10, 0xe

    aget-object v14, v27, v10

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v14, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    or-int/lit16 v13, v13, 0x4000

    :goto_5
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v24, v37

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move-object/from16 v10, v49

    move-object/from16 v23, v51

    move-object/from16 v14, v57

    goto/16 :goto_6

    :pswitch_f
    move-object/from16 v57, v14

    move/from16 v13, v49

    const/16 v14, 0xd

    move-object/from16 v49, v10

    const/16 v10, 0xe

    aget-object v21, v27, v14

    move-object/from16 v10, v21

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v21, v2

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v14, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit16 v10, v13, 0x2000

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v13, v49

    move/from16 v49, v10

    move-object v10, v13

    move-object v14, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v24, v37

    move-object/from16 v13, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    goto/16 :goto_7

    :pswitch_10
    move-object/from16 v21, v2

    move-object v2, v14

    move/from16 v13, v49

    const/16 v14, 0xd

    move-object/from16 v49, v10

    const/16 v10, 0xc

    aget-object v23, v27, v10

    move-object/from16 v14, v23

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v2

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v10, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit16 v13, v13, 0x1000

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v24, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v14, v23

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move-object/from16 v10, v49

    move-object/from16 v23, v51

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move/from16 v49, v13

    move-object/from16 v13, v40

    goto/16 :goto_11

    :pswitch_11
    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v2, v37

    move/from16 v13, v49

    const/16 v14, 0xb

    move-object/from16 v49, v10

    const/16 v10, 0xc

    aget-object v24, v27, v14

    move-object/from16 v10, v24

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v24, v2

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v14, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Ljava/util/List;

    or-int/lit16 v2, v13, 0x800

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v14, v23

    move-object/from16 v13, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    goto/16 :goto_9

    :pswitch_12
    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v2, v45

    move/from16 v13, v49

    const/16 v14, 0xb

    move-object/from16 v49, v10

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v36, v2

    move-object/from16 v14, v40

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v40, v10

    check-cast v40, Ljava/lang/String;

    or-int/lit16 v10, v13, 0x400

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v49

    move/from16 v49, v10

    move-object v10, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v14, v23

    move-object/from16 v13, v40

    move-object/from16 v28, v43

    :goto_7
    move-object/from16 v23, v51

    goto/16 :goto_c

    :pswitch_13
    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/16 v2, 0xa

    move-object/from16 v49, v10

    const/16 v10, 0x9

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v41

    or-int/lit16 v13, v13, 0x200

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :pswitch_14
    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/16 v2, 0x8

    move-object/from16 v49, v10

    const/16 v10, 0x9

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v42

    or-int/lit16 v13, v13, 0x100

    sget-object v34, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :pswitch_15
    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x7

    move-object/from16 v49, v10

    const/16 v10, 0x9

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v53

    or-int/lit16 v13, v13, 0x80

    sget-object v33, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_8
    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v28, v43

    move-object/from16 v10, v49

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move/from16 v49, v13

    move-object v13, v14

    move-object/from16 v14, v23

    move-object/from16 v23, v51

    goto/16 :goto_11

    :pswitch_16
    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x7

    move-object/from16 v49, v10

    const/16 v10, 0x9

    aget-object v33, v27, v32

    move-object/from16 v2, v33

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v10, v32

    move-object/from16 v32, v3

    move v3, v10

    move-object/from16 v10, v51

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v51, v2

    check-cast v51, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    or-int/lit8 v2, v13, 0x40

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v4

    move-object v13, v14

    move-object/from16 v14, v23

    move-object/from16 v28, v43

    :goto_9
    move-object/from16 v10, v49

    move-object/from16 v23, v51

    const/4 v3, 0x3

    const/4 v4, 0x1

    goto :goto_b

    :pswitch_17
    move/from16 v13, v32

    move-object/from16 v32, v3

    move v3, v13

    move-object/from16 v21, v2

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v36, v45

    move/from16 v13, v49

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v30, v4

    move-object/from16 v3, v43

    const/4 v4, 0x5

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Ljava/lang/String;

    or-int/lit8 v2, v13, 0x20

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v13, v14

    move-object/from16 v14, v23

    move-object/from16 v28, v43

    const/4 v3, 0x3

    :goto_a
    const/4 v4, 0x1

    move-object/from16 v23, v10

    move-object/from16 v10, v49

    :goto_b
    move/from16 v49, v2

    goto/16 :goto_10

    :pswitch_18
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v3, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x4

    const/4 v4, 0x5

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v47

    or-int/lit8 v13, v13, 0x10

    sget-object v29, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v49

    move/from16 v49, v13

    move-object v13, v14

    move-object v14, v2

    move-object/from16 v28, v3

    :goto_c
    const/4 v2, 0x0

    const/4 v3, 0x3

    goto/16 :goto_f

    :pswitch_19
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v3, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x4

    const/4 v4, 0x5

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    sget-object v29, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    move-object/from16 v2, v29

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    if-eqz v44, :cond_2

    invoke-static/range {v44 .. v44}, Lcom/superwall/sdk/models/paywall/PaywallURL;->box-impl(Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/PaywallURL;

    move-result-object v29

    move-object/from16 v4, v29

    goto :goto_d

    :cond_2
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v28, v3

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/paywall/PaywallURL;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/PaywallURL;->unbox-impl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v44, v2

    goto :goto_e

    :cond_3
    const/16 v44, 0x0

    :goto_e
    or-int/lit8 v2, v13, 0x8

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v13, v14

    move-object/from16 v14, v23

    goto :goto_a

    :pswitch_1a
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v48

    or-int/lit8 v4, v13, 0x4

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v13, v14

    move-object/from16 v14, v23

    const/4 v2, 0x0

    move-object/from16 v23, v10

    move-object/from16 v10, v49

    move/from16 v49, v4

    :goto_f
    const/4 v4, 0x1

    goto/16 :goto_11

    :pswitch_1b
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v50

    or-int/lit8 v13, v13, 0x2

    sget-object v26, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v49

    move/from16 v49, v13

    move-object v13, v14

    move-object v14, v2

    :goto_10
    const/4 v2, 0x0

    goto :goto_11

    :pswitch_1c
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v38

    or-int/lit8 v13, v13, 0x1

    sget-object v25, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v58, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v49

    move/from16 v49, v13

    move-object v13, v14

    move-object/from16 v14, v58

    goto :goto_11

    :pswitch_1d
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    sget-object v25, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v55, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v49

    move/from16 v49, v13

    move-object v13, v14

    move-object/from16 v14, v55

    move/from16 v55, v2

    :goto_11
    move-object/from16 v40, v13

    move-object/from16 v2, v21

    move-object/from16 v51, v23

    move-object/from16 v37, v24

    move-object/from16 v43, v28

    move-object/from16 v4, v30

    move-object/from16 v3, v32

    move-object/from16 v45, v36

    const/16 v13, 0x1c

    const/16 v32, 0x6

    goto/16 :goto_1

    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v14

    move-object/from16 v24, v37

    move-object/from16 v14, v40

    move-object/from16 v28, v43

    move-object/from16 v36, v45

    move/from16 v13, v49

    move-object/from16 v49, v10

    move-object/from16 v10, v51

    move-object/from16 v43, v5

    move-object/from16 v37, v7

    move-object/from16 v35, v8

    move-object/from16 v22, v10

    move-object/from16 v34, v12

    move-object/from16 v27, v14

    move-object/from16 v29, v24

    move-object/from16 v31, v32

    move-object/from16 v16, v38

    move-object/from16 v40, v39

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v19, v44

    move-object/from16 v41, v46

    move-object/from16 v20, v47

    move-object/from16 v18, v48

    move-object/from16 v45, v49

    move-object/from16 v17, v50

    move/from16 v33, v52

    move-object/from16 v39, v6

    move-object/from16 v42, v9

    move-object/from16 v38, v15

    move-object/from16 v32, v21

    move-object/from16 v21, v28

    move-object/from16 v44, v30

    move-object/from16 v28, v36

    move-object/from16 v36, v11

    move-object/from16 v30, v23

    move-wide/from16 v23, v53

    :goto_12
    move v15, v13

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v14, Lcom/superwall/sdk/models/paywall/Paywall;

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-direct/range {v14 .. v47}, Lcom/superwall/sdk/models/paywall/Paywall;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

    .line 40
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/paywall/Paywall;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/superwall/sdk/models/paywall/Paywall;->write$Self$superwall_release(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/paywall/Paywall;)V

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

    .line 40
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
