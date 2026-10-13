.class public final Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;
.super Landroid/view/ViewGroup;
.source "StackHost.kt"

# interfaces
.implements Lcom/facebook/react/bridge/UIManagerListener;
.implements Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$Companion;,
        Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStackHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackHost.kt\ncom/swmansion/rnscreens/gamma/stack/host/StackHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1869#2,2:132\n*S KotlinDebug\n*F\n+ 1 StackHost.kt\ncom/swmansion/rnscreens/gamma/stack/host/StackHost\n*L\n63#1:132,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 62\u00020\u00012\u00020\u00022\u00020\u0003:\u00016B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u001d\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018J\u0015\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u001aJ\u0015\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u001dJ\r\u0010\u001e\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u001fJ\u0010\u0010 \u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0002J\u0015\u0010\"\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008#J\u0010\u0010$\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0016J\u0018\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u0017H\u0014J0\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\u0017H\u0014J\u0010\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0016J\u0010\u00103\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0016J\u0010\u00104\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0016J\u0010\u00105\u001a\u00020\u00132\u0006\u00100\u001a\u000201H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;",
        "Landroid/view/ViewGroup;",
        "Lcom/facebook/react/bridge/UIManagerListener;",
        "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "<init>",
        "(Lcom/facebook/react/uimanager/ThemedReactContext;)V",
        "renderedScreens",
        "Ljava/util/ArrayList;",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        "Lkotlin/collections/ArrayList;",
        "getRenderedScreens$react_native_screens_release",
        "()Ljava/util/ArrayList;",
        "container",
        "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;",
        "containerUpdateCoordinator",
        "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;",
        "onAttachedToWindow",
        "",
        "mountReactSubviewAt",
        "stackScreen",
        "index",
        "",
        "mountReactSubviewAt$react_native_screens_release",
        "unmountReactSubviewAt",
        "unmountReactSubviewAt$react_native_screens_release",
        "unmountReactSubview",
        "reactSubview",
        "unmountReactSubview$react_native_screens_release",
        "unmountAllReactSubviews",
        "unmountAllReactSubviews$react_native_screens_release",
        "addPushOperationIfNeeded",
        "addPopOperationIfNeeded",
        "stackScreenChangedActivityMode",
        "stackScreenChangedActivityMode$react_native_screens_release",
        "onScreenDismiss",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "didMountItems",
        "uiManager",
        "Lcom/facebook/react/bridge/UIManager;",
        "willDispatchViewUpdates",
        "willMountItems",
        "didDispatchMountItems",
        "didScheduleMountItems",
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
.field public static final Companion:Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$Companion;

.field public static final TAG:Ljava/lang/String; = "StackHost"


# instance fields
.field private final container:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;

.field private final containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

.field private final reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private final renderedScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->Companion:Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->container:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;

    .line 25
    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;-><init>()V

    iput-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    .line 28
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->addView(Landroid/view/View;)V

    .line 32
    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/UIManagerListener;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/UIManager;->addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "[RNScreens] UIManager must not be null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final addPopOperationIfNeeded(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getActivityMode()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;->ATTACHED:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->isNativelyDismissed$react_native_screens_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;->addPopOperation$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getScreenKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring pop operation of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", already not attached or natively dismissed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final addPushOperationIfNeeded(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getActivityMode()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;->ATTACHED:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;->addPushOperation$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1

    const-string v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public didMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 2

    const-string v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->container:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;

    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;->executePendingOperationsIfNeeded$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;Ljava/util/List;)V

    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1

    const-string v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getRenderedScreens$react_native_screens_release()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final mountReactSubviewAt$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;I)V
    .locals 1

    const-string v0, "stackScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 48
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->setStackHost$react_native_screens_release(Ljava/lang/ref/WeakReference;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->addPushOperationIfNeeded(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 39
    sget-object v0, Lcom/swmansion/rnscreens/utils/RNSLog;->INSTANCE:Lcom/swmansion/rnscreens/utils/RNSLog;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StackHost ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] attached to window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackHost"

    invoke-virtual {v0, v2, v1}, Lcom/swmansion/rnscreens/utils/RNSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->container:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 101
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 102
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->container:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->measure(II)V

    return-void
.end method

.method public onScreenDismiss(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 2

    const-string v0, "stackScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getActivityMode()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;->ATTACHED:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->setNativelyDismissed$react_native_screens_release(Z)V

    :cond_0
    return-void
.end method

.method public final stackScreenChangedActivityMode$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 2

    const-string v0, "stackScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getActivityMode()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;->addPushOperation$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void

    .line 85
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->containerUpdateCoordinator:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerUpdateCoordinator;->addPopOperation$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void
.end method

.method public final unmountAllReactSubviews$react_native_screens_release()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 132
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    .line 64
    invoke-direct {p0, v1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->addPopOperationIfNeeded(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final unmountReactSubview$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 1

    const-string v0, "reactSubview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->addPopOperationIfNeeded(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void
.end method

.method public final unmountReactSubviewAt$react_native_screens_release(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->renderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "removeAt(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    .line 54
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;->addPopOperationIfNeeded(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1

    const-string v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public willMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1

    const-string v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
