.class public final Lexpo/modules/logbox/ExpoLogBoxReflectionUtilsKt;
.super Ljava/lang/Object;
.source "ExpoLogBoxReflectionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0008\u0002\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\t\u00a8\u0006\n"
    }
    d2 = {
        "injectExpoLogBoxDevSupportManager",
        "",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "createExpoLogBoxBridgelessDevSupportManager",
        "Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;",
        "currentDevSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "devManagerClass",
        "Ljava/lang/Class;",
        "expo-log-box_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createExpoLogBoxBridgelessDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;)Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;"
        }
    .end annotation

    const-string v0, "currentDevSupportManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devManagerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

    .line 48
    const-string v0, "applicationContext"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    .line 49
    const-string v0, "reactInstanceDevHelper"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    .line 50
    const-string v0, "jsAppBundleName"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 52
    const-string v0, "redBoxHandler"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    .line 53
    const-string v0, "devBundleDownloadListener"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 55
    const-string v0, "customPackagerCommandHandlers"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    .line 56
    const-string v0, "surfaceDelegateFactory"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/react/common/SurfaceDelegateFactory;

    .line 57
    const-string v0, "devLoadingViewManager"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    .line 58
    const-string v0, "pausedInDebuggerOverlayManager"

    invoke-static {p1, p0, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;

    const/4 v5, 0x1

    const/4 v8, 0x1

    .line 47
    invoke-direct/range {v1 .. v12}, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)V

    return-object v1
.end method

.method public static synthetic createExpoLogBoxBridgelessDevSupportManager$default(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;ILjava/lang/Object;)Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 45
    const-class p1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lexpo/modules/logbox/ExpoLogBoxReflectionUtilsKt;->createExpoLogBoxBridgelessDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;)Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

    move-result-object p0

    return-object p0
.end method

.method public static final injectExpoLogBoxDevSupportManager(Lcom/facebook/react/ReactHost;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Lcom/facebook/react/ReactHost;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    const-string v2, "ExpoLogBox"

    if-nez v1, :cond_1

    .line 15
    const-string p0, "ReactHost initialized without a dev support manager, ExpoLogBox can\'t be initialized."

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_1
    instance-of v3, v1, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

    if-eqz v3, :cond_2

    .line 21
    const-string p0, "DevSupportManager is already `ExpoDevSupportManagerWithLogBoxOverride`, skipping initialization."

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x2

    .line 29
    :try_start_0
    invoke-static {v1, v0, v3, v0}, Lexpo/modules/logbox/ExpoLogBoxReflectionUtilsKt;->createExpoLogBoxBridgelessDevSupportManager$default(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/Class;ILjava/lang/Object;)Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

    move-result-object v7

    .line 33
    const-class v4, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 35
    const-string v6, "devSupportManager"

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 33
    invoke-static/range {v4 .. v10}, Lexpo/modules/logbox/ExpoLogBoxReflectionExtensionsKt;->setProtectedDeclaredField$default(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 39
    const-string v0, "Couldn\'t inject `ExpoDevSupportManagerWithLogBoxOverride`."

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v2, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
