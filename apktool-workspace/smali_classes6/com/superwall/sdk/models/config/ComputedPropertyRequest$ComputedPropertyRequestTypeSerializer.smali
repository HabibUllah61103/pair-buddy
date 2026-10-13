.class public final Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;
.super Ljava/lang/Object;
.source "ComputedPropertyRequest.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/models/config/ComputedPropertyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComputedPropertyRequestTypeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComputedPropertyRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputedPropertyRequest.kt\ncom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;

    .line 101
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.superwall.sdk.models.config.ComputedPropertyRequest.ComputedPropertyRequestType"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "rawValue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;
    .locals 5

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->values()[Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->getRawValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported computed property type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->getRawValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p2, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;)V

    return-void
.end method
