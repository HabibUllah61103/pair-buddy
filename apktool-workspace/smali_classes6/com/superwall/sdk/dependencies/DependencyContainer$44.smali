.class final Lcom/superwall/sdk/dependencies/DependencyContainer$44;
.super Ljava/lang/Object;
.source "DependencyContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/dependencies/DependencyContainer;-><init>(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/superwall/sdk/models/internal/VendorId;",
        ">;"
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
.field final synthetic this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$44;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer$44;->invoke-6xTLGo0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/models/internal/VendorId;->box-impl(Ljava/lang/String;)Lcom/superwall/sdk/models/internal/VendorId;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-6xTLGo0()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$44;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getVendorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/models/internal/VendorId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
