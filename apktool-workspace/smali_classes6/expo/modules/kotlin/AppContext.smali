.class public final Lexpo/modules/kotlin/AppContext;
.super Ljava/lang/Object;
.source "AppContext.kt"

# interfaces
.implements Lexpo/modules/kotlin/providers/CurrentActivityProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ServicesRegistry.kt\nexpo/modules/kotlin/services/ServicesRegistry\n+ 4 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 5 Trace.kt\nandroidx/tracing/TraceKt\n+ 6 Utils.kt\nexpo/modules/kotlin/Utils\n+ 7 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n*L\n1#1,403:1\n172#1:415\n172#1:417\n161#1,5:419\n161#1,5:424\n161#1,5:429\n161#1,5:434\n1#2:404\n1#2:454\n1#2:456\n30#3:405\n30#3:406\n55#3:414\n55#3:416\n55#3:418\n14#4:407\n25#4:408\n14#4:439\n25#4:440\n27#5,5:409\n27#5,5:441\n10#6,7:446\n60#7:453\n60#7:455\n*S KotlinDebug\n*F\n+ 1 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n185#1:415\n193#1:417\n213#1:419,5\n219#1:424,5\n237#1:429,5\n251#1:434,5\n258#1:454\n262#1:456\n118#1:405\n119#1:406\n172#1:414\n185#1:416\n193#1:418\n137#1:407\n137#1:408\n265#1:439\n265#1:440\n137#1:409,5\n265#1:441,5\n375#1:446,7\n258#1:453\n262#1:455\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010=\u001a\u00020>J\u0008\u0010?\u001a\u00020>H\u0002J\u0006\u0010@\u001a\u00020>J\u0018\u0010A\u001a\u0004\u0018\u0001HB\"\u0006\u0008\u0000\u0010B\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010CJ\u001c\u0010D\u001a\u0004\u0018\u0001HE\"\n\u0008\u0000\u0010E\u0018\u0001*\u00020FH\u0086\u0008\u00a2\u0006\u0002\u0010GJ%\u0010D\u001a\u0004\u0018\u0001HE\"\u0008\u0008\u0000\u0010E*\u00020F2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u0002HE0I\u00a2\u0006\u0002\u0010JJ\u0010\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010j\u001a\u00020kJ\r\u0010|\u001a\u00020>H\u0000\u00a2\u0006\u0002\u0008}J\r\u0010~\u001a\u00020>H\u0000\u00a2\u0006\u0002\u0008\u007fJ\u000f\u0010\u0080\u0001\u001a\u00020>H\u0000\u00a2\u0006\u0003\u0008\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020>H\u0000\u00a2\u0006\u0003\u0008\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020>H\u0000\u00a2\u0006\u0003\u0008\u0085\u0001J9\u0010\u0086\u0001\u001a\u00020>2\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008b\u0001\u001a\u00030\u008a\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0000\u00a2\u0006\u0003\u0008\u008e\u0001J\u001b\u0010\u008f\u0001\u001a\u00020>2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0000\u00a2\u0006\u0003\u0008\u0091\u0001J&\u0010\u0092\u0001\u001a\u0004\u0018\u0001HE\"\t\u0008\u0000\u0010E*\u00030\u0093\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u008a\u0001H\u0007\u00a2\u0006\u0003\u0010\u0095\u0001J\u001f\u0010\u0096\u0001\u001a\u00020>2\u000e\u0010\u0097\u0001\u001a\t\u0012\u0004\u0012\u00020>0\u0098\u0001H\u0000\u00a2\u0006\u0003\u0008\u0099\u0001J\u000f\u0010\u009a\u0001\u001a\u00020>H\u0000\u00a2\u0006\u0003\u0008\u009b\u0001J\u0013\u0010\u009c\u0001\u001a\u00020>2\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010$R\u0011\u0010\'\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010$R\u0011\u0010)\u001a\u00020*\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010-\u001a\u00020.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\"\u00101\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u000e\u00107\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00109\u001a\u00020:X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0011\u0010K\u001a\u00020L8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0014\u0010O\u001a\u00020P8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR\u0011\u0010S\u001a\u00020T8F\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010VR\u0011\u0010W\u001a\u00020T8F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010VR\u0013\u0010Y\u001a\u0004\u0018\u00010Z8F\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\\R\u0013\u0010]\u001a\u0004\u0018\u00010^8F\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R\u0013\u0010a\u001a\u0004\u0018\u00010b8F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010dR\u0011\u0010e\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010gR\u0016\u0010l\u001a\u0004\u0018\u00010i8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010nR)\u0010o\u001a\n\u0018\u00010pj\u0004\u0018\u0001`q8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008u\u0010v\u0012\u0004\u0008r\u0010\u0010\u001a\u0004\u0008s\u0010tR\u001d\u0010w\u001a\u0004\u0018\u00010x8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008{\u0010v\u001a\u0004\u0008y\u0010zR\u001a\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u0088\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0015\u0010\u00a2\u0001\u001a\u00030\u0088\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a3\u0001\u0010\u00a1\u0001\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/providers/CurrentActivityProvider;",
        "modulesProvider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "legacyModuleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V",
        "getLegacyModuleRegistry",
        "()Lexpo/modules/core/ModuleRegistry;",
        "hostingRuntimeContext",
        "Lexpo/modules/kotlin/runtime/MainRuntime;",
        "getHostingRuntimeContext$annotations",
        "()V",
        "getHostingRuntimeContext",
        "()Lexpo/modules/kotlin/runtime/MainRuntime;",
        "runtime",
        "getRuntime",
        "uiRuntimeHolder",
        "Lkotlin/Lazy;",
        "Lexpo/modules/kotlin/runtime/WorkletRuntime;",
        "uiRuntime",
        "getUiRuntime",
        "()Lexpo/modules/kotlin/runtime/WorkletRuntime;",
        "reactLifecycleDelegate",
        "Lexpo/modules/kotlin/ReactLifecycleDelegate;",
        "hostWasDestroyed",
        "",
        "modulesQueueDispatcher",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "backgroundCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getBackgroundCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "modulesQueue",
        "getModulesQueue",
        "mainQueue",
        "getMainQueue",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "services",
        "Lexpo/modules/kotlin/services/ServicesRegistry;",
        "getServices",
        "()Lexpo/modules/kotlin/services/ServicesRegistry;",
        "legacyModulesProxyHolder",
        "Lexpo/modules/adapters/react/NativeModulesProxy;",
        "getLegacyModulesProxyHolder$expo_modules_core_release",
        "()Ljava/lang/ref/WeakReference;",
        "setLegacyModulesProxyHolder$expo_modules_core_release",
        "(Ljava/lang/ref/WeakReference;)V",
        "activityResultsManager",
        "Lexpo/modules/kotlin/activityresult/ActivityResultsManager;",
        "appContextActivityResultCaller",
        "Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;",
        "getAppContextActivityResultCaller$expo_modules_core_release",
        "()Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;",
        "onCreate",
        "",
        "registerInlineModulesList",
        "installJSIInterop",
        "legacyModule",
        "Module",
        "()Ljava/lang/Object;",
        "service",
        "T",
        "Lexpo/modules/kotlin/services/Service;",
        "()Lexpo/modules/kotlin/services/Service;",
        "serviceClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Lexpo/modules/kotlin/services/Service;",
        "filePermission",
        "Lexpo/modules/kotlin/services/FilePermissionService;",
        "getFilePermission",
        "()Lexpo/modules/kotlin/services/FilePermissionService;",
        "appDirectories",
        "Lexpo/modules/kotlin/services/AppDirectoriesService;",
        "getAppDirectories",
        "()Lexpo/modules/kotlin/services/AppDirectoriesService;",
        "persistentFilesDirectory",
        "Ljava/io/File;",
        "getPersistentFilesDirectory",
        "()Ljava/io/File;",
        "cacheDirectory",
        "getCacheDirectory",
        "permissions",
        "Lexpo/modules/interfaces/permissions/Permissions;",
        "getPermissions",
        "()Lexpo/modules/interfaces/permissions/Permissions;",
        "activityProvider",
        "Lexpo/modules/core/interfaces/ActivityProvider;",
        "getActivityProvider",
        "()Lexpo/modules/core/interfaces/ActivityProvider;",
        "reactContext",
        "Landroid/content/Context;",
        "getReactContext",
        "()Landroid/content/Context;",
        "hasActiveReactInstance",
        "getHasActiveReactInstance",
        "()Z",
        "eventEmitter",
        "Lexpo/modules/kotlin/events/EventEmitter;",
        "module",
        "Lexpo/modules/kotlin/modules/Module;",
        "callbackInvoker",
        "getCallbackInvoker$expo_modules_core_release",
        "()Lexpo/modules/kotlin/events/EventEmitter;",
        "errorManager",
        "Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;",
        "Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;",
        "getErrorManager$annotations",
        "getErrorManager",
        "()Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;",
        "errorManager$delegate",
        "Lkotlin/Lazy;",
        "jsLogger",
        "Lexpo/modules/core/logging/Logger;",
        "getJsLogger",
        "()Lexpo/modules/core/logging/Logger;",
        "jsLogger$delegate",
        "onDestroy",
        "onDestroy$expo_modules_core_release",
        "onHostResume",
        "onHostResume$expo_modules_core_release",
        "onHostPause",
        "onHostPause$expo_modules_core_release",
        "onUserLeaveHint",
        "onUserLeaveHint$expo_modules_core_release",
        "onHostDestroy",
        "onHostDestroy$expo_modules_core_release",
        "onActivityResult",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onActivityResult$expo_modules_core_release",
        "onNewIntent",
        "intent",
        "onNewIntent$expo_modules_core_release",
        "findView",
        "Landroid/view/View;",
        "viewTag",
        "(I)Landroid/view/View;",
        "dispatchOnMainUsingUIManager",
        "block",
        "Lkotlin/Function0;",
        "dispatchOnMainUsingUIManager$expo_modules_core_release",
        "assertMainThread",
        "assertMainThread$expo_modules_core_release",
        "executeOnJavaScriptThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "currentActivity",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "throwingActivity",
        "getThrowingActivity",
        "expo-modules-core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

.field private final appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

.field private final backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final errorManager$delegate:Lkotlin/Lazy;

.field private hostWasDestroyed:Z

.field private final hostingRuntimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

.field private final jsLogger$delegate:Lkotlin/Lazy;

.field private final legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

.field private legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mainQueue:Lkotlinx/coroutines/CoroutineScope;

.field private final modulesQueue:Lkotlinx/coroutines/CoroutineScope;

.field private final modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

.field private final reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

.field private final registry:Lexpo/modules/kotlin/ModuleRegistry;

.field private final services:Lexpo/modules/kotlin/services/ServicesRegistry;

.field private final uiRuntimeHolder:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/runtime/WorkletRuntime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Hvboc68TRq9ApoND6EbRKvKpF_k(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)Lexpo/modules/kotlin/runtime/WorkletRuntime;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/AppContext;->uiRuntimeHolder$lambda$0(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)Lexpo/modules/kotlin/runtime/WorkletRuntime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IDI0xg4lyOt5Y58ORDUKkzGlVBU(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/logging/Logger;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->jsLogger_delegate$lambda$8(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PhKvjP8f1Us2siyuHYBokjuNc08(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->errorManager_delegate$lambda$7(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wyGmxTKhHAb6Epewxcl18mQfXJE(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/AppContext;->dispatchOnMainUsingUIManager$lambda$15(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModulesProvider;",
            "Lexpo/modules/core/ModuleRegistry;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modulesProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyModuleRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lexpo/modules/kotlin/AppContext;->legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    .line 56
    new-instance v0, Lexpo/modules/kotlin/runtime/MainRuntime;

    invoke-direct {v0, p0, p3}, Lexpo/modules/kotlin/runtime/MainRuntime;-><init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    .line 61
    new-instance v0, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->uiRuntimeHolder:Lkotlin/Lazy;

    .line 65
    new-instance v0, Lexpo/modules/kotlin/ReactLifecycleDelegate;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/ReactLifecycleDelegate;-><init>(Lexpo/modules/kotlin/AppContext;)V

    iput-object v0, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    .line 69
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "expo.modules.AsyncFunctionQueue"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 71
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 72
    invoke-static {v3, v1, v4, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object v3

    iput-object v3, p0, Lexpo/modules/kotlin/AppContext;->modulesQueueDispatcher:Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 78
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    .line 79
    invoke-static {v1, v4, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    .line 78
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 80
    new-instance v6, Lkotlinx/coroutines/CoroutineName;

    const-string v7, "expo.modules.BackgroundCoroutineScope"

    invoke-direct {v6, v7}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    .line 78
    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 77
    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    iput-object v5, p0, Lexpo/modules/kotlin/AppContext;->backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 88
    invoke-static {v1, v4, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 87
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/android/HandlerDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 89
    new-instance v5, Lkotlinx/coroutines/CoroutineName;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 87
    invoke-interface {v3, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 86
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    iput-object v2, p0, Lexpo/modules/kotlin/AppContext;->modulesQueue:Lkotlinx/coroutines/CoroutineScope;

    .line 93
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    .line 94
    invoke-static {v1, v4, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 93
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 95
    new-instance v3, Lkotlinx/coroutines/CoroutineName;

    const-string v4, "expo.modules.MainQueue"

    invoke-direct {v3, v4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 93
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    iput-object v2, p0, Lexpo/modules/kotlin/AppContext;->mainQueue:Lkotlinx/coroutines/CoroutineScope;

    .line 98
    new-instance v2, Lexpo/modules/kotlin/ModuleRegistry;

    invoke-static {p0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/kotlin/ModuleRegistry;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 100
    new-instance v3, Lexpo/modules/kotlin/services/ServicesRegistry;

    invoke-static {p0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/kotlin/services/ServicesRegistry;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v3, p0, Lexpo/modules/kotlin/AppContext;->services:Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 104
    new-instance v4, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    move-object v5, p0

    check-cast v5, Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    invoke-direct {v4, v5}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;-><init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V

    iput-object v4, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    .line 105
    new-instance v5, Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    invoke-direct {v5, v4}, Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;-><init>(Lexpo/modules/kotlin/activityresult/ActivityResultsManager;)V

    iput-object v5, p0, Lexpo/modules/kotlin/AppContext;->appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    .line 110
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 112
    check-cast p3, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 113
    invoke-virtual {p2, p0}, Lexpo/modules/core/ModuleRegistry;->setAppContext(Lexpo/modules/kotlin/AppContext;)V

    .line 115
    move-object p2, v0

    check-cast p2, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p3, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 116
    check-cast v0, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {p3, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 405
    const-class p2, Lexpo/modules/kotlin/services/FilePermissionService;

    invoke-virtual {v3, p2}, Lexpo/modules/kotlin/services/ServicesRegistry;->register(Ljava/lang/Class;)Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 406
    const-class p2, Lexpo/modules/kotlin/services/AppDirectoriesService;

    invoke-virtual {v3, p2}, Lexpo/modules/kotlin/services/ServicesRegistry;->register(Ljava/lang/Class;)Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 121
    invoke-interface {p1}, Lexpo/modules/kotlin/ModulesProvider;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p2}, Lexpo/modules/kotlin/services/ServicesRegistry;->register(Ljava/util/List;)Lexpo/modules/kotlin/services/ServicesRegistry;

    .line 126
    new-instance p2, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;

    invoke-direct {p2}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;-><init>()V

    check-cast p2, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v2, p2, v1}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V

    .line 127
    new-instance p2, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    invoke-direct {p2}, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;-><init>()V

    check-cast p2, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v2, p2, v1}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, p1}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/ModulesProvider;)Lexpo/modules/kotlin/ModuleRegistry;

    .line 131
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->registerInlineModulesList()V

    .line 133
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p1

    const-string p2, "\u2705 AppContext was initialized"

    invoke-virtual {p1, p2}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 257
    new-instance p1, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/AppContext;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/AppContext;->errorManager$delegate:Lkotlin/Lazy;

    .line 261
    new-instance p1, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/kotlin/AppContext;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/AppContext;->jsLogger$delegate:Lkotlin/Lazy;

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The app context should be created with valid react context."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/kotlin/AppContext;->reactLifecycleDelegate:Lexpo/modules/kotlin/ReactLifecycleDelegate;

    return-object p0
.end method

.method public static final synthetic access$getUiRuntimeHolder$p(Lexpo/modules/kotlin/AppContext;)Lkotlin/Lazy;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/kotlin/AppContext;->uiRuntimeHolder:Lkotlin/Lazy;

    return-object p0
.end method

.method private static final dispatchOnMainUsingUIManager$lambda$15(Lkotlin/jvm/functions/Function0;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final errorManager_delegate$lambda$7(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;
    .locals 3

    .line 258
    iget-object p0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 453
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, v2, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    check-cast v0, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p0

    :goto_3
    check-cast v1, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    return-object v1
.end method

.method private final getAppDirectories()Lexpo/modules/kotlin/services/AppDirectoriesService;
    .locals 2

    .line 417
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getServices()Lexpo/modules/kotlin/services/ServicesRegistry;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lexpo/modules/kotlin/services/AppDirectoriesService;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lexpo/modules/kotlin/services/AppDirectoriesService;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lexpo/modules/kotlin/services/AppDirectoriesService;

    check-cast v0, Lexpo/modules/kotlin/services/Service;

    .line 193
    check-cast v0, Lexpo/modules/kotlin/services/AppDirectoriesService;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 194
    const-string v1, "AppDirectoriesService is not registered in the ServicesRegistry."

    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic getErrorManager$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use AppContext.jsLogger instead"
    .end annotation

    return-void
.end method

.method public static synthetic getHostingRuntimeContext$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use AppContext.runtimeContext instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "runtime"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private static final jsLogger_delegate$lambda$8(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/core/logging/Logger;
    .locals 3

    .line 262
    iget-object p0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 455
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v2

    instance-of v2, v2, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    instance-of v0, p0, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    if-nez v0, :cond_3

    move-object p0, v1

    :cond_3
    check-cast p0, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    if-eqz p0, :cond_4

    .line 262
    invoke-virtual {p0}, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method private final registerInlineModulesList()V
    .locals 3

    .line 143
    :try_start_0
    const-string v0, "inline.modules.ExpoInlineModulesList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    const-string v1, "null cannot be cast to non-null type expo.modules.kotlin.ModulesProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/ModulesProvider;

    .line 145
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/ModulesProvider;)Lexpo/modules/kotlin/ModuleRegistry;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final uiRuntimeHolder$lambda$0(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)Lexpo/modules/kotlin/runtime/WorkletRuntime;
    .locals 1

    .line 61
    new-instance v0, Lexpo/modules/kotlin/runtime/WorkletRuntime;

    invoke-direct {v0, p0, p1}, Lexpo/modules/kotlin/runtime/WorkletRuntime;-><init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method


# virtual methods
.method public final assertMainThread$expo_modules_core_release()V
    .locals 4

    .line 375
    sget-object v0, Lexpo/modules/kotlin/Utils;->INSTANCE:Lexpo/modules/kotlin/Utils;

    .line 446
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 447
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$IncorrectThreadException;

    .line 448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-direct {v0, v1, v3}, Lexpo/modules/kotlin/exception/Exceptions$IncorrectThreadException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final dispatchOnMainUsingUIManager$expo_modules_core_release(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const/4 v1, 0x1

    .line 364
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.UIManagerModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 369
    new-instance v1, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/AppContext$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void

    .line 363
    :cond_0
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw p1
.end method

.method public final eventEmitter(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/events/EventEmitter;
    .locals 10

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v1

    const-class v2, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v1, v2}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 237
    :goto_0
    check-cast v1, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-nez v1, :cond_0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object p1

    .line 239
    new-instance v2, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;

    invoke-direct {v2, v0, v1, p1}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapper;-><init>(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    check-cast v2, Lexpo/modules/kotlin/events/EventEmitter;

    return-object v2

    .line 241
    :cond_1
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create an event emitter for module "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " that isn\'t present in the module registry. Available modules: ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeOnJavaScriptThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use RuntimeContext.schedule instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "runtime.schedule(runnable)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final findView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 358
    :cond_0
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 357
    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;
    .locals 2

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/core/interfaces/ActivityProvider;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 424
    :goto_0
    check-cast v0, Lexpo/modules/core/interfaces/ActivityProvider;

    return-object v0
.end method

.method public final getAppContextActivityResultCaller$expo_modules_core_release()Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;
    .locals 1

    .line 105
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->appContextActivityResultCaller:Lexpo/modules/kotlin/activityresult/DefaultAppContextActivityResultCaller;

    return-object v0
.end method

.method public final getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 77
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->backgroundCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 207
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->getAppDirectories()Lexpo/modules/kotlin/services/AppDirectoriesService;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/services/AppDirectoriesService;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getCallbackInvoker$expo_modules_core_release()Lexpo/modules/kotlin/events/EventEmitter;
    .locals 3

    const/4 v0, 0x0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v1

    const-class v2, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v1, v2}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 251
    :goto_0
    check-cast v1, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-nez v1, :cond_0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;

    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;-><init>(Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V

    check-cast v0, Lexpo/modules/kotlin/events/EventEmitter;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 3

    .line 390
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 391
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final getErrorManager()Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;
    .locals 1

    .line 257
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->errorManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/defaultmodules/JSLoggerModule;

    return-object v0
.end method

.method public final getFilePermission()Lexpo/modules/kotlin/services/FilePermissionService;
    .locals 2

    .line 415
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getServices()Lexpo/modules/kotlin/services/ServicesRegistry;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lexpo/modules/kotlin/services/FilePermissionService;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lexpo/modules/kotlin/services/FilePermissionService;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lexpo/modules/kotlin/services/FilePermissionService;

    check-cast v0, Lexpo/modules/kotlin/services/Service;

    .line 185
    check-cast v0, Lexpo/modules/kotlin/services/FilePermissionService;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 186
    const-string v1, "FilePermissionService is not registered in the ServicesRegistry."

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHasActiveReactInstance()Z
    .locals 3

    .line 231
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final getHostingRuntimeContext()Lexpo/modules/kotlin/runtime/MainRuntime;
    .locals 1

    .line 55
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    return-object v0
.end method

.method public final getJsLogger()Lexpo/modules/core/logging/Logger;
    .locals 1

    .line 261
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->jsLogger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/logging/Logger;

    return-object v0
.end method

.method public final getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->legacyModuleRegistry:Lexpo/modules/core/ModuleRegistry;

    return-object v0
.end method

.method public final getLegacyModulesProxyHolder$expo_modules_core_release()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getMainQueue()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 92
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->mainQueue:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getModulesQueue()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 86
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->modulesQueue:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getPermissions()Lexpo/modules/interfaces/permissions/Permissions;
    .locals 2

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/interfaces/permissions/Permissions;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    check-cast v0, Lexpo/modules/interfaces/permissions/Permissions;

    return-object v0
.end method

.method public final getPersistentFilesDirectory()Ljava/io/File;
    .locals 1

    .line 201
    invoke-direct {p0}, Lexpo/modules/kotlin/AppContext;->getAppDirectories()Lexpo/modules/kotlin/services/AppDirectoriesService;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/services/AppDirectoriesService;->getPersistentFilesDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getReactContext()Landroid/content/Context;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 98
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    return-object v0
.end method

.method public final getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;
    .locals 1

    .line 59
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->hostingRuntimeContext:Lexpo/modules/kotlin/runtime/MainRuntime;

    return-object v0
.end method

.method public final getServices()Lexpo/modules/kotlin/services/ServicesRegistry;
    .locals 1

    .line 100
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->services:Lexpo/modules/kotlin/services/ServicesRegistry;

    return-object v0
.end method

.method public final getThrowingActivity()Landroid/app/Activity;
    .locals 3

    .line 396
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 397
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object v0

    .line 398
    :cond_4
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$MissingActivity;-><init>()V

    throw v0
.end method

.method public final getUiRuntime()Lexpo/modules/kotlin/runtime/WorkletRuntime;
    .locals 1

    .line 63
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->uiRuntimeHolder:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/runtime/WorkletRuntime;

    return-object v0
.end method

.method public final installJSIInterop()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->install$expo_modules_core_release()V

    return-void
.end method

.method public final synthetic legacyModule()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Module:",
            "Ljava/lang/Object;",
            ">()TModule;"
        }
    .end annotation

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-string v1, "Module"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivityResult$expo_modules_core_release(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    invoke-virtual {v0, p2, p3, p4}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 335
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 336
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 338
    new-instance v2, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    invoke-direct {v2, p2, p3, p4}, Lexpo/modules/kotlin/events/OnActivityResultPayload;-><init>(IILandroid/content/Intent;)V

    .line 335
    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 408
    const-string v0, "[ExpoModulesCore] AppContext.onCreate"

    .line 409
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->postOnCreate()V

    .line 139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final onDestroy$expo_modules_core_release()V
    .locals 4

    .line 440
    const-string v0, "[ExpoModulesCore] AppContext.onDestroy"

    .line 441
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 268
    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->access$getReactLifecycleDelegate$p(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/ReactLifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    .line 272
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 273
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->cleanUp()V

    .line 276
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getModulesQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/core/errors/ContextDestroyedException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 277
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/core/errors/ContextDestroyedException;

    invoke-direct {v1, v3, v2, v3}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 278
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lexpo/modules/core/errors/ContextDestroyedException;

    invoke-direct {v1, v3, v2, v3}, Lexpo/modules/core/errors/ContextDestroyedException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 280
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getRuntime()Lexpo/modules/kotlin/runtime/MainRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/MainRuntime;->deallocate$expo_modules_core_release()V

    .line 281
    invoke-static {p0}, Lexpo/modules/kotlin/AppContext;->access$getUiRuntimeHolder$p(Lexpo/modules/kotlin/AppContext;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getUiRuntime()Lexpo/modules/kotlin/runtime/WorkletRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/runtime/WorkletRuntime;->deallocate$expo_modules_core_release()V

    .line 285
    :cond_1
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u2705 AppContext was destroyed"

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 286
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final onHostDestroy$expo_modules_core_release()V
    .locals 3

    .line 315
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Activity is of incorrect class, expected AppCompatActivity, received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_1
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onHostDestroy(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 322
    :cond_2
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_DESTROYS:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    return-void
.end method

.method public final onHostPause$expo_modules_core_release()V
    .locals 2

    .line 307
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method

.method public final onHostResume$expo_modules_core_release()V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_2

    .line 293
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Activity is of incorrect class, expected AppCompatActivity, received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_2
    iget-boolean v1, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 298
    iput-boolean v1, p0, Lexpo/modules/kotlin/AppContext;->hostWasDestroyed:Z

    .line 299
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    invoke-virtual {v1}, Lexpo/modules/kotlin/ModuleRegistry;->registerActivityContracts$expo_modules_core_release()V

    .line 302
    :cond_3
    iget-object v1, p0, Lexpo/modules/kotlin/AppContext;->activityResultsManager:Lexpo/modules/kotlin/activityresult/ActivityResultsManager;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/activityresult/ActivityResultsManager;->onHostResume(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 303
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method

.method public final onNewIntent$expo_modules_core_release(Landroid/content/Intent;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 348
    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_NEW_INTENT:Lexpo/modules/kotlin/events/EventName;

    .line 347
    invoke-virtual {v0, v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V

    return-void
.end method

.method public final onUserLeaveHint$expo_modules_core_release()V
    .locals 2

    .line 311
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_USER_LEAVES_ACTIVITY:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;->post(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method

.method public final synthetic service()Lexpo/modules/kotlin/services/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lexpo/modules/kotlin/services/Service;",
            ">()TT;"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getServices()Lexpo/modules/kotlin/services/ServicesRegistry;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lexpo/modules/kotlin/services/Service;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/services/Service;

    return-object v0
.end method

.method public final service(Ljava/lang/Class;)Lexpo/modules/kotlin/services/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lexpo/modules/kotlin/services/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lexpo/modules/kotlin/AppContext;->services:Lexpo/modules/kotlin/services/ServicesRegistry;

    invoke-virtual {v0}, Lexpo/modules/kotlin/services/ServicesRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lexpo/modules/kotlin/services/Service;

    if-eqz v0, :cond_0

    check-cast p1, Lexpo/modules/kotlin/services/Service;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setLegacyModulesProxyHolder$expo_modules_core_release(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/NativeModulesProxy;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lexpo/modules/kotlin/AppContext;->legacyModulesProxyHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method
