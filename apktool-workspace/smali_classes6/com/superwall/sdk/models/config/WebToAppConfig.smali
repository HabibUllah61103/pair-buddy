.class public final Lcom/superwall/sdk/models/config/WebToAppConfig;
.super Ljava/lang/Object;
.source "WebToAppConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/config/WebToAppConfig$$serializer;,
        Lcom/superwall/sdk/models/config/WebToAppConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B7\u0008\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0002\u0010\rJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001\u00a2\u0006\u0002\u0008\"R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R&\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R&\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0003\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/models/config/WebToAppConfig;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "entitlementsMaxAgeMs",
        "",
        "restoreAccesUrl",
        "",
        "urlSchema",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getEntitlementsMaxAgeMs$annotations",
        "getEntitlementsMaxAgeMs",
        "()J",
        "setEntitlementsMaxAgeMs",
        "(J)V",
        "getRestoreAccesUrl$annotations",
        "getRestoreAccesUrl",
        "()Ljava/lang/String;",
        "setRestoreAccesUrl",
        "(Ljava/lang/String;)V",
        "getUrlSchema$annotations",
        "getUrlSchema",
        "setUrlSchema",
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
.field public static final Companion:Lcom/superwall/sdk/models/config/WebToAppConfig$Companion;


# instance fields
.field private entitlementsMaxAgeMs:J

.field private restoreAccesUrl:Ljava/lang/String;

.field private urlSchema:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/config/WebToAppConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/config/WebToAppConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/config/WebToAppConfig;->Companion:Lcom/superwall/sdk/models/config/WebToAppConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    if-nez p6, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    iput-wide p2, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->entitlementsMaxAgeMs:J

    and-int/lit8 p2, p1, 0x2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->restoreAccesUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->restoreAccesUrl:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object p3, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->urlSchema:Ljava/lang/String;

    return-void

    :cond_2
    iput-object p5, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->urlSchema:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getEntitlementsMaxAgeMs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "entitlements_max_age_ms"
    .end annotation

    return-void
.end method

.method public static synthetic getRestoreAccesUrl$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "restore_access_url"
    .end annotation

    return-void
.end method

.method public static synthetic getUrlSchema$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "url_schema"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/config/WebToAppConfig;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->entitlementsMaxAgeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :goto_0
    iget-wide v1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->entitlementsMaxAgeMs:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->restoreAccesUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->restoreAccesUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->urlSchema:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->urlSchema:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getEntitlementsMaxAgeMs()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->entitlementsMaxAgeMs:J

    return-wide v0
.end method

.method public final getRestoreAccesUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->restoreAccesUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlSchema()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->urlSchema:Ljava/lang/String;

    return-object v0
.end method

.method public final setEntitlementsMaxAgeMs(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->entitlementsMaxAgeMs:J

    return-void
.end method

.method public final setRestoreAccesUrl(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->restoreAccesUrl:Ljava/lang/String;

    return-void
.end method

.method public final setUrlSchema(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/superwall/sdk/models/config/WebToAppConfig;->urlSchema:Ljava/lang/String;

    return-void
.end method
