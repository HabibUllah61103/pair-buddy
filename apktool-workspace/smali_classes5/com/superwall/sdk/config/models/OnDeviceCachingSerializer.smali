.class public final Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;
.super Ljava/lang/Object;
.source "OnDeviceCaching.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/config/models/OnDeviceCaching;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/config/models/OnDeviceCaching;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

    .line 19
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "com.superwall.sdk.config.models.OnDeviceCaching"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/config/models/OnDeviceCaching;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    .line 35
    const-string v0, "ENABLED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/superwall/sdk/config/models/OnDeviceCaching$Enabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Enabled;

    check-cast p1, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    return-object p1

    .line 36
    :cond_0
    const-string v0, "DISABLED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    check-cast p1, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    return-object p1

    .line 37
    :cond_1
    sget-object p1, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    check-cast p1, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    return-object p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/config/models/OnDeviceCaching;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/config/models/OnDeviceCaching;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p2, Lcom/superwall/sdk/config/models/OnDeviceCaching$Enabled;

    if-eqz v0, :cond_0

    const-string p2, "ENABLED"

    goto :goto_0

    .line 28
    :cond_0
    instance-of p2, p2, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    if-eqz p2, :cond_1

    const-string p2, "DISABLED"

    .line 30
    :goto_0
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/config/models/OnDeviceCaching;)V

    return-void
.end method
