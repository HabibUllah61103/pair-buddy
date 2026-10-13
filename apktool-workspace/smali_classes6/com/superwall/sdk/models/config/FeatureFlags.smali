.class public final Lcom/superwall/sdk/models/config/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/config/FeatureFlags$$serializer;,
        Lcom/superwall/sdk/models/config/FeatureFlags$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 D2\u00020\u0001:\u0002CDBG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB[\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u0011J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003JY\u00105\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\u0013\u00106\u001a\u00020\u00032\u0008\u00107\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00108\u001a\u00020\u000eH\u00d6\u0001J\t\u00109\u001a\u00020:H\u00d6\u0001J%\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0001\u00a2\u0006\u0002\u0008BR$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R$\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u0013\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R$\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u0013\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010\u0017R$\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u0013\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R$\u0010\u0008\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008$\u0010\u0013\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R$\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\'\u0010\u0013\u001a\u0004\u0008(\u0010\u0015\"\u0004\u0008)\u0010\u0017R$\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008*\u0010\u0013\u001a\u0004\u0008+\u0010\u0015\"\u0004\u0008,\u0010\u0017\u00a8\u0006E"
    }
    d2 = {
        "Lcom/superwall/sdk/models/config/FeatureFlags;",
        "",
        "enableConfigRefresh",
        "",
        "enableSessionEvents",
        "enablePostback",
        "enableUserIdSeed",
        "disableVerboseEvents",
        "enableMultiplePaywallUrls",
        "enableCELLogging",
        "web2App",
        "<init>",
        "(ZZZZZZZZ)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getEnableConfigRefresh$annotations",
        "()V",
        "getEnableConfigRefresh",
        "()Z",
        "setEnableConfigRefresh",
        "(Z)V",
        "getEnableSessionEvents$annotations",
        "getEnableSessionEvents",
        "setEnableSessionEvents",
        "getEnablePostback$annotations",
        "getEnablePostback",
        "setEnablePostback",
        "getEnableUserIdSeed$annotations",
        "getEnableUserIdSeed",
        "setEnableUserIdSeed",
        "getDisableVerboseEvents$annotations",
        "getDisableVerboseEvents",
        "setDisableVerboseEvents",
        "getEnableMultiplePaywallUrls$annotations",
        "getEnableMultiplePaywallUrls",
        "setEnableMultiplePaywallUrls",
        "getEnableCELLogging$annotations",
        "getEnableCELLogging",
        "setEnableCELLogging",
        "getWeb2App$annotations",
        "getWeb2App",
        "setWeb2App",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
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
.field public static final Companion:Lcom/superwall/sdk/models/config/FeatureFlags$Companion;


# instance fields
.field private disableVerboseEvents:Z

.field private enableCELLogging:Z

.field private enableConfigRefresh:Z

.field private enableMultiplePaywallUrls:Z

.field private enablePostback:Z

.field private enableSessionEvents:Z

.field private enableUserIdSeed:Z

.field private web2App:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/config/FeatureFlags$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/config/FeatureFlags$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/config/FeatureFlags;->Companion:Lcom/superwall/sdk/models/config/FeatureFlags$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p10, p1, 0xff

    const/16 v0, 0xff

    if-eq v0, p10, :cond_0

    .line 14
    sget-object p10, Lcom/superwall/sdk/models/config/FeatureFlags$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureFlags$$serializer;

    invoke-virtual {p10}, Lcom/superwall/sdk/models/config/FeatureFlags$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p10

    invoke-static {p1, v0, p10}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    iput-boolean p3, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    iput-boolean p4, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    iput-boolean p5, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    iput-boolean p6, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    iput-boolean p7, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    iput-boolean p8, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    iput-boolean p9, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    return-void
.end method

.method public constructor <init>(ZZZZZZZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    .line 17
    iput-boolean p2, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    .line 18
    iput-boolean p3, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    .line 19
    iput-boolean p4, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    .line 20
    iput-boolean p5, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    .line 21
    iput-boolean p6, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    .line 22
    iput-boolean p7, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    .line 23
    iput-boolean p8, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/models/config/FeatureFlags;ZZZZZZZZILjava/lang/Object;)Lcom/superwall/sdk/models/config/FeatureFlags;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-boolean p2, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-boolean p3, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-boolean p4, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-boolean p5, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-boolean p6, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-boolean p7, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-boolean p8, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    :cond_7
    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/superwall/sdk/models/config/FeatureFlags;->copy(ZZZZZZZZ)Lcom/superwall/sdk/models/config/FeatureFlags;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDisableVerboseEvents$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "disable_verbose_events"
    .end annotation

    return-void
.end method

.method public static synthetic getEnableCELLogging$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enable_cel_logging"
    .end annotation

    return-void
.end method

.method public static synthetic getEnableConfigRefresh$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enable_config_refresh_v2"
    .end annotation

    return-void
.end method

.method public static synthetic getEnableMultiplePaywallUrls$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enable_multiple_paywall_urls"
    .end annotation

    return-void
.end method

.method public static synthetic getEnablePostback$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enable_postback"
    .end annotation

    return-void
.end method

.method public static synthetic getEnableSessionEvents$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enable_session_events"
    .end annotation

    return-void
.end method

.method public static synthetic getEnableUserIdSeed$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enable_userid_seed"
    .end annotation

    return-void
.end method

.method public static synthetic getWeb2App$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "web_2_app"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/config/FeatureFlags;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 14
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x7

    iget-boolean p0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    return v0
.end method

.method public final copy(ZZZZZZZZ)Lcom/superwall/sdk/models/config/FeatureFlags;
    .locals 9

    new-instance v0, Lcom/superwall/sdk/models/config/FeatureFlags;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/models/config/FeatureFlags;-><init>(ZZZZZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/config/FeatureFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/config/FeatureFlags;

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDisableVerboseEvents()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    return v0
.end method

.method public final getEnableCELLogging()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    return v0
.end method

.method public final getEnableConfigRefresh()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    return v0
.end method

.method public final getEnableMultiplePaywallUrls()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    return v0
.end method

.method public final getEnablePostback()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    return v0
.end method

.method public final getEnableSessionEvents()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    return v0
.end method

.method public final getEnableUserIdSeed()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    return v0
.end method

.method public final getWeb2App()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDisableVerboseEvents(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    return-void
.end method

.method public final setEnableCELLogging(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    return-void
.end method

.method public final setEnableConfigRefresh(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    return-void
.end method

.method public final setEnableMultiplePaywallUrls(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    return-void
.end method

.method public final setEnablePostback(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    return-void
.end method

.method public final setEnableSessionEvents(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    return-void
.end method

.method public final setEnableUserIdSeed(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    return-void
.end method

.method public final setWeb2App(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableConfigRefresh:Z

    iget-boolean v1, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableSessionEvents:Z

    iget-boolean v2, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enablePostback:Z

    iget-boolean v3, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableUserIdSeed:Z

    iget-boolean v4, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->disableVerboseEvents:Z

    iget-boolean v5, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableMultiplePaywallUrls:Z

    iget-boolean v6, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->enableCELLogging:Z

    iget-boolean v7, p0, Lcom/superwall/sdk/models/config/FeatureFlags;->web2App:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FeatureFlags(enableConfigRefresh="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", enableSessionEvents="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enablePostback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableUserIdSeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableVerboseEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMultiplePaywallUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCELLogging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", web2App="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
