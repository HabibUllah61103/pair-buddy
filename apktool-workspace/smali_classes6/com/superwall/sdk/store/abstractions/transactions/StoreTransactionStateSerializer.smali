.class public final Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;
.super Ljava/lang/Object;
.source "StoreTransactionType.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;

    invoke-direct {v0}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;

    .line 35
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "com.superwall.sdk.store.abstractions.transactions.StoreTransactionState"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "deferred"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Deferred;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Deferred;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 55
    :sswitch_1
    const-string v0, "purchasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 55
    :sswitch_2
    const-string v0, "restored"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 55
    :sswitch_3
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 55
    :sswitch_4
    const-string v0, "purchased"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;->INSTANCE:Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;

    check-cast p1, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    return-object p1

    .line 61
    :cond_0
    :goto_0
    new-instance v0, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown string value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ac8647d -> :sswitch_4
        -0x4c696bc3 -> :sswitch_3
        -0x1410806a -> :sswitch_2
        0x11bbe57e -> :sswitch_1
        0x269e07df -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v0, p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;

    if-eqz v0, :cond_0

    const-string p2, "purchasing"

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;

    if-eqz v0, :cond_1

    const-string p2, "purchased"

    goto :goto_0

    .line 46
    :cond_1
    instance-of v0, p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;

    if-eqz v0, :cond_2

    const-string p2, "failed"

    goto :goto_0

    .line 47
    :cond_2
    instance-of v0, p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;

    if-eqz v0, :cond_3

    const-string p2, "restored"

    goto :goto_0

    .line 48
    :cond_3
    instance-of p2, p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Deferred;

    if-eqz p2, :cond_4

    const-string p2, "deferred"

    .line 50
    :goto_0
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;)V

    return-void
.end method
