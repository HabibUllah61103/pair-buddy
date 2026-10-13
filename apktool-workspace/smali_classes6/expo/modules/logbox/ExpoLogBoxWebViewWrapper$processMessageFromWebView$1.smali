.class final Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExpoLogBoxWebViewWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->processMessageFromWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.logbox.ExpoLogBoxWebViewWrapper$processMessageFromWebView$1"
    f = "ExpoLogBoxWebViewWrapper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $actionId:Lcom/google/gson/JsonPrimitive;

.field final synthetic $args:Lcom/google/gson/JsonArray;

.field final synthetic $uid:Lcom/google/gson/JsonPrimitive;

.field label:I

.field final synthetic this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;


# direct methods
.method public static synthetic $r8$lambda$gxoVjzxKHAa3qAEqHBEATs8Hdeg(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->invokeSuspend$lambda$0(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$maKONTfrCKe9oviRjJvrSA_KHFM(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->invokeSuspend$lambda$1(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/google/gson/JsonArray;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;",
            "Lcom/google/gson/JsonPrimitive;",
            "Lcom/google/gson/JsonPrimitive;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$args:Lcom/google/gson/JsonArray;

    iput-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    iput-object p3, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$uid:Lcom/google/gson/JsonPrimitive;

    iput-object p4, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$actionId:Lcom/google/gson/JsonPrimitive;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAsString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->sendReturn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 1

    .line 125
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAsString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->sendReturn(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$args:Lcom/google/gson/JsonArray;

    iget-object v2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    iget-object v3, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$uid:Lcom/google/gson/JsonPrimitive;

    iget-object v4, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$actionId:Lcom/google/gson/JsonPrimitive;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;-><init>(Lcom/google/gson/JsonArray;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 93
    iget v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$args:Lcom/google/gson/JsonArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$args:Lcom/google/gson/JsonArray;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$args:Lcom/google/gson/JsonArray;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 100
    :goto_0
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$args:Lcom/google/gson/JsonArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 102
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 109
    :goto_1
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v3, :cond_5

    .line 117
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    invoke-virtual {p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->getActions()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;->getFetchTextAsync()Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;->getAction()Lkotlin/jvm/functions/Function5;

    move-result-object v2

    if-nez v0, :cond_3

    .line 119
    const-string v0, "GET"

    :cond_3
    move-object v4, v0

    if-nez v1, :cond_4

    .line 120
    const-string v1, ""

    :cond_4
    move-object v5, v1

    .line 117
    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$uid:Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$actionId:Lcom/google/gson/JsonPrimitive;

    new-instance v6, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1, v0, v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;)V

    iget-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->this$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$uid:Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$actionId:Lcom/google/gson/JsonPrimitive;

    new-instance v7, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1, v0, v1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;)V

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 93
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
