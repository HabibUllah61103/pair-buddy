.class final Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AwaitUntilNetworkExists.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt;->awaitUntilNetworkExists(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.network.AwaitUntilNetworkExistsKt"
    f = "AwaitUntilNetworkExists.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xe,
        0x10
    }
    m = "awaitUntilNetworkExists"
    n = {
        "$this$awaitUntilNetworkExists",
        "checkInterval"
    }
    s = {
        "L$0",
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt$awaitUntilNetworkExists$1;->label:I

    const-wide/16 v0, 0x0

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1}, Lcom/superwall/sdk/network/AwaitUntilNetworkExistsKt;->awaitUntilNetworkExists(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
