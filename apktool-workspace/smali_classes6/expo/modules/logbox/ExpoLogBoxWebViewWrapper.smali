.class public final Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;
.super Ljava/lang/Object;
.source "ExpoLogBoxWebViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;,
        Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0002\"#B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u001e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006J\"\u0010\u0019\u001a\u00020\u00162\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006J\u001a\u0010\u0019\u001a\u00020\u00162\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;",
        "",
        "actions",
        "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;",
        "props",
        "",
        "",
        "context",
        "Landroid/app/Activity;",
        "<init>",
        "(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;Ljava/util/Map;Landroid/app/Activity;)V",
        "getActions",
        "()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;",
        "getProps",
        "()Ljava/util/Map;",
        "getContext",
        "()Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "getWebView",
        "()Landroid/webkit/WebView;",
        "initializeLogBoxDomEnvironment",
        "",
        "processMessageFromWebView",
        "rawMessage",
        "sendReturn",
        "result",
        "uid",
        "actionId",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "data",
        "value",
        "Companion",
        "Actions",
        "expo-log-box_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Companion;

.field private static final DOM_EVENT:Ljava/lang/String; = "$$dom_event"

.field private static final NATIVE_ACTION:Ljava/lang/String; = "$$native_action"

.field private static final NATIVE_ACTION_RESULT:Ljava/lang/String; = "$$native_action_result"


# instance fields
.field private final actions:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

.field private final context:Landroid/app/Activity;

.field private final props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$TcUq5-ExN_cl2147u-aU83Rcwoc(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->initializeLogBoxDomEnvironment$lambda$1(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRT7zWJR5-a95uzhTIJcmE-uC4A(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->sendReturn$lambda$2(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->Companion:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->actions:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    .line 21
    iput-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->props:Ljava/util/Map;

    .line 22
    iput-object p3, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->context:Landroid/app/Activity;

    .line 24
    new-instance p1, Landroid/webkit/WebView;

    check-cast p3, Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/high16 p2, -0x1000000

    .line 25
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    invoke-static {p3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 31
    new-instance p2, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$1;

    invoke-direct {p2, p0}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$1;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;)V

    .line 37
    const-string p3, "ReactNativeWebView"

    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p2, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$2;

    invoke-direct {p2, p0}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$webView$1$2;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;)V

    check-cast p2, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    const-string p2, "file:///android_asset/ExpoLogBox.bundle/index.html"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static final synthetic access$initializeLogBoxDomEnvironment(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->initializeLogBoxDomEnvironment()V

    return-void
.end method

.method public static final synthetic access$processMessageFromWebView(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->processMessageFromWebView(Ljava/lang/String;)V

    return-void
.end method

.method private final initializeLogBoxDomEnvironment()V
    .locals 4

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->actions:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    invoke-virtual {v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->getNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "names"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    const-string v1, "props"

    iget-object v2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->props:Ljava/util/Map;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 52
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->context:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            var process=globalThis.process||{};process.env=process.env||{};\n            process.env.EXPO_DEV_SERVER_ORIGIN=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n            window.$$EXPO_DOM_HOST_OS = \'android\';\n            window.$$EXPO_INITIAL_PROPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->webView:Landroid/webkit/WebView;

    new-instance v2, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initializeLogBoxDomEnvironment$lambda$1(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object p0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private final processMessageFromWebView(Ljava/lang/String;)V
    .locals 12

    .line 74
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    .line 77
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$native_action"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 81
    const-string v0, "actionId"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v5

    .line 82
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    .line 83
    const-string v0, "args"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 84
    invoke-virtual {v5}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->isJsonArray()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v5}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 89
    const-string v0, "onReload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->actions:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    invoke-virtual {p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->getOnReload()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;->getAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 92
    :cond_1
    const-string v0, "fetchTextAsync"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;-><init>(Lcom/google/gson/JsonArray;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return-void
.end method

.method private static final sendReturn$lambda$2(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object p0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public final getActions()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->actions:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    return-object v0
.end method

.method public final getContext()Landroid/app/Activity;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public final getProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->props:Ljava/util/Map;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final sendReturn(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 151
    new-array v3, v2, [Lkotlin/Pair;

    const-string v4, "type"

    const-string v5, "$$native_action_result"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x3

    .line 153
    new-array v4, v4, [Lkotlin/Pair;

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v4, v5

    .line 154
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v4, p3

    .line 156
    const-string p2, "message"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "error"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v2

    .line 152
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "data"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v3, p3

    .line 150
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->sendReturn(Ljava/util/Map;)V

    return-void
.end method

.method public final sendReturn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionId"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 138
    new-array v4, v3, [Lkotlin/Pair;

    const-string v5, "type"

    const-string v6, "$$native_action_result"

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x3

    .line 140
    new-array v5, v5, [Lkotlin/Pair;

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v5, v6

    .line 141
    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v5, p3

    .line 142
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v5, v3

    .line 139
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "data"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, p3

    .line 137
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->sendReturn(Ljava/util/Map;)V

    return-void
.end method

.method public final sendReturn(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            ;\n            (function() {\n                try {\n                    console.log(\"received\", "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n                    window.dispatchEvent(new CustomEvent(\"$$dom_event\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "));\n                } catch (e) {\n                    console.log(\'error\', e)\n                }\n            })();\n            true;\n            "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->webView:Landroid/webkit/WebView;

    new-instance v1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendReturn(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 167
    const-string v1, "detail"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->sendReturn(Ljava/lang/String;)V

    return-void
.end method
