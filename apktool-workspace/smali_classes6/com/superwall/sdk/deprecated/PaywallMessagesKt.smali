.class public final Lcom/superwall/sdk/deprecated/PaywallMessagesKt;
.super Ljava/lang/Object;
.source "PaywallMessages.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallMessages.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallMessages.kt\ncom/superwall/sdk/deprecated/PaywallMessagesKt\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,91:1\n135#2,10:92\n*S KotlinDebug\n*F\n+ 1 PaywallMessages.kt\ncom/superwall/sdk/deprecated/PaywallMessagesKt\n*L\n67#1:92,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "parseWrappedPaywallMessages",
        "Lcom/superwall/sdk/deprecated/WrappedPaywallMessages;",
        "jsonString",
        "",
        "parsePaywallMessage",
        "Lcom/superwall/sdk/deprecated/PaywallMessage;",
        "json",
        "Lorg/json/JSONObject;",
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
.method public static synthetic $r8$lambda$7_wu6JsaYlgcmQu5UH3SKyFJdQ0(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/deprecated/PaywallMessagesKt;->parseWrappedPaywallMessages$lambda$1(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final parsePaywallMessage(Lorg/json/JSONObject;)Lcom/superwall/sdk/deprecated/PaywallMessage;
    .locals 4

    .line 77
    const-string v0, "event_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "url"

    const-string v3, "getString(...)"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "open_deep_link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessage$OpenDeepLink;

    const-string v1, "link"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "parse(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/superwall/sdk/deprecated/PaywallMessage$OpenDeepLink;-><init>(Landroid/net/Uri;)V

    check-cast v0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object v0

    .line 79
    :sswitch_1
    const-string v1, "purchase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessage$Purchase;

    const-string v1, "product"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/superwall/sdk/deprecated/PaywallMessage$Purchase;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object v0

    .line 79
    :sswitch_2
    const-string p0, "restore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    sget-object p0, Lcom/superwall/sdk/deprecated/PaywallMessage$Restore;->INSTANCE:Lcom/superwall/sdk/deprecated/PaywallMessage$Restore;

    check-cast p0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object p0

    .line 79
    :sswitch_3
    const-string v1, "open_url_external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrlInBrowser;

    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrlInBrowser;-><init>(Ljava/net/URI;)V

    check-cast v0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object v0

    .line 79
    :sswitch_4
    const-string p0, "close"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    sget-object p0, Lcom/superwall/sdk/deprecated/PaywallMessage$Close;->INSTANCE:Lcom/superwall/sdk/deprecated/PaywallMessage$Close;

    check-cast p0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object p0

    .line 79
    :sswitch_5
    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessage$OnReady;

    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/superwall/sdk/deprecated/PaywallMessage$OnReady;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object v0

    .line 79
    :sswitch_6
    const-string v1, "open_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrl;

    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/superwall/sdk/deprecated/PaywallMessage$OpenUrl;-><init>(Ljava/net/URI;)V

    check-cast v0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object v0

    .line 79
    :sswitch_7
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessage$Custom;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/superwall/sdk/deprecated/PaywallMessage$Custom;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/deprecated/PaywallMessage;

    return-object v0

    .line 88
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown event name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_7
        -0x1e0f1a06 -> :sswitch_6
        0x348172 -> :sswitch_5
        0x5a5ddf8 -> :sswitch_4
        0x26d7c870 -> :sswitch_3
        0x416ad28e -> :sswitch_2
        0x67e90501 -> :sswitch_1
        0x7d0cebb8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseWrappedPaywallMessages(Ljava/lang/String;)Lcom/superwall/sdk/deprecated/WrappedPaywallMessages;
    .locals 9

    const-string v0, "jsonString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 55
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 56
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SWWebViewInterface:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 54
    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string p0, "version"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 61
    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    const-string v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 65
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 66
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/superwall/sdk/deprecated/PaywallMessagesKt;->parsePaywallMessage(Lorg/json/JSONObject;)Lcom/superwall/sdk/deprecated/PaywallMessage;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    new-instance v5, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v5, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    sget-object v5, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    sget-object v5, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v5}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 100
    :cond_0
    new-instance v5, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v5, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v5, Lcom/superwall/sdk/misc/Either;

    .line 101
    :goto_1
    new-instance v0, Lcom/superwall/sdk/deprecated/PaywallMessagesKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/deprecated/PaywallMessagesKt$$ExternalSyntheticLambda0;-><init>()V

    .line 69
    invoke-static {v5, v0}, Lcom/superwall/sdk/misc/EitherKt;->onError(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function1;)Lcom/superwall/sdk/misc/Either;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lcom/superwall/sdk/deprecated/WrappedPaywallMessages;

    new-instance v1, Lcom/superwall/sdk/deprecated/PayloadMessages;

    invoke-direct {v1, v2}, Lcom/superwall/sdk/deprecated/PayloadMessages;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p0, v1}, Lcom/superwall/sdk/deprecated/WrappedPaywallMessages;-><init>(ILcom/superwall/sdk/deprecated/PayloadMessages;)V

    return-object v0
.end method

.method private static final parseWrappedPaywallMessages$lambda$1(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
