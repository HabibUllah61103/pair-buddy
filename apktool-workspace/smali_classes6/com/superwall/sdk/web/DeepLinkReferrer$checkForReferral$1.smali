.class final Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DeepLinkReferrer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/web/DeepLinkReferrer;->checkForReferral-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.web.DeepLinkReferrer"
    f = "DeepLinkReferrer.kt"
    i = {
        0x0
    }
    l = {
        0x63
    }
    m = "checkForReferral-IoAF18A"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/web/DeepLinkReferrer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/web/DeepLinkReferrer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/web/DeepLinkReferrer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->this$0:Lcom/superwall/sdk/web/DeepLinkReferrer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/web/DeepLinkReferrer$checkForReferral$1;->this$0:Lcom/superwall/sdk/web/DeepLinkReferrer;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/web/DeepLinkReferrer;->checkForReferral-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
