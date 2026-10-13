.class public final Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;
.super Ljava/lang/Object;
.source "StoredEntitlementTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$$serializer;,
        Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoredEntitlementTransaction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoredEntitlementTransaction.kt\ncom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,141:1\n1202#2,2:142\n1230#2,4:144\n1863#2,2:150\n1062#2:152\n774#2:153\n865#2,2:154\n1062#2:156\n216#3,2:148\n*S KotlinDebug\n*F\n+ 1 StoredEntitlementTransaction.kt\ncom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory\n*L\n100#1:142,2\n100#1:144,4\n120#1:150,2\n133#1:152\n139#1:153\n139#1:154,2\n139#1:156\n104#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\u001d\u0012\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B1\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013J\u0015\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003J\u001f\u0010\u0018\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0004H\u00d6\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001\u00a2\u0006\u0002\u0008%R(\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;",
        "",
        "transactions",
        "",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
        "<init>",
        "(Ljava/util/Map;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getTransactions$annotations",
        "()V",
        "getTransactions",
        "()Ljava/util/Map;",
        "mergeWith",
        "currentTransactions",
        "",
        "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
        "allTransactions",
        "activeTransactions",
        "component1",
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

.field public static final Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$Companion;


# instance fields
.field private final transactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$Companion;

    const/4 v0, 0x1

    .line 85
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;->INSTANCE:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 88
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 88
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 85
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;Ljava/util/Map;ILjava/lang/Object;)Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->copy(Ljava/util/Map;)Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTransactions$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "transactions"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 85
    sget-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    .line 88
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final activeTransactions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    .line 139
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 153
    check-cast v1, Ljava/lang/Iterable;

    .line 156
    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$activeTransactions$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$activeTransactions$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final allTransactions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 152
    new-instance v1, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$allTransactions$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$allTransactions$$inlined$sortedByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;)Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;)",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;"
        }
    .end annotation

    const-string v0, "transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    iget-object v1, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    iget-object p1, p1, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTransactions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final mergeWith(Ljava/util/List;)Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;",
            ">;)",
            "Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;"
        }
    .end annotation

    const-string v0, "currentTransactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 142
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 143
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 144
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 145
    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 100
    invoke-interface {v3}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    .line 148
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    .line 105
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    if-eqz v5, :cond_1

    .line 108
    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;

    invoke-virtual {v3, v5}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;->from(Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    :cond_1
    sget-object v5, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;->withUpdatedActiveStatus(Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;Z)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 150
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;

    .line 121
    invoke-interface {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    invoke-interface {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 123
    sget-object v3, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;->Companion:Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;

    invoke-virtual {v3, v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction$Companion;->from(Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;)Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    :cond_4
    new-instance p1, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;

    invoke-direct {p1, v0}, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;->transactions:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserTransactionHistory(transactions="

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
