.class public final Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;
.super Ljava/lang/Object;
.source "SuperwallBillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductDetailsParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$Companion;,
        Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\n\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;",
        "",
        "params",
        "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;",
        "details",
        "Lcom/android/billingclient/api/ProductDetails;",
        "<init>",
        "(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;Lcom/android/billingclient/api/ProductDetails;)V",
        "getDetails$superwall_release",
        "()Lcom/android/billingclient/api/ProductDetails;",
        "toOriginal",
        "Companion",
        "ProductDetailsParamsBuilder",
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
.field public static final Companion:Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$Companion;


# instance fields
.field private final details:Lcom/android/billingclient/api/ProductDetails;

.field private final params:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->Companion:Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->params:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 58
    iput-object p2, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->details:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;Lcom/android/billingclient/api/ProductDetails;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;-><init>(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method


# virtual methods
.method public final getDetails$superwall_release()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->details:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method

.method public final toOriginal()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;->params:Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    return-object v0
.end method
