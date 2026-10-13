.class public interface abstract Lcom/superwall/sdk/permissions/UserPermissions;
.super Ljava/lang/Object;
.source "UserPermissions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/permissions/UserPermissions;",
        "",
        "hasPermission",
        "Lcom/superwall/sdk/permissions/PermissionStatus;",
        "permission",
        "Lcom/superwall/sdk/permissions/PermissionType;",
        "requestPermission",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract hasPermission(Lcom/superwall/sdk/permissions/PermissionType;)Lcom/superwall/sdk/permissions/PermissionStatus;
.end method

.method public abstract requestPermission(Landroid/app/Activity;Lcom/superwall/sdk/permissions/PermissionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/permissions/PermissionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/permissions/PermissionStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
