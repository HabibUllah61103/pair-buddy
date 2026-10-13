.class final Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DebugView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/debug/DebugView;->finishLoadingPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.debug.DebugView"
    f = "DebugView.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x239,
        0x23c,
        0x243
    }
    m = "finishLoadingPreview"
    n = {
        "this",
        "request",
        "paywall",
        "this",
        "paywall"
    }
    s = {
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

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/debug/DebugView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/debug/DebugView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/debug/DebugView$finishLoadingPreview$1;->this$0:Lcom/superwall/sdk/debug/DebugView;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/debug/DebugView;->finishLoadingPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
