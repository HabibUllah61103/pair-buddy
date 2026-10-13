.class public final Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;
.super Landroidx/fragment/app/Fragment;
.source "StackScreenFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\u0013H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;",
        "Landroidx/fragment/app/Fragment;",
        "stackScreen",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        "<init>",
        "(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V",
        "getStackScreen$react_native_screens_release",
        "()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        "screenLifecycleEventEmitter",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenAppearanceEventsEmitter;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "onDestroyView",
        "onDestroy",
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


# instance fields
.field private screenLifecycleEventEmitter:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenAppearanceEventsEmitter;

.field private final stackScreen:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;


# direct methods
.method public constructor <init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 1

    const-string v0, "stackScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->stackScreen:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    return-void
.end method


# virtual methods
.method public final getStackScreen$react_native_screens_release()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->stackScreen:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->stackScreen:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 36
    const-string v0, "StackScreenFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->stackScreen:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->onDismiss$react_native_screens_release()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->screenLifecycleEventEmitter:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenAppearanceEventsEmitter;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->stackScreen:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->createAppearanceEventsEmitter$react_native_screens_release(Landroidx/lifecycle/LifecycleOwner;)Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenAppearanceEventsEmitter;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->screenLifecycleEventEmitter:Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenAppearanceEventsEmitter;

    return-void
.end method
