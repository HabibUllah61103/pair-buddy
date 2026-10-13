.class final Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebPaywallRedeemer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/web/WebPaywallRedeemer;->redeem(Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.web.WebPaywallRedeemer"
    f = "WebPaywallRedeemer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8,
        0x8,
        0x9,
        0x9
    }
    l = {
        0xc1,
        0xc2,
        0xca,
        0xd1,
        0xcc,
        0xdc,
        0x101,
        0x106,
        0x128,
        0x143
    }
    m = "redeem"
    n = {
        "this",
        "redemption",
        "allCodes",
        "this",
        "redemption",
        "allCodes",
        "this",
        "redemption",
        "allCodes",
        "this",
        "redemption",
        "this",
        "redemption",
        "this",
        "redemption",
        "it",
        "this",
        "redemption",
        "it",
        "this",
        "redemption",
        "it",
        "this",
        "redemption",
        "it",
        "this",
        "errorMessage"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/web/WebPaywallRedeemer$redeem$1;->this$0:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->redeem(Lcom/superwall/sdk/web/WebPaywallRedeemer$RedeemType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
