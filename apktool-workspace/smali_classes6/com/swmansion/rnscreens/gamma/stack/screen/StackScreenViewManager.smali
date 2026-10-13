.class public final Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "StackScreenViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSStackScreenManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSStackScreen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSStackScreenManagerInterface<",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0014J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0002H\u0014J\u001a\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        "Lcom/facebook/react/viewmanagers/RNSStackScreenManagerInterface;",
        "<init>",
        "()V",
        "delegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "getName",
        "",
        "getDelegate",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "addEventEmitters",
        "",
        "view",
        "setActivityMode",
        "value",
        "setScreenKey",
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
.field public static final Companion:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNSStackScreen"


# instance fields
.field private final delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->Companion:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, v1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSStackScreenManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/RNSStackScreenManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-super {p0, p1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 28
    invoke-virtual {p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->onViewManagerAddEventEmitters$react_native_screens_release()V

    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "RNSStackScreen"

    return-object v0
.end method

.method public bridge synthetic setActivityMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->setActivityMode(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;Ljava/lang/String;)V

    return-void
.end method

.method public setActivityMode(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;Ljava/lang/String;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "attached"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;->ATTACHED:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->setActivityMode(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;)V

    return-void

    .line 37
    :cond_0
    const-string v0, "detached"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;->DETACHED:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->setActivityMode(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;)V

    return-void

    .line 38
    :cond_1
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RNScreens] Invalid activity mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setScreenKey(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    invoke-virtual {p0, p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenViewManager;->setScreenKey(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenKey(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->setScreenKey(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "[RNScreens] screenKey must not be null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
