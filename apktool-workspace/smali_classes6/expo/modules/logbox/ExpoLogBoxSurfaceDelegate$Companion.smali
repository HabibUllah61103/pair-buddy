.class public final Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;
.super Ljava/lang/Object;
.source "ExpoLogBoxSurfaceDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "runAfterHostResume",
        "",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "runnable",
        "Ljava/lang/Runnable;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$runAfterHostResume(Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion;->runAfterHostResume(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final runAfterHostResume(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Runnable;)V
    .locals 1

    .line 136
    new-instance v0, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion$runAfterHostResume$1;

    invoke-direct {v0, p2, p1}, Lexpo/modules/logbox/ExpoLogBoxSurfaceDelegate$Companion$runAfterHostResume$1;-><init>(Ljava/lang/Runnable;Lcom/facebook/react/bridge/ReactContext;)V

    check-cast v0, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 135
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
