.class public interface abstract Lcom/superwall/sdk/dependencies/ApiFactory;
.super Ljava/lang/Object;
.source "FactoryProtocols.kt"

# interfaces
.implements Lcom/superwall/sdk/network/JsonFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/dependencies/ApiFactory$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0096@\u00a2\u0006\u0002\u0010*J*\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020-H\u00a6@\u00a2\u0006\u0002\u00101R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0015X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u00020\u001bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0018\u0010 \u001a\u00020!X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u00062"
    }
    d2 = {
        "Lcom/superwall/sdk/dependencies/ApiFactory;",
        "Lcom/superwall/sdk/network/JsonFactory;",
        "api",
        "Lcom/superwall/sdk/network/Api;",
        "getApi",
        "()Lcom/superwall/sdk/network/Api;",
        "setApi",
        "(Lcom/superwall/sdk/network/Api;)V",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "getStorage",
        "()Lcom/superwall/sdk/storage/LocalStorage;",
        "setStorage",
        "(Lcom/superwall/sdk/storage/LocalStorage;)V",
        "deviceHelper",
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "getDeviceHelper",
        "()Lcom/superwall/sdk/network/device/DeviceHelper;",
        "setDeviceHelper",
        "(Lcom/superwall/sdk/network/device/DeviceHelper;)V",
        "configManager",
        "Lcom/superwall/sdk/config/ConfigManager;",
        "getConfigManager",
        "()Lcom/superwall/sdk/config/ConfigManager;",
        "setConfigManager",
        "(Lcom/superwall/sdk/config/ConfigManager;)V",
        "identityManager",
        "Lcom/superwall/sdk/identity/IdentityManager;",
        "getIdentityManager",
        "()Lcom/superwall/sdk/identity/IdentityManager;",
        "setIdentityManager",
        "(Lcom/superwall/sdk/identity/IdentityManager;)V",
        "appLifecycleObserver",
        "Lcom/superwall/sdk/misc/AppLifecycleObserver;",
        "getAppLifecycleObserver",
        "()Lcom/superwall/sdk/misc/AppLifecycleObserver;",
        "setAppLifecycleObserver",
        "(Lcom/superwall/sdk/misc/AppLifecycleObserver;)V",
        "track",
        "",
        "event",
        "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
        "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeHeaders",
        "",
        "",
        "isForDebugging",
        "",
        "requestId",
        "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract getApi()Lcom/superwall/sdk/network/Api;
.end method

.method public abstract getAppLifecycleObserver()Lcom/superwall/sdk/misc/AppLifecycleObserver;
.end method

.method public abstract getConfigManager()Lcom/superwall/sdk/config/ConfigManager;
.end method

.method public abstract getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;
.end method

.method public abstract getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;
.end method

.method public abstract getStorage()Lcom/superwall/sdk/storage/LocalStorage;
.end method

.method public abstract makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract setApi(Lcom/superwall/sdk/network/Api;)V
.end method

.method public abstract setAppLifecycleObserver(Lcom/superwall/sdk/misc/AppLifecycleObserver;)V
.end method

.method public abstract setConfigManager(Lcom/superwall/sdk/config/ConfigManager;)V
.end method

.method public abstract setDeviceHelper(Lcom/superwall/sdk/network/device/DeviceHelper;)V
.end method

.method public abstract setIdentityManager(Lcom/superwall/sdk/identity/IdentityManager;)V
.end method

.method public abstract setStorage(Lcom/superwall/sdk/storage/LocalStorage;)V
.end method

.method public abstract track(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
