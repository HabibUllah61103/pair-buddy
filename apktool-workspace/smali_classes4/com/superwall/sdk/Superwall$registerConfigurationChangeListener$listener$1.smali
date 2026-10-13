.class public final Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1;
.super Ljava/lang/Object;
.source "Superwall.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/Superwall;->registerConfigurationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1",
        "Landroid/content/ComponentCallbacks2;",
        "onConfigurationChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onLowMemory",
        "onTrimMemory",
        "level",
        "",
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
.field final synthetic this$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/Superwall;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1;->this$0:Lcom/superwall/sdk/Superwall;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    iget-object p1, p0, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1;->this$0:Lcom/superwall/sdk/Superwall;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1$onConfigurationChanged$1;

    iget-object v1, p0, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1;->this$0:Lcom/superwall/sdk/Superwall;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1$onConfigurationChanged$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
