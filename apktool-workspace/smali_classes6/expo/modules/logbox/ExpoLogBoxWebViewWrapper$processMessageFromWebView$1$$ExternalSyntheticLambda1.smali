.class public final synthetic Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

.field public final synthetic f$1:Lcom/google/gson/JsonPrimitive;

.field public final synthetic f$2:Lcom/google/gson/JsonPrimitive;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    iput-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;->f$1:Lcom/google/gson/JsonPrimitive;

    iput-object p3, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;->f$2:Lcom/google/gson/JsonPrimitive;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;->f$1:Lcom/google/gson/JsonPrimitive;

    iget-object v2, p0, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1$$ExternalSyntheticLambda1;->f$2:Lcom/google/gson/JsonPrimitive;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, v2, p1}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$processMessageFromWebView$1;->$r8$lambda$maKONTfrCKe9oviRjJvrSA_KHFM(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonPrimitive;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
