.class public final Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;
.super Ljava/lang/Object;
.source "SuperwallBillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;,
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Companion;,
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;,
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProrationMode;,
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u000e2\u00020\u0001:\u0005\u000e\u000f\u0010\u0011\u0012B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\r\u001a\u00020\u0003R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;",
        "",
        "params",
        "Lcom/android/billingclient/api/BillingFlowParams;",
        "productDetailsParams",
        "",
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
        "<init>",
        "(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;)V",
        "getParams$superwall_release",
        "()Lcom/android/billingclient/api/BillingFlowParams;",
        "getProductDetailsParams$superwall_release",
        "()Ljava/util/List;",
        "toOriginal",
        "Companion",
        "Builder",
        "ProductDetailsParams",
        "SubscriptionUpdateParams",
        "ProrationMode",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Companion;


# instance fields
.field private final params:Lcom/android/billingclient/api/BillingFlowParams;

.field private final productDetailsParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->Companion:Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingFlowParams;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->params:Lcom/android/billingclient/api/BillingFlowParams;

    .line 9
    iput-object p2, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->productDetailsParams:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;-><init>(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;-><init>(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getParams$superwall_release()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->params:Lcom/android/billingclient/api/BillingFlowParams;

    return-object v0
.end method

.method public final getProductDetailsParams$superwall_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->productDetailsParams:Ljava/util/List;

    return-object v0
.end method

.method public final toOriginal()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;->params:Lcom/android/billingclient/api/BillingFlowParams;

    return-object v0
.end method
