.class final Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;
.super Ljava/lang/Object;
.source "DomWebView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/webview/DomWebView;->nativeJsiEvalSync(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $deferredId:I

.field final synthetic $source:Ljava/lang/String;

.field final synthetic this$0:Lexpo/modules/webview/DomWebView;


# direct methods
.method constructor <init>(ILexpo/modules/webview/DomWebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lexpo/modules/webview/DomWebView;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$deferredId:I

    iput-object p2, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->this$0:Lexpo/modules/webview/DomWebView;

    iput-object p3, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$source:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 162
    iget v0, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$deferredId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v1, "\n// browserScripts/NativeEvalWrapper/index.ts\n(function() {\n  const result = \"%%SOURCE%%\";\n  if (result instanceof Promise) {\n    result.then((resolved) => {\n      const resolvedString = JSON.stringify(resolved);\n      const script = \'window.ExpoDomWebView.resolveDeferred(\"%%DEFERRED_ID%%\", \' + resolvedString + \")\";\n      globalThis.expo.modules.ExpoDomWebViewModule.evalJsForWebViewAsync(\"%%WEBVIEW_ID%%\", script);\n    }).catch((error) => {\n      const errorString = JSON.stringify(error);\n      const script = \'window.ExpoDomWebView.rejectDeferred(\"%%DEFERRED_ID%%\", \' + errorString + \")\";\n      globalThis.expo.modules.ExpoDomWebViewModule.evalJsForWebViewAsync(\"%%WEBVIEW_ID%%\", script);\n    });\n    return JSON.stringify({ isPromise: true, value: null });\n  } else {\n    return JSON.stringify({ isPromise: false, value: result });\n  }\n})();\n\n"

    const-string v2, "\"%%DEFERRED_ID%%\""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 163
    iget-object v0, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->this$0:Lexpo/modules/webview/DomWebView;

    invoke-virtual {v0}, Lexpo/modules/webview/DomWebView;->getWebViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "\"%%WEBVIEW_ID%%\""

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$source:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\"%%SOURCE%%\""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->this$0:Lexpo/modules/webview/DomWebView;

    invoke-virtual {v1}, Lexpo/modules/webview/DomWebView;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->eval(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/JavaScriptValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 169
    iget-object v1, p0, Lexpo/modules/webview/DomWebView$nativeJsiEvalSync$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
