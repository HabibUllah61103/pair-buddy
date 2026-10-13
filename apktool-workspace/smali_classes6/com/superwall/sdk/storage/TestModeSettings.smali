.class public final Lcom/superwall/sdk/storage/TestModeSettings;
.super Ljava/lang/Object;
.source "CacheKeys.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/storage/TestModeSettings$$serializer;,
        Lcom/superwall/sdk/storage/TestModeSettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0002#$B!\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B5\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0007\u0010\rJ\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u0014\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\nH\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001\u00a2\u0006\u0002\u0008\"R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/TestModeSettings;",
        "",
        "entitlementSelections",
        "",
        "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
        "freeTrialOverride",
        "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "<init>",
        "(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getEntitlementSelections",
        "()Ljava/util/List;",
        "getFreeTrialOverride",
        "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "component1",
        "component2",
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

.field public static final Companion:Lcom/superwall/sdk/storage/TestModeSettings$Companion;


# instance fields
.field private final entitlementSelections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/storage/TestModeSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/storage/TestModeSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/storage/TestModeSettings;->Companion:Lcom/superwall/sdk/storage/TestModeSettings$Companion;

    const/4 v0, 0x2

    .line 379
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection$$serializer;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->Companion:Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/storage/TestModeSettings;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/superwall/sdk/storage/TestModeSettings;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-nez p4, :cond_0

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 379
    :cond_0
    iput-object p2, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 382
    sget-object p1, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 379
    iput-object p1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
            ")V"
        }
    .end annotation

    const-string v0, "entitlementSelections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeTrialOverride"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    .line 382
    iput-object p2, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 382
    sget-object p2, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 380
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/storage/TestModeSettings;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 379
    sget-object v0, Lcom/superwall/sdk/storage/TestModeSettings;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/storage/TestModeSettings;Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;ILjava/lang/Object;)Lcom/superwall/sdk/storage/TestModeSettings;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/TestModeSettings;->copy(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)Lcom/superwall/sdk/storage/TestModeSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/storage/TestModeSettings;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 379
    sget-object v0, Lcom/superwall/sdk/storage/TestModeSettings;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 379
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 382
    sget-object v3, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    if-eq v2, v3, :cond_3

    .line 379
    :goto_1
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)Lcom/superwall/sdk/storage/TestModeSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
            ")",
            "Lcom/superwall/sdk/storage/TestModeSettings;"
        }
    .end annotation

    const-string v0, "entitlementSelections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeTrialOverride"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/storage/TestModeSettings;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/storage/TestModeSettings;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/storage/TestModeSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/storage/TestModeSettings;

    iget-object v1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    iget-object p1, p1, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEntitlementSelections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    return-object v0
.end method

.method public final getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/storage/TestModeSettings;->entitlementSelections:Ljava/util/List;

    iget-object v1, p0, Lcom/superwall/sdk/storage/TestModeSettings;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TestModeSettings(entitlementSelections="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", freeTrialOverride="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
