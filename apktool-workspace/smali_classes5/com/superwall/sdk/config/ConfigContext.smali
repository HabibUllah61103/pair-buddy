.class public interface abstract Lcom/superwall/sdk/config/ConfigContext;
.super Ljava/lang/Object;
.source "ConfigContext.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/primitives/BaseContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/misc/primitives/BaseContext<",
        "Lcom/superwall/sdk/config/models/ConfigState;",
        "Lcom/superwall/sdk/config/ConfigContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001J\u001c\u0010K\u001a\u00020:2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020O0MH&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0012\u0010$\u001a\u00020%X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0012\u0010(\u001a\u00020)X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0012\u0010,\u001a\u00020-X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u00100\u001a\u0004\u0018\u000101X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u001a\u00104\u001a\n\u0012\u0004\u0012\u000205\u0018\u00010 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u0010#R \u00107\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020:\u0018\u000108X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R(\u0010=\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020:0>\u0012\u0006\u0012\u0004\u0018\u00010?08X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010<RR\u0010A\u001aB\u0008\u0001\u0012\u0013\u0012\u00110C\u00a2\u0006\u000c\u0008D\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(F\u0012\u0013\u0012\u00110G\u00a2\u0006\u000c\u0008D\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(H\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020:0>\u0012\u0006\u0012\u0004\u0018\u00010?0BX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010J\u00a8\u0006P"
    }
    d2 = {
        "Lcom/superwall/sdk/config/ConfigContext;",
        "Lcom/superwall/sdk/misc/primitives/BaseContext;",
        "Lcom/superwall/sdk/config/models/ConfigState;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "storeManager",
        "Lcom/superwall/sdk/store/StoreManager;",
        "getStoreManager",
        "()Lcom/superwall/sdk/store/StoreManager;",
        "entitlements",
        "Lcom/superwall/sdk/store/Entitlements;",
        "getEntitlements",
        "()Lcom/superwall/sdk/store/Entitlements;",
        "network",
        "Lcom/superwall/sdk/network/SuperwallAPI;",
        "getNetwork",
        "()Lcom/superwall/sdk/network/SuperwallAPI;",
        "deviceHelper",
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "getDeviceHelper",
        "()Lcom/superwall/sdk/network/device/DeviceHelper;",
        "options",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "getOptions",
        "()Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "paywallManager",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "getPaywallManager",
        "()Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "webPaywallRedeemer",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "getWebPaywallRedeemer",
        "()Lkotlin/jvm/functions/Function0;",
        "factory",
        "Lcom/superwall/sdk/config/ConfigManager$Factory;",
        "getFactory",
        "()Lcom/superwall/sdk/config/ConfigManager$Factory;",
        "assignments",
        "Lcom/superwall/sdk/config/Assignments;",
        "getAssignments",
        "()Lcom/superwall/sdk/config/Assignments;",
        "paywallPreload",
        "Lcom/superwall/sdk/config/PaywallPreload;",
        "getPaywallPreload",
        "()Lcom/superwall/sdk/config/PaywallPreload;",
        "testMode",
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "getTestMode",
        "()Lcom/superwall/sdk/store/testmode/TestMode;",
        "identityManager",
        "Lcom/superwall/sdk/identity/IdentityManager;",
        "getIdentityManager",
        "setSubscriptionStatus",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "",
        "getSetSubscriptionStatus",
        "()Lkotlin/jvm/functions/Function1;",
        "awaitUtilNetwork",
        "Lkotlin/coroutines/Continuation;",
        "",
        "getAwaitUtilNetwork",
        "activateTestMode",
        "Lkotlin/Function3;",
        "Lcom/superwall/sdk/models/config/Config;",
        "Lkotlin/ParameterName;",
        "name",
        "config",
        "",
        "justActivated",
        "getActivateTestMode",
        "()Lkotlin/jvm/functions/Function3;",
        "setTriggers",
        "triggers",
        "",
        "",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
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
.method public abstract getActivateTestMode()Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/superwall/sdk/models/config/Config;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssignments()Lcom/superwall/sdk/config/Assignments;
.end method

.method public abstract getAwaitUtilNetwork()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;
.end method

.method public abstract getEntitlements()Lcom/superwall/sdk/store/Entitlements;
.end method

.method public abstract getFactory()Lcom/superwall/sdk/config/ConfigManager$Factory;
.end method

.method public abstract getIdentityManager()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetwork()Lcom/superwall/sdk/network/SuperwallAPI;
.end method

.method public abstract getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;
.end method

.method public abstract getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;
.end method

.method public abstract getPaywallPreload()Lcom/superwall/sdk/config/PaywallPreload;
.end method

.method public abstract getSetSubscriptionStatus()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStoreManager()Lcom/superwall/sdk/store/StoreManager;
.end method

.method public abstract getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;
.end method

.method public abstract getWebPaywallRedeemer()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setTriggers(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)V"
        }
    .end annotation
.end method
