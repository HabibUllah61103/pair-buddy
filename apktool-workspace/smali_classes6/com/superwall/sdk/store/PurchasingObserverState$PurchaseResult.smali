.class public final Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;
.super Lcom/superwall/sdk/store/PurchasingObserverState;
.source "PurchasingObserverState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/PurchasingObserverState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;",
        "Lcom/superwall/sdk/store/PurchasingObserverState;",
        "result",
        "Lcom/android/billingclient/api/BillingResult;",
        "purchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "<init>",
        "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V",
        "getResult",
        "()Lcom/android/billingclient/api/BillingResult;",
        "getPurchases",
        "()Ljava/util/List;",
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
.field private final purchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/superwall/sdk/store/PurchasingObserverState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p1, p0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->result:Lcom/android/billingclient/api/BillingResult;

    .line 23
    iput-object p2, p0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->purchases:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPurchases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->purchases:Ljava/util/List;

    return-object v0
.end method

.method public final getResult()Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;->result:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method
