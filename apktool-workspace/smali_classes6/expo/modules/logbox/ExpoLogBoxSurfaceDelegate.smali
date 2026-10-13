.class public final Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;
.super Ljava/lang/Object;
.source "ExpoLogBoxSurfaceDelegate.kt"

# interfaces
.implements Lcom/facebook/react/common/SurfaceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoLogBoxSurfaceDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoLogBoxSurfaceDelegate.kt\nexpo/modules/logbox/ExpoLogBoxSurfaceDelegate\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,150:1\n11228#2:151\n11563#2,3:152\n*S KotlinDebug\n*F\n+ 1 ExpoLogBoxSurfaceDelegate.kt\nexpo/modules/logbox/ExpoLogBoxSurfaceDelegate\n*L\n51#1:151\n51#1:152,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000RN\u0010\u0014\u001aB\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\t0\u0016\u0012\u0014\u0012\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\t0\u0016\u0012\u0004\u0012\u00020\t0\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;",
        "Lcom/facebook/react/common/SurfaceDelegate;",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "<init>",
        "(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V",
        "dialog",
        "Landroid/app/Dialog;",
        "createContentView",
        "",
        "appKey",
        "",
        "isContentViewReady",
        "",
        "destroyContentView",
        "show",
        "hide",
        "isShowing",
        "onReload",
        "Lkotlin/Function0;",
        "fetchTextAsync",
        "Lkotlin/Function5;",
        "Lkotlin/Function1;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Companion",
        "expo-log-box_release"
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
.field public static final Companion:Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;


# instance fields
.field private final devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field private dialog:Landroid/app/Dialog;

.field private final fetchTextAsync:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onReload:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0KySMkCXg1v_VLZam8WyJ45xB2c(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->onReload$lambda$4(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M7LGLHKSYRFQA76GZKMkBtxbSzM(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->show$lambda$1$lambda$0(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$abguYbZlmHhXOfjuI6hJaH4BXPs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->fetchTextAsync$lambda$5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->Companion:Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1

    const-string v0, "devSupportManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 95
    new-instance p1, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)V

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->onReload:Lkotlin/jvm/functions/Function0;

    .line 99
    new-instance p1, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->fetchTextAsync:Lkotlin/jvm/functions/Function5;

    return-void
.end method

.method private static final fetchTextAsync$lambda$5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 5

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 108
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "GET"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/json; charset=utf-8"

    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 114
    :goto_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 115
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 116
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 119
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$fetchTextAsync$1$1;

    invoke-direct {p1, p4, p3}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$fetchTextAsync$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lokhttp3/Callback;

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 131
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onReload$lambda$4(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)Lkotlin/Unit;
    .locals 0

    .line 96
    iget-object p0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    .line 97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final show$lambda$1$lambda$0(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->show()V

    return-void
.end method


# virtual methods
.method public createContentView(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public destroyContentView()V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 1

    .line 88
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isContentViewReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public show()V
    .locals 15

    .line 32
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 39
    sget-object v1, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->Companion:Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;

    new-instance v2, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;)V

    invoke-static {v1, v0, v2}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;->access$runAfterHostResume(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Runnable;)V

    return-void

    .line 45
    :cond_1
    new-instance v1, Landroid/app/Dialog;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const v3, 0x1030006

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->dialog:Landroid/app/Dialog;

    .line 46
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 50
    iget-object v3, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorTitle()Ljava/lang/String;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->devSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v4}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 151
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v4

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 152
    array-length v9, v4

    move v10, v7

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v4, v10

    const/4 v12, 0x6

    .line 54
    new-array v12, v12, [Lkotlin/Pair;

    const-string v13, "file"

    invoke-interface {v11}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getFile()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v12, v7

    .line 55
    const-string v13, "methodName"

    invoke-interface {v11}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v12, v2

    .line 56
    const-string v13, "arguments"

    new-array v14, v7, [Ljava/lang/String;

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v12, v5

    .line 57
    invoke-interface {v11}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getLine()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "lineNumber"

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    .line 58
    invoke-interface {v11}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getColumn()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "column"

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v12, v14

    .line 59
    invoke-interface {v11}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->isCollapsed()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v13, "collapse"

    invoke-static {v13, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v13, 0x5

    aput-object v11, v12, v13

    .line 52
    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    .line 153
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 154
    :cond_2
    check-cast v8, Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v8, v6

    .line 63
    :goto_1
    new-instance v4, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;

    .line 64
    new-instance v9, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;

    .line 65
    new-instance v10, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;

    iget-object v11, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->onReload:Lkotlin/jvm/functions/Function0;

    invoke-direct {v10, v11, v6, v5, v6}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    new-instance v11, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;

    iget-object v12, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->fetchTextAsync:Lkotlin/jvm/functions/Function5;

    invoke-direct {v11, v12, v6, v5, v6}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;-><init>(Lkotlin/jvm/functions/Function5;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    invoke-direct {v9, v10, v11}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$OnReload;Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions$FetchTextAsync;)V

    .line 69
    new-array v6, v5, [Lkotlin/Pair;

    const-string v10, "platform"

    const-string v11, "android"

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v6, v7

    .line 71
    new-array v10, v2, [Ljava/util/Map;

    .line 72
    new-array v5, v5, [Lkotlin/Pair;

    const-string v11, "message"

    invoke-static {v11, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v5, v7

    .line 73
    const-string v3, "stack"

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v5, v2

    .line 71
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v10, v7

    .line 70
    const-string v3, "nativeLogs"

    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v6, v2

    .line 68
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 63
    invoke-direct {v4, v9, v2, v0}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;-><init>(Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper$Actions;Ljava/util/Map;Landroid/app/Activity;)V

    .line 79
    invoke-virtual {v4}, Lexpo/modules/logbox/ExpoLogBoxWebViewWrapper;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_2
    return-void
.end method
