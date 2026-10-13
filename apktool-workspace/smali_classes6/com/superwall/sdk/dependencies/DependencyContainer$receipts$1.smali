.class final Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DependencyContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/dependencies/DependencyContainer;->receipts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.superwall.sdk.dependencies.DependencyContainer"
    f = "DependencyContainer.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x4e4,
        0x4e6
    }
    m = "receipts"
    n = {
        "this",
        "this",
        "destination$iv$iv",
        "it",
        "id"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/dependencies/DependencyContainer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/dependencies/DependencyContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$receipts$1;->this$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->receipts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
