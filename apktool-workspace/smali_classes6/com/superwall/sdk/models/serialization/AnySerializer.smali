.class public final Lcom/superwall/sdk/models/serialization/AnySerializer;
.super Ljava/lang/Object;
.source "AnySerializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnySerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnySerializer.kt\ncom/superwall/sdk/models/serialization/AnySerializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,122:1\n774#2:123\n865#2,2:124\n1187#2,2:126\n1261#2,4:128\n1246#2,4:134\n1557#2:138\n1628#2,3:139\n462#3:132\n412#3:133\n*S KotlinDebug\n*F\n+ 1 AnySerializer.kt\ncom/superwall/sdk/models/serialization/AnySerializer\n*L\n46#1:123\n46#1:124,2\n47#1:126,2\n47#1:128,4\n89#1:134,4\n99#1:138\n99#1:139,3\n89#1:132\n89#1:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001c\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u001cH\u0002J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u001fH\u0002J\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000b\u0010\u0004R\u0014\u0010\u000c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u0004\u00a8\u0006!"
    }
    d2 = {
        "Lcom/superwall/sdk/models/serialization/AnySerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "<init>",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor$annotations",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "listDescriptor",
        "getListDescriptor$annotations",
        "mapDescriptor",
        "getMapDescriptor$annotations",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "deserializePrimitive",
        "element",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "deserializeObject",
        "",
        "",
        "Lkotlinx/serialization/json/JsonObject;",
        "deserializeArray",
        "",
        "Lkotlinx/serialization/json/JsonArray;",
        "serializerFor",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private static final listDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private static final mapDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/superwall/sdk/models/serialization/AnySerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/serialization/AnySerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    .line 19
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/descriptors/SerialKind;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "Any"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    sput-object v1, Lcom/superwall/sdk/models/serialization/AnySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$LIST;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    move-object v3, v1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialKind;

    new-array v4, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "List<Any>"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    sput-object v1, Lcom/superwall/sdk/models/serialization/AnySerializer;->listDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 25
    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    move-object v3, v1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialKind;

    new-array v4, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v2, "Map<String, Any>"

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/serialization/AnySerializer;->mapDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final deserializeArray(Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    check-cast p1, Ljava/lang/Iterable;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 101
    instance-of v2, v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializePrimitive(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 102
    :cond_0
    instance-of v2, v1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v1, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializeObject(Lkotlinx/serialization/json/JsonObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 103
    :cond_1
    instance-of v2, v1, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v1, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializeArray(Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;

    move-result-object v1

    .line 140
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_2
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Unknown type in JsonArray"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final deserializeObject(Lkotlinx/serialization/json/JsonObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 88
    check-cast p1, Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 134
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 135
    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 91
    instance-of v3, v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializePrimitive(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 92
    :cond_0
    instance-of v3, v1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v1, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializeObject(Lkotlinx/serialization/json/JsonObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 93
    :cond_1
    instance-of v3, v1, Lkotlinx/serialization/json/JsonArray;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v1, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializeArray(Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;

    move-result-object v1

    .line 135
    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_2
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Unknown type in JsonObject"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_3
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final deserializePrimitive(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Object;
    .locals 2

    .line 79
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getBooleanOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getBoolean(Lkotlinx/serialization/json/JsonPrimitive;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 81
    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getIntOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getLongOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getLong(Lkotlinx/serialization/json/JsonPrimitive;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 83
    :cond_3
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getDoubleOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getDouble(Lkotlinx/serialization/json/JsonPrimitive;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 84
    :cond_4
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Unknown primitive type"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic getDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getListDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getMapDescriptor$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 69
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 70
    instance-of v0, p1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializePrimitive(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    instance-of v0, p1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializeObject(Lkotlinx/serialization/json/JsonObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    instance-of v0, p1, Lkotlinx/serialization/json/JsonArray;

    if-eqz v0, :cond_3

    check-cast p1, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/serialization/AnySerializer;->deserializeArray(Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 73
    :cond_3
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Unknown type"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "This class can be loaded only by Json"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 18
    sget-object v0, Lcom/superwall/sdk/models/serialization/AnySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 10

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeBoolean(Z)V

    return-void

    .line 34
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeInt(I)V

    return-void

    .line 35
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->encodeLong(J)V

    return-void

    .line 36
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeFloat(F)V

    return-void

    .line 37
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->encodeDouble(D)V

    return-void

    .line 38
    :cond_5
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 39
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 40
    sget-object v0, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ListSerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 41
    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_6
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 45
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 124
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 124
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 123
    check-cast v0, Ljava/lang/Iterable;

    const/16 p2, 0xa

    .line 126
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p2

    const/16 v1, 0x10

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 127
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 128
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 129
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :cond_9
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    sget-object v0, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {p2, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    .line 50
    check-cast p2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_a
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 55
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 56
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: Unsupported type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", skipping..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 54
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 59
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->encodeNull()V

    return-void
.end method

.method public final serializerFor(Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object p1, Lkotlin/jvm/internal/BooleanCompanionObject;->INSTANCE:Lkotlin/jvm/internal/BooleanCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 113
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object p1, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object p1, Lkotlin/jvm/internal/LongCompanionObject;->INSTANCE:Lkotlin/jvm/internal/LongCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    sget-object p1, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_5
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_6

    sget-object p1, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ListSerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_6
    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    sget-object v0, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {p1, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_7
    sget-object p1, Lcom/superwall/sdk/models/serialization/AnySerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnySerializer;

    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 118
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
