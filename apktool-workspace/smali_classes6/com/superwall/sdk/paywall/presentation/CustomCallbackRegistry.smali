.class public final Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;
.super Ljava/lang/Object;
.source "CustomCallbackRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006J1\u0010\u0011\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u000cR6\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012 \u0012\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;",
        "",
        "<init>",
        "()V",
        "handlers",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
        "register",
        "",
        "paywallIdentifier",
        "handler",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "unregister",
        "getHandler",
        "(Ljava/lang/String;)Lkotlin/jvm/functions/Function2;",
        "clear",
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
.field private final handlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final getHandler(Ljava/lang/String;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "paywallIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1
.end method

.method public final register(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallback;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paywallIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unregister(Ljava/lang/String;)V
    .locals 1

    const-string v0, "paywallIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/CustomCallbackRegistry;->handlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
