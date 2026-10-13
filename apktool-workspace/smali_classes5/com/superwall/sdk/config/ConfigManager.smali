.class public Lcom/superwall/sdk/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.kt"

# interfaces
.implements Lcom/superwall/sdk/config/ConfigContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/ConfigManager$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigManager.kt\ncom/superwall/sdk/config/ConfigManager\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n56#2:188\n59#2:192\n46#3:189\n51#3:191\n105#4:190\n1755#5,2:193\n1755#5,3:195\n1757#5:198\n*S KotlinDebug\n*F\n+ 1 ConfigManager.kt\ncom/superwall/sdk/config/ConfigManager\n*L\n88#1:188\n88#1:192\n88#1:189\n88#1:191\n88#1:190\n157#1:193,2\n158#1:195,3\n157#1:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\"\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001:\u0002\u0093\u0001B\u00af\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\"\u0010\u001d\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0\u001e\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0013\u0012\u0016\u0008\u0002\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020!\u0018\u00010(\u0012\u001e\u0008\u0002\u0010*\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0(\u0012*\u0008\u0002\u0010+\u001a$\u0008\u0001\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0,\u0012\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020100\u00a2\u0006\u0004\u00082\u00103J\u001c\u0010w\u001a\u00020!2\u0012\u0010x\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0qH\u0016J\u000e\u0010}\u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010~J\u0006\u0010\u007f\u001a\u00020!J6\u0010\u0080\u0001\u001a\u00020!2\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010-2\u000b\u0008\u0002\u0010\u0081\u0001\u001a\u0004\u0018\u00010n2\u000b\u0008\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010nH\u0086@\u00a2\u0006\u0003\u0010\u0083\u0001J\u000e\u0010J\u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010~J\u000f\u0010\u0084\u0001\u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010~J\u000f\u0010\u0085\u0001\u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010~J \u0010\u0086\u0001\u001a\u00020!2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00020n0\u0088\u0001H\u0086@\u00a2\u0006\u0003\u0010\u0089\u0001J\u001e\u0010\u008a\u0001\u001a\u00020!2\t\u0008\u0002\u0010\u008b\u0001\u001a\u00020.H\u0080@\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u0017\u0010\u008e\u0001\u001a\u00020!2\u0006\u0010e\u001a\u00020-H\u0000\u00a2\u0006\u0003\u0008\u008f\u0001J\u0018\u0010\u0090\u0001\u001a\u00020!2\u0007\u0010\u0091\u0001\u001a\u000201H\u0000\u00a2\u0006\u0003\u0008\u0092\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010IR\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u001d\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0\u001eX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010P\u001a\u0004\u0008N\u0010OR\u0016\u0010#\u001a\u0004\u0018\u00010$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010RR\u001c\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010GR\"\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020!\u0018\u00010(X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR,\u0010*\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0(X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010W\u001a\u0004\u0008V\u0010UR8\u0010+\u001a$\u0008\u0001\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0,X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010Z\u001a\u0004\u0008X\u0010YR \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020100X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010\\R\u0014\u0010]\u001a\u00020^8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R\u001a\u0010a\u001a\u0008\u0012\u0004\u0012\u0002010b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010dR\u0013\u0010e\u001a\u0004\u0018\u00010-8F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010gR\u0017\u0010h\u001a\u0008\u0012\u0004\u0012\u00020-0i\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010kR\u001a\u0010l\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0mX\u0082\u000e\u00a2\u0006\u0002\n\u0000R<\u0010r\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0q2\u0012\u0010p\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0q8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR!\u0010y\u001a\u0012\u0012\u0008\u0012\u00060nj\u0002`z\u0012\u0004\u0012\u00020{0q8F\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010t\u00a8\u0006\u0094\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/config/ConfigManager;",
        "Lcom/superwall/sdk/config/ConfigContext;",
        "context",
        "Landroid/content/Context;",
        "storeManager",
        "Lcom/superwall/sdk/store/StoreManager;",
        "entitlements",
        "Lcom/superwall/sdk/store/Entitlements;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "network",
        "Lcom/superwall/sdk/network/SuperwallAPI;",
        "deviceHelper",
        "Lcom/superwall/sdk/network/device/DeviceHelper;",
        "options",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "paywallManager",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "webPaywallRedeemer",
        "Lkotlin/Function0;",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "factory",
        "Lcom/superwall/sdk/config/ConfigManager$Factory;",
        "assignments",
        "Lcom/superwall/sdk/config/Assignments;",
        "paywallPreload",
        "Lcom/superwall/sdk/config/PaywallPreload;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "tracker",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "testMode",
        "Lcom/superwall/sdk/store/testmode/TestMode;",
        "identityManager",
        "Lcom/superwall/sdk/identity/IdentityManager;",
        "setSubscriptionStatus",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "awaitUtilNetwork",
        "activateTestMode",
        "Lkotlin/Function3;",
        "Lcom/superwall/sdk/models/config/Config;",
        "",
        "actor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "Lcom/superwall/sdk/config/models/ConfigState;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/store/Entitlements;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/config/ConfigManager$Factory;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/superwall/sdk/misc/primitives/StateActor;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getStoreManager",
        "()Lcom/superwall/sdk/store/StoreManager;",
        "getEntitlements",
        "()Lcom/superwall/sdk/store/Entitlements;",
        "getStorage",
        "()Lcom/superwall/sdk/storage/Storage;",
        "getNetwork",
        "()Lcom/superwall/sdk/network/SuperwallAPI;",
        "getDeviceHelper",
        "()Lcom/superwall/sdk/network/device/DeviceHelper;",
        "getOptions",
        "()Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "setOptions",
        "(Lcom/superwall/sdk/config/options/SuperwallOptions;)V",
        "getPaywallManager",
        "()Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "getWebPaywallRedeemer",
        "()Lkotlin/jvm/functions/Function0;",
        "getFactory",
        "()Lcom/superwall/sdk/config/ConfigManager$Factory;",
        "getAssignments",
        "()Lcom/superwall/sdk/config/Assignments;",
        "getPaywallPreload",
        "()Lcom/superwall/sdk/config/PaywallPreload;",
        "getTracker",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "getTestMode",
        "()Lcom/superwall/sdk/store/testmode/TestMode;",
        "getIdentityManager",
        "getSetSubscriptionStatus",
        "()Lkotlin/jvm/functions/Function1;",
        "getAwaitUtilNetwork",
        "Lkotlin/jvm/functions/Function1;",
        "getActivateTestMode",
        "()Lkotlin/jvm/functions/Function3;",
        "Lkotlin/jvm/functions/Function3;",
        "getActor",
        "()Lcom/superwall/sdk/misc/primitives/StateActor;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "configState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getConfigState$superwall_release",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "config",
        "getConfig",
        "()Lcom/superwall/sdk/models/config/Config;",
        "hasConfig",
        "Lkotlinx/coroutines/flow/Flow;",
        "getHasConfig",
        "()Lkotlinx/coroutines/flow/Flow;",
        "_triggersByEventName",
        "",
        "",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "value",
        "",
        "triggersByEventName",
        "getTriggersByEventName",
        "()Ljava/util/Map;",
        "setTriggersByEventName",
        "(Ljava/util/Map;)V",
        "setTriggers",
        "triggers",
        "unconfirmedAssignments",
        "Lcom/superwall/sdk/models/triggers/ExperimentID;",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "getUnconfirmedAssignments",
        "fetchConfiguration",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reset",
        "reevaluateTestMode",
        "appUserId",
        "aliasId",
        "(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "preloadAllPaywalls",
        "recheckPreloadIfNeeded",
        "preloadPaywallsByNames",
        "eventNames",
        "",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshConfiguration",
        "force",
        "refreshConfiguration$superwall_release",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyRetrievedConfigForTesting",
        "applyRetrievedConfigForTesting$superwall_release",
        "setConfigStateForTesting",
        "state",
        "setConfigStateForTesting$superwall_release",
        "Factory",
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
.field private _triggersByEventName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private final activateTestMode:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private final actor:Lcom/superwall/sdk/misc/primitives/StateActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private final assignments:Lcom/superwall/sdk/config/Assignments;

.field private final awaitUtilNetwork:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

.field private final entitlements:Lcom/superwall/sdk/store/Entitlements;

.field private final factory:Lcom/superwall/sdk/config/ConfigManager$Factory;

.field private final hasConfig:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/superwall/sdk/models/config/Config;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManager:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final network:Lcom/superwall/sdk/network/SuperwallAPI;

.field private options:Lcom/superwall/sdk/config/options/SuperwallOptions;

.field private final paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

.field private final paywallPreload:Lcom/superwall/sdk/config/PaywallPreload;

.field private final setSubscriptionStatus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final storage:Lcom/superwall/sdk/storage/Storage;

.field private final storeManager:Lcom/superwall/sdk/store/StoreManager;

.field private final testMode:Lcom/superwall/sdk/store/testmode/TestMode;

.field private final tracker:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final webPaywallRedeemer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/store/Entitlements;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/config/ConfigManager$Factory;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/superwall/sdk/misc/primitives/StateActor;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/superwall/sdk/store/StoreManager;",
            "Lcom/superwall/sdk/store/Entitlements;",
            "Lcom/superwall/sdk/storage/Storage;",
            "Lcom/superwall/sdk/network/SuperwallAPI;",
            "Lcom/superwall/sdk/network/device/DeviceHelper;",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;",
            "Lcom/superwall/sdk/config/ConfigManager$Factory;",
            "Lcom/superwall/sdk/config/Assignments;",
            "Lcom/superwall/sdk/config/PaywallPreload;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/TestMode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/identity/IdentityManager;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/superwall/sdk/models/config/Config;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p18

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeManager"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entitlements"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceHelper"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallManager"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webPaywallRedeemer"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assignments"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallPreload"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "awaitUtilNetwork"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activateTestMode"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actor"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 42
    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->context:Landroid/content/Context;

    .line 43
    iput-object v2, v0, Lcom/superwall/sdk/config/ConfigManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    .line 44
    iput-object v3, v0, Lcom/superwall/sdk/config/ConfigManager;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    .line 45
    iput-object v4, v0, Lcom/superwall/sdk/config/ConfigManager;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 46
    iput-object v5, v0, Lcom/superwall/sdk/config/ConfigManager;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    .line 47
    iput-object v6, v0, Lcom/superwall/sdk/config/ConfigManager;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    .line 48
    iput-object v7, v0, Lcom/superwall/sdk/config/ConfigManager;->options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    .line 49
    iput-object v8, v0, Lcom/superwall/sdk/config/ConfigManager;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 50
    iput-object v9, v0, Lcom/superwall/sdk/config/ConfigManager;->webPaywallRedeemer:Lkotlin/jvm/functions/Function0;

    .line 51
    iput-object v10, v0, Lcom/superwall/sdk/config/ConfigManager;->factory:Lcom/superwall/sdk/config/ConfigManager$Factory;

    .line 52
    iput-object v11, v0, Lcom/superwall/sdk/config/ConfigManager;->assignments:Lcom/superwall/sdk/config/Assignments;

    .line 53
    iput-object v12, v0, Lcom/superwall/sdk/config/ConfigManager;->paywallPreload:Lcom/superwall/sdk/config/PaywallPreload;

    .line 54
    iput-object v13, v0, Lcom/superwall/sdk/config/ConfigManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 55
    iput-object v14, v0, Lcom/superwall/sdk/config/ConfigManager;->tracker:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p15

    .line 56
    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    move-object/from16 v1, p16

    .line 57
    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->identityManager:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p17

    .line 58
    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->setSubscriptionStatus:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p18

    .line 59
    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->awaitUtilNetwork:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p19

    .line 62
    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->activateTestMode:Lkotlin/jvm/functions/Function3;

    .line 63
    iput-object v15, v0, Lcom/superwall/sdk/config/ConfigManager;->actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    .line 87
    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 190
    new-instance v2, Lcom/superwall/sdk/config/ConfigManager$special$$inlined$mapNotNull$1;

    invoke-direct {v2, v1}, Lcom/superwall/sdk/config/ConfigManager$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    const/4 v1, 0x1

    .line 89
    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->take(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->hasConfig:Lkotlinx/coroutines/flow/Flow;

    .line 91
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/superwall/sdk/config/ConfigManager;->_triggersByEventName:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/store/Entitlements;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/config/ConfigManager$Factory;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/superwall/sdk/misc/primitives/StateActor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v18, v2

    goto :goto_0

    :cond_0
    move-object/from16 v18, p15

    :goto_0
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move-object/from16 v19, v2

    goto :goto_1

    :cond_1
    move-object/from16 v19, p16

    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    move-object/from16 v20, v2

    goto :goto_2

    :cond_2
    move-object/from16 v20, p17

    :goto_2
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 59
    new-instance v1, Lcom/superwall/sdk/config/ConfigManager$1;

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v2}, Lcom/superwall/sdk/config/ConfigManager$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v1

    goto :goto_3

    :cond_3
    move-object/from16 v4, p1

    move-object/from16 v21, p18

    :goto_3
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 62
    new-instance v0, Lcom/superwall/sdk/config/ConfigManager$2;

    invoke-direct {v0, v2}, Lcom/superwall/sdk/config/ConfigManager$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move-object/from16 v22, v0

    goto :goto_4

    :cond_4
    move-object/from16 v22, p19

    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v23, p20

    .line 41
    invoke-direct/range {v3 .. v23}, Lcom/superwall/sdk/config/ConfigManager;-><init>(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/store/Entitlements;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/config/ConfigManager$Factory;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/superwall/sdk/misc/primitives/StateActor;)V

    return-void
.end method

.method public static synthetic reevaluateTestMode$default(Lcom/superwall/sdk/config/ConfigManager;Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    .line 119
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/config/ConfigManager;->reevaluateTestMode(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reevaluateTestMode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic refreshConfiguration$superwall_release$default(Lcom/superwall/sdk/config/ConfigManager;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 174
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/config/ConfigManager;->refreshConfiguration$superwall_release(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: refreshConfiguration"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final applyRetrievedConfigForTesting$superwall_release(Lcom/superwall/sdk/models/config/Config;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;-><init>(Lcom/superwall/sdk/models/config/Config;)V

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method

.method public delete(Lcom/superwall/sdk/storage/Storable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storable<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->delete(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/storage/Storable;)V

    return-void
.end method

.method public effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->effect(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public final fetchConfiguration(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigState;

    .line 107
    instance-of v1, v0, Lcom/superwall/sdk/config/models/ConfigState$Retrieving;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/superwall/sdk/config/models/ConfigState$Retrying;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-virtual {p0, v0, p1}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 107
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getActivateTestMode()Lkotlin/jvm/functions/Function3;
    .locals 1
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

    .line 62
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->activateTestMode:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public getActor()Lcom/superwall/sdk/misc/primitives/StateActor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->actor:Lcom/superwall/sdk/misc/primitives/StateActor;

    return-object v0
.end method

.method public getAssignments()Lcom/superwall/sdk/config/Assignments;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->assignments:Lcom/superwall/sdk/config/Assignments;

    return-object v0
.end method

.method public final getAssignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;

    iget v1, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;-><init>(Lcom/superwall/sdk/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 136
    iget v2, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput-object p0, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->label:I

    invoke-static {p1, v0}, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt;->awaitFirstValidConfig(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 138
    :goto_1
    sget-object p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$GetAssignments;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$GetAssignments;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/config/ConfigManager$getAssignments$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 139
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getAwaitUtilNetwork()Lkotlin/jvm/functions/Function1;
    .locals 1
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

    .line 59
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->awaitUtilNetwork:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getConfig()Lcom/superwall/sdk/models/config/Config;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigState;

    .line 80
    instance-of v1, v0, Lcom/superwall/sdk/config/models/ConfigState$Failed;

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;

    check-cast v1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-virtual {p0, v1}, Lcom/superwall/sdk/config/ConfigManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/superwall/sdk/config/models/ConfigStateKt;->getConfig(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigState$superwall_release()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->deviceHelper:Lcom/superwall/sdk/network/device/DeviceHelper;

    return-object v0
.end method

.method public getEntitlements()Lcom/superwall/sdk/store/Entitlements;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->entitlements:Lcom/superwall/sdk/store/Entitlements;

    return-object v0
.end method

.method public getFactory()Lcom/superwall/sdk/config/ConfigManager$Factory;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->factory:Lcom/superwall/sdk/config/ConfigManager$Factory;

    return-object v0
.end method

.method public final getHasConfig()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/superwall/sdk/models/config/Config;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->hasConfig:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getIdentityManager()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/identity/IdentityManager;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->identityManager:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getNetwork()Lcom/superwall/sdk/network/SuperwallAPI;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    return-object v0
.end method

.method public getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    return-object v0
.end method

.method public getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    return-object v0
.end method

.method public getPaywallPreload()Lcom/superwall/sdk/config/PaywallPreload;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->paywallPreload:Lcom/superwall/sdk/config/PaywallPreload;

    return-object v0
.end method

.method public getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public getSetSubscriptionStatus()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->setSubscriptionStatus:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->getState(Lcom/superwall/sdk/config/ConfigContext;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Lcom/superwall/sdk/storage/Storage;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->storage:Lcom/superwall/sdk/storage/Storage;

    return-object v0
.end method

.method public getStoreManager()Lcom/superwall/sdk/store/StoreManager;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->storeManager:Lcom/superwall/sdk/store/StoreManager;

    return-object v0
.end method

.method public getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->testMode:Lcom/superwall/sdk/store/testmode/TestMode;

    return-object v0
.end method

.method public getTracker()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->tracker:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getTriggersByEventName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->_triggersByEventName:Ljava/util/Map;

    return-object v0
.end method

.method public final getUnconfirmedAssignments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getAssignments()Lcom/superwall/sdk/config/Assignments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/Assignments;->getUnconfirmedAssignments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWebPaywallRedeemer()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/config/ConfigManager;->webPaywallRedeemer:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->immediate(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public immediateUntil(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/TypedAction<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->immediateUntil(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public persist(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->persist(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method

.method public final preloadAllPaywalls(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;

    iget v1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;-><init>(Lcom/superwall/sdk/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 141
    iget v2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput-object p0, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->label:I

    invoke-static {p1, v0}, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt;->awaitFirstValidConfig(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 143
    :goto_1
    sget-object p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadAll;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadAll;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/config/ConfigManager$preloadAllPaywalls$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 144
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final preloadPaywallsByNames(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;

    iget v1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;-><init>(Lcom/superwall/sdk/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 169
    iget v2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v2, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/config/ConfigManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    iput-object p0, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->label:I

    invoke-static {p2, v0}, Lcom/superwall/sdk/misc/Config_AwaitFirstValidConfigKt;->awaitFirstValidConfig(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 171
    :goto_1
    new-instance p2, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadByNames;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadByNames;-><init>(Ljava/util/Set;)V

    check-cast p2, Lcom/superwall/sdk/misc/primitives/TypedAction;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/config/ConfigManager$preloadPaywallsByNames$1;->label:I

    invoke-virtual {v2, p2, v0}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 172
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public read-IoAF18A(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->read-IoAF18A(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final recheckPreloadIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;

    iget v1, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;-><init>(Lcom/superwall/sdk/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 154
    iget v2, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {p1}, Lcom/superwall/sdk/config/models/ConfigStateKt;->getConfig(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/models/config/Config;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 157
    :cond_4
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 193
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_5

    .line 194
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 158
    invoke-virtual {v2}, Lcom/superwall/sdk/models/triggers/Trigger;->getRules()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 195
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_7

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    .line 196
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/superwall/sdk/models/triggers/TriggerRule;

    .line 158
    invoke-virtual {v5}, Lcom/superwall/sdk/models/triggers/TriggerRule;->getPreload()Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/models/triggers/TriggerRule$TriggerPreload;->getBehavior()Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    move-result-object v5

    sget-object v6, Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;->IF_TRUE:Lcom/superwall/sdk/models/triggers/TriggerPreloadBehavior;

    if-ne v5, v6, :cond_8

    .line 164
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    iput-object p0, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->label:I

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->preloadFingerprint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, p0

    .line 154
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 165
    invoke-virtual {v2}, Lcom/superwall/sdk/config/ConfigManager;->getPaywallPreload()Lcom/superwall/sdk/config/PaywallPreload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/superwall/sdk/config/PaywallPreload;->getLastFingerprint$superwall_release()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 166
    :cond_a
    sget-object p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/TypedAction;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/config/ConfigManager$recheckPreloadIfNeeded$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_3
    return-object v1

    .line 167
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 160
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final reevaluateTestMode(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {p1}, Lcom/superwall/sdk/config/models/ConfigStateKt;->getConfig(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/models/config/Config;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getTestMode()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 128
    :cond_1
    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;-><init>(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    .line 127
    invoke-virtual {p0, v0, p4}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final refreshConfiguration$superwall_release(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {v0}, Lcom/superwall/sdk/config/models/ConfigStateKt;->getConfig(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 176
    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;-><init>(Z)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-virtual {p0, v0, p2}, Lcom/superwall/sdk/config/ConfigManager;->immediate(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final reset()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {v0}, Lcom/superwall/sdk/config/models/ConfigStateKt;->getConfig(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getAssignments()Lcom/superwall/sdk/config/Assignments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/config/Assignments;->reset()V

    .line 115
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getAssignments()Lcom/superwall/sdk/config/Assignments;

    move-result-object v1

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/config/Assignments;->choosePaywallVariants(Ljava/util/Set;)V

    .line 116
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;

    check-cast v0, Lcom/superwall/sdk/misc/primitives/TypedAction;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/config/ConfigManager;->effect(Lcom/superwall/sdk/misc/primitives/TypedAction;)V

    return-void
.end method

.method public final setConfigStateForTesting$superwall_release(Lcom/superwall/sdk/config/models/ConfigState;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/superwall/sdk/config/ConfigManager;->getActor()Lcom/superwall/sdk/misc/primitives/StateActor;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/config/models/ConfigState$Updates$Set;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$Set;-><init>(Lcom/superwall/sdk/config/models/ConfigState;)V

    check-cast v1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method

.method public setOptions(Lcom/superwall/sdk/config/options/SuperwallOptions;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/superwall/sdk/config/ConfigManager;->options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    return-void
.end method

.method public setTriggers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)V"
        }
    .end annotation

    const-string v0, "triggers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/config/ConfigManager;->setTriggersByEventName(Ljava/util/Map;)V

    return-void
.end method

.method public final setTriggersByEventName(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/config/ConfigManager;->_triggersByEventName:Ljava/util/Map;

    return-void
.end method

.method public sideEffect(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->sideEffect(Lcom/superwall/sdk/config/ConfigContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->track(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V

    return-void
.end method

.method public update(Lcom/superwall/sdk/misc/primitives/Reducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/Reducer<",
            "Lcom/superwall/sdk/config/models/ConfigState;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/superwall/sdk/config/ConfigContext$DefaultImpls;->update(Lcom/superwall/sdk/config/ConfigContext;Lcom/superwall/sdk/misc/primitives/Reducer;)V

    return-void
.end method
