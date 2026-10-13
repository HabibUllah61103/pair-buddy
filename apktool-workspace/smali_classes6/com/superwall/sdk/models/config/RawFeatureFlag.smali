.class public final Lcom/superwall/sdk/models/config/RawFeatureFlag;
.super Ljava/lang/Object;
.source "FeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/config/RawFeatureFlag$$serializer;,
        Lcom/superwall/sdk/models/config/RawFeatureFlag$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B-\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001\u00a2\u0006\u0002\u0008\"R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/models/config/RawFeatureFlag;",
        "",
        "key",
        "",
        "enabled",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getKey$annotations",
        "()V",
        "getKey",
        "()Ljava/lang/String;",
        "getEnabled$annotations",
        "getEnabled",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field public static final Companion:Lcom/superwall/sdk/models/config/RawFeatureFlag$Companion;


# instance fields
.field private final enabled:Z

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/config/RawFeatureFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/config/RawFeatureFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->Companion:Lcom/superwall/sdk/models/config/RawFeatureFlag$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 6
    sget-object p4, Lcom/superwall/sdk/models/config/RawFeatureFlag$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/RawFeatureFlag$$serializer;

    invoke-virtual {p4}, Lcom/superwall/sdk/models/config/RawFeatureFlag$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/config/RawFeatureFlag;Ljava/lang/String;ZILjava/lang/Object;)Lcom/superwall/sdk/models/config/RawFeatureFlag;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/models/config/RawFeatureFlag;->copy(Ljava/lang/String;Z)Lcom/superwall/sdk/models/config/RawFeatureFlag;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enabled"
    .end annotation

    return-void
.end method

.method public static synthetic getKey$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "key"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/config/RawFeatureFlag;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-boolean p0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/superwall/sdk/models/config/RawFeatureFlag;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/models/config/RawFeatureFlag;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/config/RawFeatureFlag;

    iget-object v1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->key:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/RawFeatureFlag;->enabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RawFeatureFlag(key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
