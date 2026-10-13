.class public final Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;
.super Ljava/lang/Object;
.source "PassableValues.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$$serializer;,
        Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B1\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001J%\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0001\u00a2\u0006\u0002\u0008\u001dR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006 "
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;",
        "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
        "value",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getValue",
        "()Ljava/util/Map;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "map"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$Companion;


# instance fields
.field private final value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->Companion:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$Companion;

    const/4 v0, 0x1

    .line 47
    new-array v1, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/16 v5, 0xb

    new-array v7, v5, [Lkotlin/reflect/KClass;

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v7, v0

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FunctionValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v13, 0x5

    aput-object v8, v7, v13

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v14, 0x6

    aput-object v8, v7, v14

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v15, 0x7

    aput-object v8, v7, v15

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/16 v16, 0x8

    aput-object v8, v7, v16

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$TimestampValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/16 v17, 0x9

    aput-object v8, v7, v17

    const-class v8, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/16 v18, 0xa

    aput-object v8, v7, v18

    new-array v8, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BoolValue$$serializer;

    aput-object v5, v8, v10

    sget-object v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$BytesValue$$serializer;

    aput-object v5, v8, v0

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FloatValue$$serializer;

    aput-object v0, v8, v9

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FunctionValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$FunctionValue$$serializer;

    aput-object v0, v8, v11

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$IntValue$$serializer;

    aput-object v0, v8, v12

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$ListValue$$serializer;

    aput-object v0, v8, v13

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$$serializer;

    aput-object v0, v8, v14

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$NullValue;

    new-array v9, v10, [Ljava/lang/annotation/Annotation;

    const-string v11, "Null"

    invoke-direct {v0, v11, v5, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v8, v15

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$StringValue$$serializer;

    aput-object v0, v8, v16

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$TimestampValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$TimestampValue$$serializer;

    aput-object v0, v8, v17

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$UIntValue$$serializer;

    aput-object v0, v8, v18

    new-array v9, v10, [Ljava/lang/annotation/Annotation;

    const-string v5, "com.superwall.sdk.paywall.presentation.rule_logic.cel.models.PassableValue"

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v10

    sput-object v1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 47
    sget-object p3, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$$serializer;

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 47
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->copy(Ljava/util/Map;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 47
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;)Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;)",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/PassableValue$MapValue;->value:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MapValue(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
