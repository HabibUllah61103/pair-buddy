.class public final Lcom/superwall/sdk/config/options/PaywallOptionsKt;
.super Ljava/lang/Object;
.source "PaywallOptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallOptions.kt\ncom/superwall/sdk/config/options/PaywallOptionsKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n477#2:176\n423#2:177\n1246#3,4:178\n*S KotlinDebug\n*F\n+ 1 PaywallOptions.kt\ncom/superwall/sdk/config/options/PaywallOptionsKt\n*L\n170#1:176\n170#1:177\n170#1:178,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001a\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006*\u00020\tH\u0000\u00a8\u0006\n"
    }
    d2 = {
        "computedShouldPreload",
        "",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "tier",
        "Lcom/superwall/sdk/analytics/Tier;",
        "toMap",
        "",
        "",
        "",
        "Lcom/superwall/sdk/config/options/PaywallOptions;",
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
.method public static final computedShouldPreload(Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/analytics/Tier;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getPreloadDeviceOverrides()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldPreload()Z

    move-result p0

    return p0
.end method

.method public static final toMap(Lcom/superwall/sdk/config/options/PaywallOptions;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/options/PaywallOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 161
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->isHapticFeedbackEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_haptic_feedback_enabled"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 164
    new-array v3, v1, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v2

    .line 165
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 166
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getRestoreFailed()Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/config/options/PaywallOptions$RestoreFailed;->getCloseButtonTitle()Ljava/lang/String;

    move-result-object v2

    const-string v5, "close_button_title"

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v3, v5

    .line 163
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 162
    const-string v3, "restore_failed"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v4

    .line 168
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldShowPurchaseFailureAlert()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "should_show_purchase_failure_alert"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v5

    .line 169
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getShouldPreload()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "should_preload"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 170
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getPreloadDeviceOverrides()Ljava/util/Map;

    move-result-object v1

    .line 176
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 177
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 178
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 179
    check-cast v3, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superwall/sdk/analytics/Tier;

    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/Tier;->getRaw()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    const-string v1, "preload_device_overrides"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 171
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getUseCachedTemplates()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "use_cached_templates"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 172
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getAutomaticallyDismiss()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "automatically_dismiss"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 173
    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getTransactionBackgroundView()Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/superwall/sdk/config/options/PaywallOptions$TransactionBackgroundView;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string v1, "transaction_background_view"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 160
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
