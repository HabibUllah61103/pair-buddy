.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;
.super Ljava/lang/Object;
.source "PaywallMessage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallMessage.kt\ncom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1187#2,2:319\n1261#2,4:321\n*S KotlinDebug\n*F\n+ 1 PaywallMessage.kt\ncom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt\n*L\n230#1:319,2\n230#1:321,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007\u001a\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0000\u001a\u00020\nH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "json",
        "Lkotlinx/serialization/json/Json;",
        "parseWrappedPaywallMessages",
        "Lkotlin/Result;",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;",
        "jsonString",
        "",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "parsePaywallMessage",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;",
        "Lkotlinx/serialization/json/JsonObject;",
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


# static fields
.field private static final json:Lkotlinx/serialization/json/Json;


# direct methods
.method public static synthetic $r8$lambda$bOfPNV2tm1SfyPQDHVOupvdKZXc(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;->json$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private static final json$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final parsePaywallMessage(Lkotlinx/serialization/json/JsonObject;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;
    .locals 18

    move-object/from16 v0, p0

    .line 185
    const-string v1, "event_name"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "request_id"

    const-string v4, "url"

    const-string v5, "name"

    const-string v6, "type"

    const-string v7, ""

    const/4 v8, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_f

    :sswitch_0
    const-string v2, "open_deep_link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 203
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;

    new-instance v2, Ljava/net/URI;

    const-string v3, "link"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenDeepLink;-><init>(Ljava/net/URI;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_1
    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 282
    const-string v1, "haptic_type"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;->Companion:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType$Companion;

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType$Companion;->fromRaw(Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$HapticFeedback$HapticType;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "haptic_feedback missing or unknown haptic_type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :sswitch_2
    const-string v2, "purchase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 205
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;

    .line 206
    const-string v2, "product"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 207
    const-string v3, "product_identifier"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 208
    const-string v4, "should_dismiss"

    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getBooleanOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 205
    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_3
    const-string v2, "request_store_review"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 219
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;

    .line 220
    const-string v2, "review_type"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v2, "external"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->EXTERNAL:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    goto :goto_1

    .line 222
    :cond_2
    const-string v2, "in-app"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->INAPP:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    goto :goto_1

    .line 223
    :cond_3
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->INAPP:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    .line 219
    :goto_1
    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_4
    const-string v0, "restore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 190
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Restore;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Restore;

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v0

    .line 187
    :sswitch_5
    const-string v2, "page_view"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 267
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PageView;

    .line 268
    new-instance v9, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;

    .line 269
    const-string v2, "page_node_id"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v10

    .line 270
    const-string v2, "flow_position"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result v11

    .line 271
    const-string v2, "page_name"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v12

    .line 272
    const-string v2, "navigation_node_id"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v13

    .line 273
    const-string v2, "previous_page_node_id"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_2

    :cond_4
    move-object v14, v8

    .line 274
    :goto_2
    const-string v2, "previous_flow_position"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getIntOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Integer;

    move-result-object v2

    move-object v15, v2

    goto :goto_3

    :cond_5
    move-object v15, v8

    .line 275
    :goto_3
    invoke-virtual {v0, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v16

    .line 276
    const-string v2, "time_on_previous_page_ms"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getIntOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Integer;

    move-result-object v8

    :cond_6
    move-object/from16 v17, v8

    .line 268
    invoke-direct/range {v9 .. v17}, Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    invoke-direct {v1, v9}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$PageView;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PageViewData;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_6
    const-string v2, "request_callback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 290
    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 293
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 296
    const-string v3, "behavior"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 299
    sget-object v4, Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;->Companion:Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior$Companion;

    invoke-virtual {v4, v3}, Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior$Companion;->fromRaw(Ljava/lang/String;)Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 302
    const-string v3, "variables"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 303
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertFromJsonElement(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_7

    check-cast v0, Ljava/util/Map;

    move-object v8, v0

    .line 305
    :cond_7
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/CustomCallbackBehavior;Ljava/util/Map;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v0

    .line 300
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown behavior: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request_callback missing behavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request_callback missing name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request_callback missing request_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :sswitch_7
    const-string v2, "open_url_external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 202
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;

    new-instance v2, Ljava/net/URI;

    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrlInBrowser;-><init>(Ljava/net/URI;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_8
    const-string v0, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 189
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Close;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Close;

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v0

    .line 187
    :sswitch_9
    const-string v2, "ping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 188
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OnReady;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_a
    const-string v2, "open_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 193
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v2, "browser_type"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 196
    sget-object v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;->PAYMENT_SHEET:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;

    invoke-virtual {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;->PAYMENT_SHEET:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;

    move-object v8, v0

    .line 192
    :cond_c
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;

    invoke-direct {v0, v1, v8}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl;-><init>(Ljava/net/URI;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$OpenUrl$BrowserType;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v0

    .line 187
    :sswitch_b
    const-string v2, "request_permission"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 252
    const-string v1, "permission_type"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 255
    sget-object v2, Lcom/superwall/sdk/permissions/PermissionType;->Companion:Lcom/superwall/sdk/permissions/PermissionType$Companion;

    invoke-virtual {v2, v1}, Lcom/superwall/sdk/permissions/PermissionType$Companion;->fromRaw(Ljava/lang/String;)Lcom/superwall/sdk/permissions/PermissionType;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 258
    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 260
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;

    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestPermission;-><init>(Lcom/superwall/sdk/permissions/PermissionType;Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 259
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request_permission missing request_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown permission_type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request_permission missing permission_type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :sswitch_c
    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 211
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$Custom;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_d
    const-string v2, "custom_placement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 213
    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;

    .line 214
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v3, "params"

    invoke-virtual {v0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 213
    invoke-direct {v1, v2, v0}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$CustomPlacement;-><init>(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V

    check-cast v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v1

    .line 187
    :sswitch_e
    const-string v2, "user_attribute_updated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 229
    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->convertFromJsonElement(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.Map<kotlin.String, kotlin.Any>>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 319
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 320
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 321
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 322
    check-cast v1, Ljava/util/Map;

    .line 231
    const-string v3, "key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    const-string v4, "value"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v1, v7

    :cond_10
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 228
    :cond_11
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;

    invoke-direct {v0, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$UserAttributesUpdated;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v0

    .line 187
    :sswitch_f
    const-string v2, "schedule_notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 239
    invoke-virtual {v0, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_12

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v8

    .line 240
    :cond_12
    const-string v1, "TRIAL_STARTED"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/superwall/sdk/models/paywall/LocalNotificationType$TrialStarted;->INSTANCE:Lcom/superwall/sdk/models/paywall/LocalNotificationType$TrialStarted;

    check-cast v1, Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    goto :goto_5

    .line 241
    :cond_13
    sget-object v1, Lcom/superwall/sdk/models/paywall/LocalNotificationType$Unsupported;->INSTANCE:Lcom/superwall/sdk/models/paywall/LocalNotificationType$Unsupported;

    check-cast v1, Lcom/superwall/sdk/models/paywall/LocalNotificationType;

    :goto_5
    move-object v10, v1

    .line 243
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_15

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_6

    :cond_14
    move-object v9, v1

    goto :goto_7

    :cond_15
    :goto_6
    move-object v9, v7

    .line 244
    :goto_7
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_17

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_8

    :cond_16
    move-object v11, v1

    goto :goto_9

    :cond_17
    :goto_8
    move-object v11, v7

    .line 245
    :goto_9
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_19

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_a

    :cond_18
    move-object v12, v1

    goto :goto_b

    :cond_19
    :goto_a
    move-object v12, v7

    .line 246
    :goto_b
    const-string v1, "body"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_1b

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_c

    :cond_1a
    move-object v13, v1

    goto :goto_d

    :cond_1b
    :goto_c
    move-object v13, v7

    .line 247
    :goto_d
    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getLongOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_e

    :cond_1c
    const-wide/16 v0, 0x0

    :goto_e
    move-wide v14, v0

    .line 237
    new-instance v8, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;

    invoke-direct/range {v8 .. v15}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$ScheduleNotification;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    check-cast v8, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    return-object v8

    .line 314
    :cond_1d
    :goto_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown event name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x63bd726d -> :sswitch_f
        -0x5d87915c -> :sswitch_e
        -0x5bc94069 -> :sswitch_d
        -0x5069748f -> :sswitch_c
        -0x217ab681 -> :sswitch_b
        -0x1e0f1a06 -> :sswitch_a
        0x348172 -> :sswitch_9
        0x5a5ddf8 -> :sswitch_8
        0x26d7c870 -> :sswitch_7
        0x3388cff5 -> :sswitch_6
        0x34afd255 -> :sswitch_5
        0x416ad28e -> :sswitch_4
        0x67e2c426 -> :sswitch_3
        0x67e90501 -> :sswitch_2
        0x702d842d -> :sswitch_1
        0x7d0cebb8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseWrappedPaywallMessages(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    const-string v0, "SWWebViewInterface "

    const-string v1, "jsonString"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :try_start_0
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 164
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 165
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 163
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0, p0}, Lkotlinx/serialization/json/Json;->parseToJsonElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    .line 169
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getIntOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 170
    :goto_0
    const-string v1, "payload"

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    .line 171
    const-string v1, "events"

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    move-result-object p0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 174
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    .line 175
    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    .line 176
    invoke-static {v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;->parsePaywallMessage(Lkotlinx/serialization/json/JsonObject;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p0, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    new-instance v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;-><init>(ILcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;)V

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 181
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
