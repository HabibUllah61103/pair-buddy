.class public final Lcom/superwall/sdk/models/entitlements/WebEntitlements;
.super Ljava/lang/Object;
.source "WebEntitlements.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/entitlements/WebEntitlements$$serializer;,
        Lcom/superwall/sdk/models/entitlements/WebEntitlements$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000  2\u00020\u0001:\u0002\u001f B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B%\u0008\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0004\u0010\nJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001\u00a2\u0006\u0002\u0008\u001eR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/superwall/sdk/models/entitlements/WebEntitlements;",
        "",
        "customerInfo",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "<init>",
        "(Lcom/superwall/sdk/models/customer/CustomerInfo;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getCustomerInfo$annotations",
        "()V",
        "getCustomerInfo",
        "()Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/models/entitlements/WebEntitlements$Companion;


# instance fields
.field private final customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/entitlements/WebEntitlements$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/entitlements/WebEntitlements$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->Companion:Lcom/superwall/sdk/models/entitlements/WebEntitlements$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/superwall/sdk/models/entitlements/WebEntitlements;-><init>(Lcom/superwall/sdk/models/customer/CustomerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/customer/CustomerInfo;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/customer/CustomerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/entitlements/WebEntitlements;-><init>(Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/entitlements/WebEntitlements;Lcom/superwall/sdk/models/customer/CustomerInfo;ILjava/lang/Object;)Lcom/superwall/sdk/models/entitlements/WebEntitlements;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->copy(Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/models/entitlements/WebEntitlements;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCustomerInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "customerInfo"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/entitlements/WebEntitlements;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/models/entitlements/WebEntitlements;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/entitlements/WebEntitlements;-><init>(Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/entitlements/WebEntitlements;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/entitlements/WebEntitlements;

    iget-object v1, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object p1, p1, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/superwall/sdk/models/customer/CustomerInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/models/entitlements/WebEntitlements;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebEntitlements(customerInfo="

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
