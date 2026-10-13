.class public interface abstract Lcom/superwall/sdk/dependencies/VariablesFactory;
.super Ljava/lang/Object;
.source "FactoryProtocols.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u00a6@\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/dependencies/VariablesFactory;",
        "",
        "makeJsonVariables",
        "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;",
        "products",
        "",
        "Lcom/superwall/sdk/models/product/ProductVariable;",
        "computedPropertyRequests",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "event",
        "Lcom/superwall/sdk/models/events/EventData;",
        "(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract makeJsonVariables(Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
