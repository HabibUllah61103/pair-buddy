.class final Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"

# interfaces
.implements Lcom/facebook/react/runtime/ReactHostDelegate;


# annotations
.annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ExpoReactHostFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExpoReactHostDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1869#2,2:157\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate\n*L\n90#1:157,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001Bm\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0014\u0010/\u001a\u0002002\n\u00101\u001a\u000602j\u0002`3H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0017R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0017R\u0011\u0010 \u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u00020$8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.\u00a8\u00064"
    }
    d2 = {
        "Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;",
        "Lcom/facebook/react/runtime/ReactHostDelegate;",
        "weakContext",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "packageList",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "jsMainModulePath",
        "",
        "jsBundleAssetPath",
        "jsBundleFilePath",
        "useDevSupport",
        "",
        "bindingsInstaller",
        "Lcom/facebook/react/runtime/BindingsInstaller;",
        "turboModuleManagerDelegateBuilder",
        "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "hostHandlers",
        "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;Ljava/util/List;)V",
        "getJsMainModulePath",
        "()Ljava/lang/String;",
        "getBindingsInstaller",
        "()Lcom/facebook/react/runtime/BindingsInstaller;",
        "getTurboModuleManagerDelegateBuilder",
        "()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "hostDelegateJsBundleFilePath",
        "getHostDelegateJsBundleFilePath",
        "hostDelegateJSBundleAssetPath",
        "getHostDelegateJSBundleAssetPath",
        "hostDelegateUseDeveloperSupport",
        "getHostDelegateUseDeveloperSupport",
        "()Z",
        "_jsBundleLoader",
        "Lcom/facebook/react/bridge/JSBundleLoader;",
        "jsBundleLoader",
        "getJsBundleLoader",
        "()Lcom/facebook/react/bridge/JSBundleLoader;",
        "jsRuntimeFactory",
        "Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "getJsRuntimeFactory",
        "()Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "reactPackages",
        "getReactPackages",
        "()Ljava/util/List;",
        "handleInstanceException",
        "",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "expo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _jsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private final bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

.field private final hostHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final jsBundleAssetPath:Ljava/lang/String;

.field private final jsBundleFilePath:Ljava/lang/String;

.field private final jsMainModulePath:Ljava/lang/String;

.field private final packageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

.field private final useDevSupport:Z

.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VOcUKW-liGkbyPAmdIksPLz2_Ew(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->_get_hostDelegateJsBundleFilePath_$lambda$0(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qGJ7LZoigUqDe9cnJVt4_DPYOwI(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->_get_hostDelegateUseDeveloperSupport_$lambda$2(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vKRRp3MMm-jbwhvHer91YKfY_pU(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->_get_hostDelegateJSBundleAssetPath_$lambda$1(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/react/runtime/BindingsInstaller;",
            "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "weakContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsMainModulePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "turboModuleManagerDelegateBuilder"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostHandlers"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->weakContext:Ljava/lang/ref/WeakReference;

    .line 31
    iput-object p2, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->packageList:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->jsMainModulePath:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->jsBundleAssetPath:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->jsBundleFilePath:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->useDevSupport:Z

    .line 36
    iput-object p7, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

    .line 37
    iput-object p8, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    .line 39
    iput-object p9, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->hostHandlers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_2

    .line 38
    new-instance p8, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    invoke-direct {p8}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;-><init>()V

    check-cast p8, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    :cond_2
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 29
    invoke-direct/range {p1 .. p10}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;Ljava/util/List;)V

    return-void
.end method

.method private static final _get_hostDelegateJSBundleAssetPath_$lambda$1(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-boolean p0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->useDevSupport:Z

    invoke-interface {p1, p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getBundleAssetName(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _get_hostDelegateJsBundleFilePath_$lambda$0(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-boolean p0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->useDevSupport:Z

    invoke-interface {p1, p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getJSBundleFile(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _get_hostDelegateUseDeveloperSupport_$lambda$2(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getUseDeveloperSupport()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBindingsInstaller()Lcom/facebook/react/runtime/BindingsInstaller;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

    return-object v0
.end method

.method public final getHostDelegateJSBundleAssetPath()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->hostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 51
    new-instance v1, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->jsBundleAssetPath:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getHostDelegateJsBundleFilePath()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->hostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 45
    new-instance v1, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->jsBundleFilePath:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getHostDelegateUseDeveloperSupport()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->hostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate$$ExternalSyntheticLambda1;-><init>()V

    .line 57
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 58
    :cond_0
    iget-boolean v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->useDevSupport:Z

    return v0
.end method

.method public getJsBundleLoader()Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 7

    .line 64
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->_jsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->getHostDelegateJsBundleFilePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "assets://"

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-static {v1, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget-object v3, Lcom/facebook/react/bridge/JSBundleLoader;->Companion:Lcom/facebook/react/bridge/JSBundleLoader$Companion;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/react/bridge/JSBundleLoader$Companion;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1
    sget-object v0, Lcom/facebook/react/bridge/JSBundleLoader;->Companion:Lcom/facebook/react/bridge/JSBundleLoader$Companion;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/JSBundleLoader$Companion;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    return-object v0

    .line 77
    :cond_2
    sget-object v1, Lcom/facebook/react/bridge/JSBundleLoader;->Companion:Lcom/facebook/react/bridge/JSBundleLoader$Companion;

    invoke-virtual {p0}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->getHostDelegateJSBundleAssetPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/react/bridge/JSBundleLoader$Companion;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    return-object v0

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get concrete Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJsMainModulePath()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->jsMainModulePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJsRuntimeFactory()Lcom/facebook/react/runtime/JSRuntimeFactory;
    .locals 1

    .line 81
    new-instance v0, Lcom/facebook/react/runtime/hermes/HermesInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/hermes/HermesInstance;-><init>()V

    check-cast v0, Lcom/facebook/react/runtime/JSRuntimeFactory;

    return-object v0
.end method

.method public getReactPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->packageList:Ljava/util/List;

    return-object v0
.end method

.method public getTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    return-object v0
.end method

.method public handleInstanceException(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->hostHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->hostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 91
    invoke-virtual {p0}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->getHostDelegateUseDeveloperSupport()Z

    move-result v2

    invoke-interface {v1, v2, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onReactInstanceException(ZLjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void

    .line 88
    :cond_1
    throw p1
.end method
