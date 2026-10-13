.class public final Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "StackContainer.kt"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStackContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackContainer.kt\ncom/swmansion/rnscreens/gamma/stack/host/StackContainer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1#2:200\n1869#3,2:201\n1869#3,2:203\n1869#3,2:205\n*S KotlinDebug\n*F\n+ 1 StackContainer.kt\ncom/swmansion/rnscreens/gamma/stack/host/StackContainer\n*L\n105#1:201,2\n122#1:203,2\n163#1:205,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 42\u00020\u00012\u00020\u0002:\u00014B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001bH\u0016J\r\u0010\u001d\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008\u001eJ\r\u0010\u001f\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008 J\u0015\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008$J\u0015\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008&J\u0010\u0010\'\u001a\u00020\u001b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0002J\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u000fH\u0002J\u0008\u0010-\u001a\u00020\u001bH\u0002J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020#H\u0002J\u0008\u00100\u001a\u00020\u001bH\u0016J\u0018\u00101\u001a\u00020\u001b2\u0006\u0010,\u001a\u0002022\u0006\u00103\u001a\u00020\u0015H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
        "context",
        "Landroid/content/Context;",
        "delegate",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "requireFragmentManager",
        "stackModel",
        "",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;",
        "pendingPopOperations",
        "Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;",
        "pendingPushOperations",
        "Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;",
        "hasPendingOperations",
        "",
        "getHasPendingOperations",
        "()Z",
        "fragmentOpExecutor",
        "Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "setupFragmentManger",
        "setupFragmentManger$react_native_screens_release",
        "performContainerUpdateIfNeeded",
        "performContainerUpdateIfNeeded$react_native_screens_release",
        "enqueuePushOperation",
        "stackScreen",
        "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;",
        "enqueuePushOperation$react_native_screens_release",
        "enqueuePopOperation",
        "enqueuePopOperation$react_native_screens_release",
        "performOperations",
        "applyOperationsAndComputeFragmentManagerOperations",
        "",
        "Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperation;",
        "onNativeFragmentPop",
        "fragment",
        "dumpStackModel",
        "createFragmentForScreen",
        "screen",
        "onBackStackChanged",
        "onBackStackChangeCommitted",
        "Landroidx/fragment/app/Fragment;",
        "pop",
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
.field public static final Companion:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer$Companion;

.field public static final TAG:Ljava/lang/String; = "StackContainer"


# instance fields
.field private final delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final fragmentOpExecutor:Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;

.field private final pendingPopOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingPushOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final stackModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->Companion:Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->delegate:Ljava/lang/ref/WeakReference;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPopOperations:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPushOperations:Ljava/util/List;

    .line 39
    new-instance p1, Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;

    invoke-direct {p1}, Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->fragmentOpExecutor:Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;

    .line 42
    sget-object p1, Lcom/swmansion/rnscreens/gamma/helpers/ViewIdGenerator;->INSTANCE:Lcom/swmansion/rnscreens/gamma/helpers/ViewIdGenerator;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/helpers/ViewIdGenerator;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->setId(I)V

    return-void
.end method

.method private final applyOperationsAndComputeFragmentManagerOperations()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperation;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 105
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPopOperations:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 201
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;

    .line 107
    iget-object v4, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->getStackScreen$react_native_screens_release()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object v6

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;->getScreen()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    check-cast v5, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    .line 111
    iget-object v2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 115
    new-instance v2, Lcom/swmansion/rnscreens/gamma/stack/host/PopBackStackOp;

    invoke-direct {v2, v5}, Lcom/swmansion/rnscreens/gamma/stack/host/PopBackStackOp;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Attempt to pop non-top screen"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Attempt to pop last screen from the stack"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Unable to find a fragment to pop"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPushOperations:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 203
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;

    .line 123
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;->getScreen()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->createFragmentForScreen(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    move-result-object v5

    .line 125
    new-instance v4, Lcom/swmansion/rnscreens/gamma/stack/host/AddOp;

    .line 127
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->getId()I

    move-result v6

    .line 128
    iget-object v2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 125
    invoke-direct/range {v4 .. v10}, Lcom/swmansion/rnscreens/gamma/stack/host/AddOp;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 137
    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/host/SetPrimaryNavFragmentOp;

    iget-object v2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/gamma/stack/host/SetPrimaryNavFragmentOp;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPopOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 140
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPushOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Stack should never be empty after updates"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createFragmentForScreen(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;
    .locals 3

    .line 169
    new-instance v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    .line 170
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getScreenKey()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StackContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private final dumpStackModel()V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StackContainer ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] MODEL BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    .line 164
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->getStackScreen$react_native_screens_release()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getScreenKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getHasPendingOperations()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPushOperations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPopOperations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final onNativeFragmentPop(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;)V
    .locals 7

    .line 146
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->getStackScreen$react_native_screens_release()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;->getScreenKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StackContainer ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] natively removed fragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->fragmentOpExecutor:Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;

    .line 156
    new-instance p1, Lcom/swmansion/rnscreens/gamma/stack/host/SetPrimaryNavFragmentOp;

    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    invoke-direct {p1, v0}, Lcom/swmansion/rnscreens/gamma/stack/host/SetPrimaryNavFragmentOp;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 154
    invoke-static/range {v1 .. v6}, Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;->executeOperations$react_native_screens_release$default(Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;Landroidx/fragment/app/FragmentManager;Ljava/util/List;ZILjava/lang/Object;)V

    :cond_0
    return-void

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "[RNScreens] Stack model should not be empty after a native pop"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "[RNScreens] onNativeFragmentPop must be called with the fragment present in stack model"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final performOperations(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->applyOperationsAndComputeFragmentManagerOperations()Ljava/util/List;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->fragmentOpExecutor:Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;->executeOperations$react_native_screens_release(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Z)V

    .line 95
    invoke-direct {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->dumpStackModel()V

    return-void
.end method

.method private final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Attempt to use nullish FragmentManager"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final enqueuePopOperation$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 2

    const-string v0, "stackScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPopOperations:Ljava/util/List;

    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;

    invoke-direct {v1, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final enqueuePushOperation$react_native_screens_release(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V
    .locals 2

    const-string v0, "stackScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->pendingPushOperations:Ljava/util/List;

    new-instance v1, Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;

    invoke-direct {v1, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;-><init>(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 46
    sget-object v0, Lcom/swmansion/rnscreens/utils/RNSLog;->INSTANCE:Lcom/swmansion/rnscreens/utils/RNSLog;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StackContainer ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] attached to window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackContainer"

    invoke-virtual {v0, v2, v1}, Lcom/swmansion/rnscreens/utils/RNSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onAttachedToWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->setupFragmentManger$react_native_screens_release()V

    .line 53
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->performContainerUpdateIfNeeded$react_native_screens_release()V

    return-void
.end method

.method public onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    instance-of v0, p1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[RNScreens] Unexpected type of fragment: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StackContainer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 188
    iget-object p2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;

    if-eqz p2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;->getStackScreen$react_native_screens_release()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;->onScreenDismiss(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;)V

    .line 189
    :cond_1
    iget-object p2, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->stackModel:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 190
    check-cast p1, Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;

    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->onNativeFragmentPop(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;)V

    :cond_2
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onDetachedFromWindow()V

    .line 58
    invoke-direct {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final performContainerUpdateIfNeeded$react_native_screens_release()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->getHasPendingOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->performOperations(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public final setupFragmentManger$react_native_screens_release()V
    .locals 2

    .line 64
    sget-object v0, Lcom/swmansion/rnscreens/gamma/helpers/FragmentManagerHelper;->INSTANCE:Lcom/swmansion/rnscreens/gamma/helpers/FragmentManagerHelper;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/gamma/helpers/FragmentManagerHelper;->findFragmentManagerForView(Landroid/view/ViewGroup;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 63
    iput-object v0, p0, Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Nullish fragment manager - can\'t run container operations"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
