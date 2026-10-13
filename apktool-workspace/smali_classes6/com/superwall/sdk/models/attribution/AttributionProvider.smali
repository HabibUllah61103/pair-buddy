.class public final enum Lcom/superwall/sdk/models/attribution/AttributionProvider;
.super Ljava/lang/Enum;
.source "AttributionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/attribution/AttributionProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008!\u0008\u0087\u0081\u0002\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001#B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
        "",
        "rawName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawName",
        "()Ljava/lang/String;",
        "ADJUST_ID",
        "AMPLITUDE_DEVICE_ID",
        "AMPLITUDE_USER_ID",
        "APPSFLYER_ID",
        "BRAZE_ALIAS_NAME",
        "BRAZE_ALIAS_LABEL",
        "ONESIGNAL_ID",
        "FB_ANON_ID",
        "FIREBASE_APP_INSTANCE_ID",
        "ITERABLE_USER_ID",
        "ITERABLE_CAMPAIGN_ID",
        "ITERABLE_TEMPLATE_ID",
        "MIXPANEL_DISTINCT_ID",
        "MPARTICLE_ID",
        "CLEVERTAP_ID",
        "AIRSHIP_CHANNEL_ID",
        "KOCHAVA_DEVICE_ID",
        "TENJIN_ID",
        "POSTHOG_USER_ID",
        "CUSTOMERIO_ID",
        "META",
        "AMPLITUDE",
        "MIXPANEL",
        "GOOGLE_ADS",
        "GOOGLE_APP_SET",
        "APPSTACK",
        "CUSTOM",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/models/attribution/AttributionProvider;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum ADJUST_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "adjustId"
    .end annotation
.end field

.field public static final enum AIRSHIP_CHANNEL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "airshipChannelId"
    .end annotation
.end field

.field public static final enum AMPLITUDE:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "amplitude"
    .end annotation
.end field

.field public static final enum AMPLITUDE_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "amplitudeDeviceId"
    .end annotation
.end field

.field public static final enum AMPLITUDE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "amplitudeUserId"
    .end annotation
.end field

.field public static final enum APPSFLYER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "appsflyerId"
    .end annotation
.end field

.field public static final enum APPSTACK:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "appstackId"
    .end annotation
.end field

.field public static final enum BRAZE_ALIAS_LABEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "brazeAliasLabel"
    .end annotation
.end field

.field public static final enum BRAZE_ALIAS_NAME:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "brazeAliasName"
    .end annotation
.end field

.field public static final enum CLEVERTAP_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "clevertapId"
    .end annotation
.end field

.field public static final enum CUSTOM:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "custom"
    .end annotation
.end field

.field public static final enum CUSTOMERIO_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "customerioId"
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/attribution/AttributionProvider$Companion;

.field public static final enum FB_ANON_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "fbAnonId"
    .end annotation
.end field

.field public static final enum FIREBASE_APP_INSTANCE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "firebaseAppInstanceId"
    .end annotation
.end field

.field public static final enum GOOGLE_ADS:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "googleAds"
    .end annotation
.end field

.field public static final enum GOOGLE_APP_SET:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "googleAppSetId"
    .end annotation
.end field

.field public static final enum ITERABLE_CAMPAIGN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "iterableCampaignId"
    .end annotation
.end field

.field public static final enum ITERABLE_TEMPLATE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "iterableTemplateId"
    .end annotation
.end field

.field public static final enum ITERABLE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "iterableUserId"
    .end annotation
.end field

.field public static final enum KOCHAVA_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "kochavaDeviceId"
    .end annotation
.end field

.field public static final enum META:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "meta"
    .end annotation
.end field

.field public static final enum MIXPANEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "mixpanel"
    .end annotation
.end field

.field public static final enum MIXPANEL_DISTINCT_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "mixpanelDistinctId"
    .end annotation
.end field

.field public static final enum MPARTICLE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "mparticleId"
    .end annotation
.end field

.field public static final enum ONESIGNAL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "onesignalId"
    .end annotation
.end field

.field public static final enum POSTHOG_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "posthogUserId"
    .end annotation
.end field

.field public static final enum TENJIN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "tenjinId"
    .end annotation
.end field


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$DOOXsBG8DHd6yghVSaiRo1It06c()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/models/attribution/AttributionProvider;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .locals 28

    sget-object v1, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ADJUST_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v2, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v3, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v4, Lcom/superwall/sdk/models/attribution/AttributionProvider;->APPSFLYER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v5, Lcom/superwall/sdk/models/attribution/AttributionProvider;->BRAZE_ALIAS_NAME:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v6, Lcom/superwall/sdk/models/attribution/AttributionProvider;->BRAZE_ALIAS_LABEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v7, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ONESIGNAL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v8, Lcom/superwall/sdk/models/attribution/AttributionProvider;->FB_ANON_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v9, Lcom/superwall/sdk/models/attribution/AttributionProvider;->FIREBASE_APP_INSTANCE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v10, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v11, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_CAMPAIGN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v12, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_TEMPLATE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v13, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MIXPANEL_DISTINCT_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v14, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MPARTICLE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v15, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CLEVERTAP_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v16, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AIRSHIP_CHANNEL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v17, Lcom/superwall/sdk/models/attribution/AttributionProvider;->KOCHAVA_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v18, Lcom/superwall/sdk/models/attribution/AttributionProvider;->TENJIN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v19, Lcom/superwall/sdk/models/attribution/AttributionProvider;->POSTHOG_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v20, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CUSTOMERIO_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v21, Lcom/superwall/sdk/models/attribution/AttributionProvider;->META:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v22, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v23, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MIXPANEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v24, Lcom/superwall/sdk/models/attribution/AttributionProvider;->GOOGLE_ADS:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v25, Lcom/superwall/sdk/models/attribution/AttributionProvider;->GOOGLE_APP_SET:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v26, Lcom/superwall/sdk/models/attribution/AttributionProvider;->APPSTACK:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    sget-object v27, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CUSTOM:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    filled-new-array/range {v1 .. v27}, [Lcom/superwall/sdk/models/attribution/AttributionProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x0

    const-string v2, "adjustId"

    const-string v3, "ADJUST_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ADJUST_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 20
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x1

    const-string v2, "amplitudeDeviceId"

    const-string v3, "AMPLITUDE_DEVICE_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 24
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x2

    const-string v2, "amplitudeUserId"

    const-string v3, "AMPLITUDE_USER_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 28
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x3

    const-string v2, "appsflyerId"

    const-string v3, "APPSFLYER_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->APPSFLYER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 32
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x4

    const-string v2, "brazeAliasName"

    const-string v3, "BRAZE_ALIAS_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->BRAZE_ALIAS_NAME:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 36
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x5

    const-string v2, "brazeAliasLabel"

    const-string v3, "BRAZE_ALIAS_LABEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->BRAZE_ALIAS_LABEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 40
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x6

    const-string v2, "onesignalId"

    const-string v3, "ONESIGNAL_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ONESIGNAL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 44
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/4 v1, 0x7

    const-string v2, "fbAnonId"

    const-string v3, "FB_ANON_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->FB_ANON_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 48
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x8

    const-string v2, "firebaseAppInstanceId"

    const-string v3, "FIREBASE_APP_INSTANCE_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->FIREBASE_APP_INSTANCE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 52
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x9

    const-string v2, "iterableUserId"

    const-string v3, "ITERABLE_USER_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 56
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0xa

    const-string v2, "iterableCampaignId"

    const-string v3, "ITERABLE_CAMPAIGN_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_CAMPAIGN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 60
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0xb

    const-string v2, "iterableTemplateId"

    const-string v3, "ITERABLE_TEMPLATE_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_TEMPLATE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 64
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0xc

    const-string v2, "mixpanelDistinctId"

    const-string v3, "MIXPANEL_DISTINCT_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MIXPANEL_DISTINCT_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 68
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0xd

    const-string v2, "mparticleId"

    const-string v3, "MPARTICLE_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MPARTICLE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 72
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0xe

    const-string v2, "clevertapId"

    const-string v3, "CLEVERTAP_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CLEVERTAP_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 76
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0xf

    const-string v2, "airshipChannelId"

    const-string v3, "AIRSHIP_CHANNEL_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AIRSHIP_CHANNEL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 80
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x10

    const-string v2, "kochavaDeviceId"

    const-string v3, "KOCHAVA_DEVICE_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->KOCHAVA_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 84
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x11

    const-string v2, "tenjinId"

    const-string v3, "TENJIN_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->TENJIN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 88
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x12

    const-string v2, "posthogUserId"

    const-string v3, "POSTHOG_USER_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->POSTHOG_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 92
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x13

    const-string v2, "customerioId"

    const-string v3, "CUSTOMERIO_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CUSTOMERIO_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 95
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x14

    const-string v2, "meta"

    const-string v3, "META"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->META:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 98
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x15

    const-string v2, "amplitude"

    const-string v3, "AMPLITUDE"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 101
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x16

    const-string v2, "mixpanel"

    const-string v3, "MIXPANEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MIXPANEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 104
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x17

    const-string v2, "googleAds"

    const-string v3, "GOOGLE_ADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->GOOGLE_ADS:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 107
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x18

    const-string v2, "googleAppSetId"

    const-string v3, "GOOGLE_APP_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->GOOGLE_APP_SET:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 110
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x19

    const-string v2, "appstackId"

    const-string v3, "APPSTACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->APPSTACK:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    .line 113
    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    const/16 v1, 0x1a

    const-string v2, "custom"

    const-string v3, "CUSTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/models/attribution/AttributionProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CUSTOM:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    invoke-static {}, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$values()[Lcom/superwall/sdk/models/attribution/AttributionProvider;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$VALUES:[Lcom/superwall/sdk/models/attribution/AttributionProvider;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/models/attribution/AttributionProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/attribution/AttributionProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->Companion:Lcom/superwall/sdk/models/attribution/AttributionProvider$Companion;

    .line 10
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/models/attribution/AttributionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/models/attribution/AttributionProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->rawName:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 25

    .line 10
    invoke-static {}, Lcom/superwall/sdk/models/attribution/AttributionProvider;->values()[Lcom/superwall/sdk/models/attribution/AttributionProvider;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/16 v1, 0x1b

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "adjustId"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "amplitudeDeviceId"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "amplitudeUserId"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "appsflyerId"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "brazeAliasName"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "brazeAliasLabel"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "onesignalId"

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string v3, "fbAnonId"

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-string v3, "firebaseAppInstanceId"

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const-string v3, "iterableUserId"

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-string v3, "iterableCampaignId"

    const/16 v14, 0xa

    aput-object v3, v2, v14

    const-string v3, "iterableTemplateId"

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const-string v3, "mixpanelDistinctId"

    const/16 v16, 0xc

    aput-object v3, v2, v16

    const-string v3, "mparticleId"

    const/16 v17, 0xd

    aput-object v3, v2, v17

    const-string v3, "clevertapId"

    const/16 v18, 0xe

    aput-object v3, v2, v18

    const-string v3, "airshipChannelId"

    const/16 v19, 0xf

    aput-object v3, v2, v19

    const-string v3, "kochavaDeviceId"

    const/16 v20, 0x10

    aput-object v3, v2, v20

    const-string v3, "tenjinId"

    const/16 v21, 0x11

    aput-object v3, v2, v21

    const-string v3, "posthogUserId"

    const/16 v22, 0x12

    aput-object v3, v2, v22

    const-string v3, "customerioId"

    const/16 v23, 0x13

    aput-object v3, v2, v23

    const/16 v3, 0x14

    const-string v24, "meta"

    aput-object v24, v2, v3

    const/16 v3, 0x15

    const-string v24, "amplitude"

    aput-object v24, v2, v3

    const/16 v3, 0x16

    const-string v24, "mixpanel"

    aput-object v24, v2, v3

    const/16 v3, 0x17

    const-string v24, "googleAds"

    aput-object v24, v2, v3

    const/16 v3, 0x18

    const-string v24, "googleAppSetId"

    aput-object v24, v2, v3

    const/16 v3, 0x19

    const-string v24, "appstackId"

    aput-object v24, v2, v3

    const/16 v3, 0x1a

    const-string v24, "custom"

    aput-object v24, v2, v3

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    aput-object v3, v1, v7

    aput-object v3, v1, v8

    aput-object v3, v1, v9

    aput-object v3, v1, v10

    aput-object v3, v1, v11

    aput-object v3, v1, v12

    aput-object v3, v1, v13

    aput-object v3, v1, v14

    aput-object v3, v1, v15

    aput-object v3, v1, v16

    aput-object v3, v1, v17

    aput-object v3, v1, v18

    aput-object v3, v1, v19

    aput-object v3, v1, v20

    aput-object v3, v1, v21

    aput-object v3, v1, v22

    aput-object v3, v1, v23

    const/16 v4, 0x14

    aput-object v3, v1, v4

    const/16 v4, 0x15

    aput-object v3, v1, v4

    const/16 v4, 0x16

    aput-object v3, v1, v4

    const/16 v4, 0x17

    aput-object v3, v1, v4

    const/16 v4, 0x18

    aput-object v3, v1, v4

    const/16 v4, 0x19

    aput-object v3, v1, v4

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    const-string v4, "com.superwall.sdk.models.attribution.AttributionProvider"

    invoke-static {v4, v0, v2, v1, v3}, Lkotlinx/serialization/internal/EnumsKt;->createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 10
    sget-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .locals 1

    const-class v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 114
    check-cast p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->$VALUES:[Lcom/superwall/sdk/models/attribution/AttributionProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, [Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object v0
.end method


# virtual methods
.method public final getRawName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->rawName:Ljava/lang/String;

    return-object v0
.end method
