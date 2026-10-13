.class public final Lcom/superwall/sdk/models/product/AppStoreProduct;
.super Ljava/lang/Object;
.source "ProductItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/product/AppStoreProduct$$serializer;,
        Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001\u00a2\u0006\u0002\u0008%R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/models/product/AppStoreProduct;",
        "",
        "store",
        "Lcom/superwall/sdk/models/product/Store;",
        "productIdentifier",
        "",
        "<init>",
        "(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/superwall/sdk/models/product/Store;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getStore$annotations",
        "()V",
        "getStore",
        "()Lcom/superwall/sdk/models/product/Store;",
        "getProductIdentifier$annotations",
        "getProductIdentifier",
        "()Ljava/lang/String;",
        "fullIdentifier",
        "getFullIdentifier",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
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

.field public static final Companion:Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;


# instance fields
.field private final productIdentifier:Ljava/lang/String;

.field private final store:Lcom/superwall/sdk/models/product/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/product/AppStoreProduct;->Companion:Lcom/superwall/sdk/models/product/AppStoreProduct$Companion;

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/superwall/sdk/models/product/Store;->Companion:Lcom/superwall/sdk/models/product/Store$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/Store$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/product/AppStoreProduct;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/superwall/sdk/models/product/Store;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x2

    const/4 v0, 0x2

    if-eq v0, p4, :cond_0

    .line 109
    sget-object p4, Lcom/superwall/sdk/models/product/AppStoreProduct$$serializer;->INSTANCE:Lcom/superwall/sdk/models/product/AppStoreProduct$$serializer;

    invoke-virtual {p4}, Lcom/superwall/sdk/models/product/AppStoreProduct$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    .line 112
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->APP_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 109
    iput-object p1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    :goto_0
    iput-object p3, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    .line 113
    iput-object p2, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 112
    sget-object p1, Lcom/superwall/sdk/models/product/Store;->APP_STORE:Lcom/superwall/sdk/models/product/Store;

    .line 110
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/models/product/AppStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 109
    sget-object v0, Lcom/superwall/sdk/models/product/AppStoreProduct;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/product/AppStoreProduct;Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/models/product/AppStoreProduct;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/product/AppStoreProduct;->copy(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)Lcom/superwall/sdk/models/product/AppStoreProduct;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getProductIdentifier$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "product_identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getStore$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "store"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/product/AppStoreProduct;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 109
    sget-object v0, Lcom/superwall/sdk/models/product/AppStoreProduct;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    .line 112
    sget-object v3, Lcom/superwall/sdk/models/product/Store;->APP_STORE:Lcom/superwall/sdk/models/product/Store;

    if-eq v2, v3, :cond_1

    .line 109
    :goto_0
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)Lcom/superwall/sdk/models/product/AppStoreProduct;
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/product/AppStoreProduct;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/models/product/AppStoreProduct;-><init>(Lcom/superwall/sdk/models/product/Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/product/AppStoreProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/product/AppStoreProduct;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object v3, p1, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFullIdentifier()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductIdentifier()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getStore()Lcom/superwall/sdk/models/product/Store;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/product/Store;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->store:Lcom/superwall/sdk/models/product/Store;

    iget-object v1, p0, Lcom/superwall/sdk/models/product/AppStoreProduct;->productIdentifier:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppStoreProduct(store="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", productIdentifier="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
