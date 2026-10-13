.class public final Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ExpoReactHostFactory;->getDefaultReactHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/runtime/JSRuntimeFactory;ZLcom/facebook/react/runtime/BindingsInstaller;)Lcom/facebook/react/ReactHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1869#2,2:157\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3\n*L\n145#1:157,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/ExpoReactHostFactory$getDefaultReactHost$3",
        "Lcom/facebook/react/ReactInstanceEventListener;",
        "onReactContextInitialized",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
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
.field final synthetic $hostHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $useDevSupport:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;->$hostHandlers:Ljava/util/List;

    iput-boolean p2, p0, Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;->$useDevSupport:Z

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;->$hostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-boolean v1, p0, Lexpo/modules/ExpoReactHostFactory$getDefaultReactHost$3;->$useDevSupport:Z

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 146
    invoke-interface {v2, v1, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateReactInstance(ZLcom/facebook/react/bridge/ReactContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method
