.class final Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;
.super Ljava/lang/Object;
.source "UserPermissionsImpl.kt"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/permissions/UserPermissionsImpl;->requestRuntimePermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $launcher:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;->$launcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;->onActivityResult(Z)V

    return-void
.end method

.method public final onActivityResult(Z)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;->$launcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_0
    if-eqz p1, :cond_1

    .line 195
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->GRANTED:Lcom/superwall/sdk/permissions/PermissionStatus;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/superwall/sdk/permissions/PermissionStatus;->DENIED:Lcom/superwall/sdk/permissions/PermissionStatus;

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/superwall/sdk/permissions/UserPermissionsImpl$requestRuntimePermission$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
