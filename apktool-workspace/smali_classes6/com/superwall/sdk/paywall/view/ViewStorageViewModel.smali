.class public final Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ViewStorageViewModel.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/ViewStorage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/superwall/sdk/paywall/view/ViewStorage;",
        "<init>",
        "()V",
        "views",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Landroid/view/View;",
        "getViews",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
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


# instance fields
.field private final views:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->views:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public all()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/ViewStorage$DefaultImpls;->all(Lcom/superwall/sdk/paywall/view/ViewStorage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViews()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->views:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/superwall/sdk/paywall/view/ViewStorage$DefaultImpls;->keys(Lcom/superwall/sdk/paywall/view/ViewStorage;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeView(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/ViewStorage$DefaultImpls;->removeView(Lcom/superwall/sdk/paywall/view/ViewStorage;Ljava/lang/String;)V

    return-void
.end method

.method public retrieveView(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/ViewStorage$DefaultImpls;->retrieveView(Lcom/superwall/sdk/paywall/view/ViewStorage;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public storeView(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/ViewStorage$DefaultImpls;->storeView(Lcom/superwall/sdk/paywall/view/ViewStorage;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
