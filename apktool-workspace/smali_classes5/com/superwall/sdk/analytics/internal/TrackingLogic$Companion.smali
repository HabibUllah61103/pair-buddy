.class public final Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;
.super Ljava/lang/Object;
.source "TrackingLogic.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/analytics/internal/TrackingLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackingLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackingLogic.kt\ncom/superwall/sdk/analytics/internal/TrackingLogic$Companion\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,245:1\n113#2:246\n*S KotlinDebug\n*F\n+ 1 TrackingLogic.kt\ncom/superwall/sdk/analytics/internal/TrackingLogic$Companion\n*L\n150#1:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\tJ&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u00072\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;",
        "",
        "<init>",
        "()V",
        "processParameters",
        "Lcom/superwall/sdk/analytics/internal/TrackingParameters;",
        "trackableEvent",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "appSessionId",
        "",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isNotDisabledVerboseEvent",
        "",
        "event",
        "disableVerboseEvents",
        "isSandbox",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/Boolean;Z)Z",
        "clean",
        "input",
        "checkNotSuperwallEvent",
        "",
        "canTriggerPaywall",
        "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;",
        "triggers",
        "",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$clean(Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion;->clean(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final clean(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 143
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    move-object p1, v0

    goto/16 :goto_1

    .line 144
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 145
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 146
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_8

    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_8

    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_8

    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_8

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 147
    :cond_4
    instance-of v1, p1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_5

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {p1}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertFromJsonElement(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 150
    :cond_5
    :try_start_0
    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 246
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->noCompiledSerializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    instance-of v1, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v1, :cond_6

    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    sget-object v0, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    check-cast v0, Lorg/threeten/bp/ZoneId;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDateTime;->atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZonedDateTime;->toInstant()Lorg/threeten/bp/Instant;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_6
    instance-of v1, p1, Ljava/net/URI;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_7
    instance-of v1, p1, Lcom/superwall/sdk/models/paywall/PaywallURL;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/superwall/sdk/models/paywall/PaywallURL;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/PaywallURL;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/superwall/sdk/models/paywall/PaywallURL;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    :goto_1
    return-object p1

    :cond_9
    return-object v0
.end method


# virtual methods
.method public final canTriggerPaywall(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/util/Set;Lcom/superwall/sdk/paywall/view/PaywallView;)Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            ")",
            "Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "event"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "triggers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    instance-of v2, v0, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    invoke-interface {v3}, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;->getRawName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->DeepLink:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v4}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DeepLinkTrigger;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DeepLinkTrigger;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0

    .line 186
    :cond_0
    invoke-interface {v0}, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;->getRawName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 188
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 189
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    .line 190
    invoke-interface {v0}, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;->getRawName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!! canTriggerPaywall: triggers.contains(event.rawName) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 187
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 197
    invoke-virtual/range {p3 .. p3}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->getPresentedByEventWithName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 199
    move-object v7, v0

    check-cast v7, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    invoke-interface {v7}, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;->getBackingEvent()Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v7

    .line 202
    new-array v8, v3, [Ljava/lang/String;

    sget-object v9, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionAbandon:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v9}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 203
    sget-object v9, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->TransactionFail:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v9}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 204
    sget-object v9, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->PaywallDecline:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v9}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 205
    sget-object v9, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->CustomPlacement:Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    invoke-virtual {v9}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 201
    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 209
    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    sget-object v8, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 211
    sget-object v9, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 212
    sget-object v10, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!! canTriggerPaywall: Blocking duplicate exit offer event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 210
    invoke-static/range {v8 .. v15}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0

    :cond_3
    if-eqz v2, :cond_5

    .line 220
    check-cast v0, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;

    invoke-interface {v0}, Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;->getSuperwallPlacement()Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvent;->getBackingEvent()Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 228
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0

    .line 226
    :cond_4
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$ClosePaywallThenTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$ClosePaywallThenTriggerPaywall;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0

    :cond_5
    if-eqz p3, :cond_6

    .line 233
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 234
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 235
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 233
    const-string v4, "!! canTriggerPaywall: paywallViewController != null"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$DontTriggerPaywall;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0

    .line 241
    :cond_6
    sget-object v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;->INSTANCE:Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome$TriggerPaywall;

    check-cast v0, Lcom/superwall/sdk/analytics/internal/TrackingLogic$ImplicitTriggerOutcome;

    return-object v0
.end method

.method public final checkNotSuperwallEvent(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->values()[Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 169
    invoke-virtual {v3}, Lcom/superwall/sdk/analytics/superwall/SuperwallEvents;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return-void

    .line 173
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Do not track an event with the same name as a SuperwallEvent"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isNotDisabledVerboseEvent(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/Boolean;Z)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 93
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p3, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PresentationRequest;

    if-eqz p3, :cond_1

    xor-int/lit8 p1, p2, 0x1

    return p1

    .line 102
    :cond_1
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad;

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad;

    goto :goto_0

    :cond_2
    move-object p3, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p3, :cond_6

    .line 103
    invoke-virtual {p3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad;->getState()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State;

    move-result-object p1

    .line 104
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Start;

    if-nez p3, :cond_4

    .line 105
    instance-of p1, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallLoad$State$Complete;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    return v0

    :cond_5
    return v2

    .line 112
    :cond_6
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ShimmerLoad;

    if-eqz p3, :cond_7

    xor-int/lit8 p1, p2, 0x1

    return p1

    .line 116
    :cond_7
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;

    if-eqz p3, :cond_8

    move-object p3, p1

    check-cast p3, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;

    goto :goto_2

    :cond_8
    move-object p3, v1

    :goto_2
    if-eqz p3, :cond_c

    .line 117
    invoke-virtual {p3}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad;->getState()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State;

    move-result-object p1

    .line 118
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Start;

    if-nez p3, :cond_a

    .line 119
    instance-of p1, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallProductsLoad$State$Complete;

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    return v0

    :cond_a
    :goto_3
    if-nez p2, :cond_b

    return v0

    :cond_b
    return v2

    .line 126
    :cond_c
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;

    if-eqz p3, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;

    :cond_d
    if-eqz v1, :cond_11

    .line 127
    invoke-virtual {v1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad;->getState()Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State;

    move-result-object p1

    .line 128
    instance-of p3, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Start;

    if-nez p3, :cond_f

    .line 129
    instance-of p1, p1, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallWebviewLoad$State$Complete;

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    return v0

    :cond_f
    :goto_4
    if-nez p2, :cond_10

    return v0

    :cond_10
    return v2

    :cond_11
    return v0
.end method

.method public final processParameters(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/TrackingParameters;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion$processParameters$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/superwall/sdk/analytics/internal/TrackingLogic$Companion$processParameters$2;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
