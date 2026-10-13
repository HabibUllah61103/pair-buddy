.class public final Lexpo/modules/superwallexpo/json/SuperwallOptionsKt;
.super Ljava/lang/Object;
.source "SuperwallOptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallOptions.kt\nexpo/modules/superwallexpo/json/SuperwallOptionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1563#2:93\n1634#2,3:94\n1#3:97\n*S KotlinDebug\n*F\n+ 1 SuperwallOptions.kt\nexpo/modules/superwallexpo/json/SuperwallOptionsKt\n*L\n39#1:93\n39#1:94,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "superwallOptionsFromJson",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "json",
        "",
        "",
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
.method public static final superwallOptionsFromJson(Ljava/util/Map;)Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/superwall/sdk/config/options/SuperwallOptions;

    invoke-direct {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;-><init>()V

    .line 13
    const-string v1, "localeIdentifier"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setLocaleIdentifier(Ljava/lang/String;)V

    .line 14
    const-string v1, "isExternalDataCollectionEnabled"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setExternalDataCollectionEnabled(Z)V

    .line 15
    const-string v1, "isGameControllerEnabled"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setGameControllerEnabled(Z)V

    .line 16
    const-string v1, "passIdentifiersToPlayStore"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setPassIdentifiersToPlayStore(Z)V

    .line 17
    const-string v1, "enableExperimentalDeviceVariables"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setEnableExperimentalDeviceVariables(Z)V

    .line 18
    const-string v1, "shouldObservePurchases"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setShouldObservePurchases(Z)V

    .line 19
    const-string v1, "useMockReviews"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setUseMockReviews(Z)V

    .line 20
    const-string v1, "testModeBehavior"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "toLowerCase(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string v5, "automatic"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_7

    .line 21
    :cond_7
    sget-object v1, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->AUTOMATIC:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    goto :goto_8

    .line 20
    :sswitch_1
    const-string v5, "whenenabledforuser"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_7

    .line 22
    :cond_8
    sget-object v1, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->WHEN_ENABLED_FOR_USER:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    goto :goto_8

    .line 20
    :sswitch_2
    const-string v5, "never"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    .line 23
    :cond_9
    sget-object v1, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->NEVER:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    goto :goto_8

    .line 20
    :sswitch_3
    const-string v5, "always"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    .line 24
    :cond_a
    sget-object v1, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ALWAYS:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    goto :goto_8

    .line 25
    :cond_b
    :goto_7
    sget-object v1, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->AUTOMATIC:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    .line 20
    :goto_8
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setTestModeBehavior(Lcom/superwall/sdk/store/testmode/TestModeBehavior;)V

    .line 28
    const-string v1, "networkEnvironment"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4cf1836

    if-eq v5, v6, :cond_10

    const v6, 0xd91a53c

    if-eq v5, v6, :cond_e

    const v6, 0x41012807

    if-eq v5, v6, :cond_c

    goto :goto_9

    :cond_c
    const-string v5, "release"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_9

    .line 29
    :cond_d
    new-instance v1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;

    invoke-direct {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Release;-><init>()V

    check-cast v1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    goto :goto_a

    .line 28
    :cond_e
    const-string v5, "releaseCandidate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_9

    .line 30
    :cond_f
    new-instance v1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$ReleaseCandidate;

    invoke-direct {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$ReleaseCandidate;-><init>()V

    check-cast v1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    goto :goto_a

    .line 28
    :cond_10
    const-string v5, "developer"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_9

    .line 31
    :cond_11
    new-instance v1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Developer;

    invoke-direct {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment$Developer;-><init>()V

    check-cast v1, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    goto :goto_a

    .line 32
    :cond_12
    :goto_9
    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getNetworkEnvironment()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    move-result-object v1

    .line 34
    :goto_a
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setNetworkEnvironment(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)V

    .line 37
    const-string v1, "logging"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_13

    .line 38
    const-string v5, "scopes"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_b

    :cond_13
    move-object v5, v4

    :goto_b
    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_15

    .line 39
    check-cast v5, Ljava/lang/Iterable;

    .line 93
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 94
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 95
    check-cast v7, Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-static {v7}, Lcom/superwall/sdk/logger/LogScope;->valueOf(Ljava/lang/String;)Lcom/superwall/sdk/logger/LogScope;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-object v7, v4

    .line 95
    :goto_d
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 96
    :cond_14
    check-cast v6, Ljava/util/List;

    .line 39
    check-cast v6, Ljava/lang/Iterable;

    .line 45
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_16

    :cond_15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_16
    if-eqz v1, :cond_17

    .line 47
    const-string v6, "level"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_17
    move-object v1, v4

    :goto_e
    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/superwall/sdk/logger/LogLevel;->values()[Lcom/superwall/sdk/logger/LogLevel;

    move-result-object v6

    array-length v7, v6

    :goto_f
    if-ge v3, v7, :cond_19

    aget-object v8, v6, v3

    invoke-virtual {v8}, Lcom/superwall/sdk/logger/LogLevel;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_10

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    move-object v8, v4

    :goto_10
    if-nez v8, :cond_1a

    .line 49
    sget-object v8, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 51
    :cond_1a
    new-instance v1, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    invoke-direct {v1}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;-><init>()V

    .line 52
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 53
    invoke-static {v5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->setScopes(Ljava/util/EnumSet;)V

    .line 55
    :cond_1b
    invoke-virtual {v1, v8}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->setLevel(Lcom/superwall/sdk/logger/LogLevel;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setLogging(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)V

    .line 59
    const-string v1, "paywalls"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1c

    .line 60
    const-string v1, "isHapticFeedbackEnabled"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_11

    :cond_1c
    move-object v1, v4

    :goto_11
    check-cast v1, Ljava/lang/Boolean;

    if-eqz p0, :cond_1d

    .line 61
    const-string v2, "shouldShowPurchaseFailureAlert"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_12

    :cond_1d
    move-object v2, v4

    :goto_12
    check-cast v2, Ljava/lang/Boolean;

    if-eqz p0, :cond_1e

    .line 62
    const-string v3, "shouldPreload"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_13

    :cond_1e
    move-object v3, v4

    :goto_13
    check-cast v3, Ljava/lang/Boolean;

    if-eqz p0, :cond_1f

    .line 63
    const-string v5, "automaticallyDismiss"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_14

    :cond_1f
    move-object v5, v4

    :goto_14
    check-cast v5, Ljava/lang/Boolean;

    .line 65
    new-instance v6, Lcom/superwall/sdk/config/options/PaywallOptions;

    invoke-direct {v6}, Lcom/superwall/sdk/config/options/PaywallOptions;-><init>()V

    if-eqz v1, :cond_20

    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_15

    :cond_20
    invoke-virtual {v6}, Lcom/superwall/sdk/config/options/PaywallOptions;->isHapticFeedbackEnabled()Z

    move-result v1

    :goto_15
    invoke-virtual {v6, v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->setHapticFeedbackEnabled(Z)V

    if-eqz v2, :cond_21

    .line 67
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_16

    :cond_21
    invoke-virtual {v6}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldShowPurchaseFailureAlert()Z

    move-result v1

    :goto_16
    invoke-virtual {v6, v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->setShouldShowPurchaseFailureAlert(Z)V

    if-eqz v3, :cond_22

    .line 68
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_17

    :cond_22
    invoke-virtual {v6}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldPreload()Z

    move-result v1

    :goto_17
    invoke-virtual {v6, v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->setShouldPreload(Z)V

    if-eqz v5, :cond_23

    .line 69
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_18

    :cond_23
    invoke-virtual {v6}, Lcom/superwall/sdk/config/options/PaywallOptions;->getAutomaticallyDismiss()Z

    move-result v1

    :goto_18
    invoke-virtual {v6, v1}, Lcom/superwall/sdk/config/options/PaywallOptions;->setAutomaticallyDismiss(Z)V

    if-eqz p0, :cond_24

    .line 72
    const-string v1, "restoreFailed"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_19

    :cond_24
    move-object v1, v4

    :goto_19
    check-cast v1, Ljava/util/Map;

    .line 73
    new-instance v2, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    invoke-direct {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;-><init>()V

    if-eqz v1, :cond_28

    .line 75
    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_25

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_25
    invoke-virtual {v2, v3}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->setTitle(Ljava/lang/String;)V

    .line 76
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_26

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_26
    invoke-virtual {v2, v3}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->setMessage(Ljava/lang/String;)V

    .line 77
    const-string v3, "closeButtonTitle"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_27

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getCloseButtonTitle()Ljava/lang/String;

    move-result-object v1

    :cond_27
    invoke-virtual {v2, v1}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->setCloseButtonTitle(Ljava/lang/String;)V

    .line 80
    :cond_28
    invoke-virtual {v6, v2}, Lcom/superwall/sdk/config/options/PaywallOptions;->setRestoreFailed(Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;)V

    if-eqz p0, :cond_29

    .line 82
    const-string v1, "transactionBackgroundView"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1a

    :cond_29
    move-object p0, v4

    :goto_1a
    check-cast p0, Ljava/lang/String;

    .line 84
    const-string v1, "spinner"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    sget-object v4, Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;->SPINNER:Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;

    .line 83
    :cond_2a
    invoke-virtual {v6, v4}, Lcom/superwall/sdk/config/options/PaywallOptions;->setTransactionBackgroundView(Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;)V

    .line 88
    invoke-virtual {v0, v6}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setPaywalls(Lcom/superwall/sdk/config/options/PaywallOptions;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54506df1 -> :sswitch_3
        0x63dca8c -> :sswitch_2
        0x3be3e36d -> :sswitch_1
        0x63c2322b -> :sswitch_0
    .end sparse-switch
.end method
