.class public final Lexpo/modules/superwallexpo/json/IntegrationAttributeKt;
.super Ljava/lang/Object;
.source "IntegrationAttribute.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "attributionProviderFromString",
        "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
        "provider",
        "",
        "expo-superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final attributionProviderFromString(Ljava/lang/String;)Lcom/superwall/sdk/models/attribution/AttributionProvider;
    .locals 1

    const-string v0, "provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "appstackId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 27
    :cond_0
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->APPSTACK:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_1
    const-string v0, "posthogUserId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 25
    :cond_1
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->POSTHOG_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_2
    const-string v0, "mparticleId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    .line 20
    :cond_2
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MPARTICLE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_3
    const-string v0, "amplitudeUserId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_4
    const-string v0, "kochavaDeviceId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    .line 23
    :cond_4
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->KOCHAVA_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_5
    const-string v0, "iterableCampaignId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    .line 17
    :cond_5
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_CAMPAIGN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_6
    const-string v0, "customerioId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    .line 26
    :cond_6
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CUSTOMERIO_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_7
    const-string v0, "fbAnonId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    .line 14
    :cond_7
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->FB_ANON_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_8
    const-string v0, "onesignalId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    .line 13
    :cond_8
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ONESIGNAL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_9
    const-string v0, "airshipChannelId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    .line 22
    :cond_9
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AIRSHIP_CHANNEL_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_a
    const-string v0, "iterableTemplateId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    .line 18
    :cond_a
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_TEMPLATE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_b
    const-string v0, "mixpanelDistinctId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    .line 19
    :cond_b
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->MIXPANEL_DISTINCT_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_c
    const-string v0, "brazeAliasLabel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    .line 12
    :cond_c
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->BRAZE_ALIAS_LABEL:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_d
    const-string v0, "brazeAliasName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    .line 11
    :cond_d
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->BRAZE_ALIAS_NAME:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_e
    const-string v0, "amplitudeDeviceId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    .line 8
    :cond_e
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->AMPLITUDE_DEVICE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_f
    const-string v0, "adjustId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    .line 7
    :cond_f
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ADJUST_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_10
    const-string v0, "firebaseAppInstanceId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    .line 15
    :cond_10
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->FIREBASE_APP_INSTANCE_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_11
    const-string v0, "tenjinId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    .line 24
    :cond_11
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->TENJIN_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_12
    const-string v0, "clevertapId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    .line 21
    :cond_12
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->CLEVERTAP_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_13
    const-string v0, "iterableUserId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    .line 16
    :cond_13
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->ITERABLE_USER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    .line 6
    :sswitch_14
    const-string v0, "appsflyerId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    .line 10
    :cond_14
    sget-object p0, Lcom/superwall/sdk/models/attribution/AttributionProvider;->APPSFLYER_ID:Lcom/superwall/sdk/models/attribution/AttributionProvider;

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5a3f5517 -> :sswitch_14
        -0x5650bea8 -> :sswitch_13
        -0x53da6889 -> :sswitch_12
        -0x4d661973 -> :sswitch_11
        -0x45415136 -> :sswitch_10
        -0x3e3666f6 -> :sswitch_f
        -0x3c8e484c -> :sswitch_e
        -0x3bac74a1 -> :sswitch_d
        -0x39fe7760 -> :sswitch_c
        -0x31790f81 -> :sswitch_b
        -0x2c0626b9 -> :sswitch_a
        -0x12703668 -> :sswitch_9
        0x184c5649 -> :sswitch_8
        0x1907c4e3 -> :sswitch_7
        0x35b3c5bf -> :sswitch_6
        0x37ad405d -> :sswitch_5
        0x531dc494 -> :sswitch_4
        0x608d08a9 -> :sswitch_3
        0x66db0a6e -> :sswitch_2
        0x69fe9a06 -> :sswitch_1
        0x6f2c5882 -> :sswitch_0
    .end sparse-switch
.end method
