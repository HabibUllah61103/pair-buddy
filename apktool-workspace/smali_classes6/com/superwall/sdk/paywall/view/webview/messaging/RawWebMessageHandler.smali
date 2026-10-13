.class public final Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;
.super Landroid/webkit/WebViewClient;
.source "RawWebMessageHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRawWebMessageHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawWebMessageHandler.kt\ncom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1863#2,2:58\n*S KotlinDebug\n*F\n+ 1 RawWebMessageHandler.kt\ncom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler\n*L\n41#1:58,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;",
        "Landroid/webkit/WebViewClient;",
        "delegate",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;",
        "mainScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;Lcom/superwall/sdk/misc/MainScope;)V",
        "postMessage",
        "",
        "message",
        "",
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


# instance fields
.field private final delegate:Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;

.field private final mainScope:Lcom/superwall/sdk/misc/MainScope;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;Lcom/superwall/sdk/misc/MainScope;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;->delegate:Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;

    .line 17
    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;Lcom/superwall/sdk/misc/MainScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 17
    new-instance p2, Lcom/superwall/sdk/misc/MainScope;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, p4}, Lcom/superwall/sdk/misc/MainScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;Lcom/superwall/sdk/misc/MainScope;)V

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;)Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;->delegate:Lcom/superwall/sdk/paywall/view/webview/messaging/WebEventDelegate;

    return-object p0
.end method


# virtual methods
.method public final postMessage(Ljava/lang/String;)V
    .locals 21
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 22
    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 23
    sget-object v5, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/4 v11, 0x1

    .line 25
    new-array v6, v11, [Lkotlin/Pair;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v6, v12

    invoke-static {v6}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 21
    const-string v6, "Did Receive Message"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 29
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {v3}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessageKt;->parseWrappedPaywallMessages(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_1

    check-cast v3, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;

    .line 33
    sget-object v13, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 34
    sget-object v14, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 35
    sget-object v15, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/4 v4, 0x2

    .line 37
    new-array v4, v4, [Lkotlin/Pair;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v4, v12

    const-string v1, "events"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v4, v11

    invoke-static {v4}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/Map;

    const/16 v19, 0x10

    const/16 v20, 0x0

    .line 33
    const-string v16, "Body Converted"

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 40
    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/view/webview/messaging/WrappedPaywallMessages;->getPayload()Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/messaging/PayloadMessages;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Iterable;

    .line 58
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;

    .line 42
    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;->mainScope:Lcom/superwall/sdk/misc/MainScope;

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler$postMessage$1$1$1;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v5}, Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler$postMessage$1$1$1;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/RawWebMessageHandler;Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    return-void

    .line 47
    :cond_1
    sget-object v10, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 48
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    move v4, v12

    .line 49
    sget-object v12, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 51
    new-array v5, v11, [Lkotlin/Pair;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v5}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/Map;

    const/16 v16, 0x10

    const/16 v17, 0x0

    .line 47
    const-string v13, "Invalid WrappedPaywallEvent"

    const/4 v15, 0x0

    move-object v11, v3

    invoke-static/range {v10 .. v17}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
