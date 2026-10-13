.class public final Lcom/superwall/sdk/utilities/SuperwallBuilder;
.super Ljava/lang/Object;
.source "SuperwallDSL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u000c\u001a\u00020\u00182\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00180\u0016\u00a2\u0006\u0002\u0008\u001eH\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R.\u0010\u0015\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/superwall/sdk/utilities/SuperwallBuilder;",
        "",
        "<init>",
        "()V",
        "purchaseController",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "getPurchaseController",
        "()Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "setPurchaseController",
        "(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;)V",
        "value",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "options",
        "getOptions",
        "()Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "activityProvider",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "getActivityProvider",
        "()Lcom/superwall/sdk/misc/ActivityProvider;",
        "setActivityProvider",
        "(Lcom/superwall/sdk/misc/ActivityProvider;)V",
        "completion",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "",
        "getCompletion",
        "()Lkotlin/jvm/functions/Function1;",
        "setCompletion",
        "(Lkotlin/jvm/functions/Function1;)V",
        "action",
        "Lkotlin/ExtensionFunctionType;",
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
.field private activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field private completion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/superwall/sdk/config/options/SuperwallOptions;

.field private purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivityProvider()Lcom/superwall/sdk/misc/ActivityProvider;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-object v0
.end method

.method public final getCompletion()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->completion:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    return-object v0
.end method

.method public final getPurchaseController()Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    return-object v0
.end method

.method public final options(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation runtime Lcom/superwall/sdk/utilities/SuperwallDSL;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/superwall/sdk/config/options/SuperwallOptions;

    invoke-direct {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    return-void
.end method

.method public final setActivityProvider(Lcom/superwall/sdk/misc/ActivityProvider;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-void
.end method

.method public final setCompletion(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->completion:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPurchaseController(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/superwall/sdk/utilities/SuperwallBuilder;->purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    return-void
.end method
