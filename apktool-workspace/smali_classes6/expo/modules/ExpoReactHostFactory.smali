.class public final Lexpo/modules/ExpoReactHostFactory;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1374#2:157\n1460#2,5:158\n1869#2,2:163\n1869#2,2:165\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory\n*L\n110#1:157\n110#1:158,5\n125#1:163,2\n138#1:165,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J`\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/ExpoReactHostFactory;",
        "",
        "<init>",
        "()V",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "getDefaultReactHost",
        "context",
        "Landroid/content/Context;",
        "packageList",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "jsMainModulePath",
        "",
        "jsBundleAssetPath",
        "jsBundleFilePath",
        "jsRuntimeFactory",
        "Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "useDevSupport",
        "",
        "bindingsInstaller",
        "Lcom/facebook/react/runtime/BindingsInstaller;",
        "ExpoReactHostDelegate",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/ExpoReactHostFactory;

.field private static reactHost:Lcom/facebook/react/ReactHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/ExpoReactHostFactory;

    invoke-direct {v0}, Lexpo/modules/ExpoReactHostFactory;-><init>()V

    sput-object v0, Lexpo/modules/ExpoReactHostFactory;->INSTANCE:Lexpo/modules/ExpoReactHostFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultReactHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/runtime/JSRuntimeFactory;ZLcom/facebook/react/runtime/BindingsInstaller;)Lcom/facebook/react/ReactHost;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/runtime/JSRuntimeFactory;",
            "Z",
            "Lcom/facebook/react/runtime/BindingsInstaller;",
            ")",
            "Lcom/facebook/react/ReactHost;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsMainModulePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsBundleAssetPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    if-nez v0, :cond_3

    .line 109
    sget-object v0, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {v0}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    check-cast v2, Lexpo/modules/core/interfaces/Package;

    .line 110
    invoke-interface {v2, p0}, Lexpo/modules/core/interfaces/Package;->createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const-string v5, "createReactNativeHostHandlers(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 160
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 162
    :cond_0
    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 112
    new-instance v0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;

    .line 113
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 112
    invoke-direct/range {v0 .. v11}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v5, v6

    .line 122
    new-instance v3, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v3}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 123
    invoke-static {v3}, Lcom/facebook/react/defaults/DefaultComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)V

    .line 125
    move-object p1, v9

    check-cast p1, Ljava/lang/Iterable;

    .line 163
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 126
    invoke-interface {v2, v5}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onWillCreateReactInstance(Z)V

    goto :goto_1

    .line 130
    :cond_1
    new-instance v1, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 132
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/runtime/ReactHostDelegate;

    const/4 v4, 0x1

    move-object v0, v1

    move-object v1, p0

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/runtime/ReactHostImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostDelegate;Lcom/facebook/react/fabric/ComponentFactory;ZZ)V

    .line 165
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 139
    move-object v3, v0

    check-cast v3, Lcom/facebook/react/ReactHost;

    invoke-interface {v2, p0, v3}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateReactHost(Landroid/content/Context;Lcom/facebook/react/ReactHost;)V

    .line 140
    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v3

    invoke-interface {v2, v3}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    goto :goto_2

    .line 143
    :cond_2
    new-instance p0, Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;

    invoke-direct {p0, v9, v5}, Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;-><init>(Ljava/util/List;Z)V

    check-cast p0, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v0, p0}, Lcom/facebook/react/runtime/ReactHostImpl;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 151
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/ReactHost;

    sput-object v1, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    .line 153
    :cond_3
    sget-object p0, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    const-string p1, "null cannot be cast to non-null type com.facebook.react.ReactHost"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getDefaultReactHost$default(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/runtime/JSRuntimeFactory;ZLcom/facebook/react/runtime/BindingsInstaller;ILjava/lang/Object;)Lcom/facebook/react/ReactHost;
    .locals 7

    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_0

    .line 101
    const-string v1, ".expo/.virtual-metro-entry"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_1

    .line 102
    const-string v2, "index.android.bundle"

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_4

    .line 105
    sget-boolean v6, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit16 v0, p8, 0x80

    if-eqz v0, :cond_5

    move-object/from16 p9, v4

    goto :goto_5

    :cond_5
    move-object/from16 p9, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v2

    move-object p6, v3

    move-object p7, v5

    move p8, v6

    .line 96
    invoke-static/range {p2 .. p9}, Lexpo/modules/ExpoReactHostFactory;->getDefaultReactHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/runtime/JSRuntimeFactory;ZLcom/facebook/react/runtime/BindingsInstaller;)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method
