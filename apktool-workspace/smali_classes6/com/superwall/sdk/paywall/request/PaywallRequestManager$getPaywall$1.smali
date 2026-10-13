.class final Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PaywallRequestManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.paywall.request.PaywallRequestManager"
    f = "PaywallRequestManager.kt"
    i = {}
    l = {
        0x43
    }
    m = "getPaywall"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/request/PaywallRequestManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/paywall/request/PaywallRequestManager$getPaywall$1;->this$0:Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->getPaywall(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
