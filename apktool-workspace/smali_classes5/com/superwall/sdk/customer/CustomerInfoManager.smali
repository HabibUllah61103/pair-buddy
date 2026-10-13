.class public final Lcom/superwall/sdk/customer/CustomerInfoManager;
.super Ljava/lang/Object;
.source "CustomerInfoManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/superwall/sdk/customer/CustomerInfoManager;",
        "",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "updateCustomerInfo",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "hasExternalPurchaseController",
        "Lkotlin/Function0;",
        "",
        "getSubscriptionStatus",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "<init>",
        "(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "updateMergedCustomerInfo",
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
.field private final getSubscriptionStatus:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final hasExternalPurchaseController:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final storage:Lcom/superwall/sdk/storage/Storage;

.field private final updateCustomerInfo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storage;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateCustomerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasExternalPurchaseController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSubscriptionStatus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->storage:Lcom/superwall/sdk/storage/Storage;

    .line 35
    iput-object p2, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->updateCustomerInfo:Lkotlin/jvm/functions/Function1;

    .line 36
    iput-object p3, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 37
    iput-object p4, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->hasExternalPurchaseController:Lkotlin/jvm/functions/Function0;

    .line 38
    iput-object p5, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->getSubscriptionStatus:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getGetSubscriptionStatus$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->getSubscriptionStatus:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getHasExternalPurchaseController$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->hasExternalPurchaseController:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lcom/superwall/sdk/storage/Storage;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->storage:Lcom/superwall/sdk/storage/Storage;

    return-object p0
.end method

.method public static final synthetic access$getUpdateCustomerInfo$p(Lcom/superwall/sdk/customer/CustomerInfoManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->updateCustomerInfo:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final updateMergedCustomerInfo()V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/superwall/sdk/customer/CustomerInfoManager;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/customer/CustomerInfoManager$updateMergedCustomerInfo$1;-><init>(Lcom/superwall/sdk/customer/CustomerInfoManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
