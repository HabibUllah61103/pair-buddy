.class public final Lcom/superwall/sdk/config/options/SuperwallOptionsKt;
.super Ljava/lang/Object;
.source "SuperwallOptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallOptions.kt\ncom/superwall/sdk/config/options/SuperwallOptionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1#2:153\n1557#3:154\n1628#3,3:155\n*S KotlinDebug\n*F\n+ 1 SuperwallOptions.kt\ncom/superwall/sdk/config/options/SuperwallOptionsKt\n*L\n139#1:154\n139#1:155,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0005H\u0000\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "toMap",
        "",
        "",
        "",
        "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;",
        "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toMap(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->getLevel()Lcom/superwall/sdk/logger/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/logger/LogLevel;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 139
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->getScopes()Ljava/util/EnumSet;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 155
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 156
    check-cast v2, Lcom/superwall/sdk/logger/LogScope;

    .line 139
    invoke-virtual {v2}, Lcom/superwall/sdk/logger/LogScope;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 139
    const-string p0, "scopes"

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 137
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final toMap(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 129
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "host_domain"

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getHostDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 130
    const-string v1, "base_host"

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getBaseHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 131
    const-string v1, "collector_host"

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getCollectorHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 132
    const-string v1, "scheme"

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 133
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;->getPort()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string v1, "port"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 128
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 134
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final toMap(Lcom/superwall/sdk/config/options/SuperwallOptions;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 144
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/config/options/PaywallOptionsKt;->toMap(Lcom/superwall/sdk/config/options/PaywallOptions;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "paywalls"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 145
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getNetworkEnvironment()Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/config/options/SuperwallOptionsKt;->toMap(Lcom/superwall/sdk/config/options/SuperwallOptions$NetworkEnvironment;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "network_environment"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 146
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isExternalDataCollectionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_external_data_collection_enabled"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 147
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLocaleIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "locale_identifier"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 148
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->isGameControllerEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_game_controller_enabled"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 149
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLogging()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    move-result-object v1

    invoke-static {v1}, Lcom/superwall/sdk/config/options/SuperwallOptionsKt;->toMap(Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "logging"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 150
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getTestModeBehavior()Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "test_mode_behavior"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 151
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
