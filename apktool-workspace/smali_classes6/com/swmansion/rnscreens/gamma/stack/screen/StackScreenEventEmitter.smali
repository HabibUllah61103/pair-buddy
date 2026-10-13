.class public final Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;
.super Lcom/swmansion/rnscreens/gamma/common/event/BaseEventEmitter;
.source "StackScreenEventEmitter.kt"

# interfaces
.implements Lcom/swmansion/rnscreens/gamma/common/event/ViewAppearanceEventEmitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016J\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;",
        "Lcom/swmansion/rnscreens/gamma/common/event/BaseEventEmitter;",
        "Lcom/swmansion/rnscreens/gamma/common/event/ViewAppearanceEventEmitter;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "viewTag",
        "",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactContext;I)V",
        "emitOnWillAppear",
        "",
        "emitOnDidAppear",
        "emitOnWillDisappear",
        "emitOnDidDisappear",
        "emitOnDismiss",
        "isNativeDismiss",
        "",
        "emitOnDismiss$react_native_screens_release",
        "Companion",
        "react-native-screens_release"
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
.field public static final Companion:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter$Companion;

.field public static final TAG:Ljava/lang/String; = "StackScreenEventEmitter"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->Companion:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;I)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/swmansion/rnscreens/gamma/common/event/BaseEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactContext;I)V

    return-void
.end method


# virtual methods
.method public emitOnDidAppear()V
    .locals 4

    .line 22
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenDidAppearEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getSurfaceId()I

    move-result v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getViewTag()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenDidAppearEvent;-><init>(II)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public emitOnDidDisappear()V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenDidDisappearEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getSurfaceId()I

    move-result v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getViewTag()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenDidDisappearEvent;-><init>(II)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public final emitOnDismiss$react_native_screens_release(Z)V
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenDismissEvent;

    .line 36
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getSurfaceId()I

    move-result v2

    .line 37
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getViewTag()I

    move-result v3

    .line 35
    invoke-direct {v1, v2, v3, p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenDismissEvent;-><init>(IIZ)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 34
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public emitOnWillAppear()V
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenWillAppearEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getSurfaceId()I

    move-result v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getViewTag()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenWillAppearEvent;-><init>(II)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public emitOnWillDisappear()V
    .locals 4

    .line 26
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenWillDisappearEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getSurfaceId()I

    move-result v2

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;->getViewTag()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/swmansion/rnscreens/gamma/stack/screen/event/StackScreenWillDisappearEvent;-><init>(II)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
