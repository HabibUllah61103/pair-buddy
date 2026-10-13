.class public final synthetic Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

.field public final synthetic f$2:Lcom/superwall/sdk/paywall/request/PaywallRequest;

.field public final synthetic f$3:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(ZLcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$3:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/paywall/request/PaywallRequest;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0;->f$3:Ljava/util/Date;

    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywallResponse$2;->$r8$lambda$e5EG5J5mvIG2uhLUww94hg8i2iY(ZLcom/superwall/sdk/paywall/request/PaywallRequestManager;Lcom/superwall/sdk/paywall/request/PaywallRequest;Ljava/util/Date;Lcom/superwall/sdk/models/paywall/Paywall;)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p1

    return-object p1
.end method
