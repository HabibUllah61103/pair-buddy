.class public final Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;
.super Ljava/lang/Object;
.source "PresentationItems.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;",
        "",
        "request",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "statePublisher",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)V",
        "getRequest",
        "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "getStatePublisher",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

.field private final statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statePublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    .line 47
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->copy(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    return-object v0
.end method

.method public final component2()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;)",
            "Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statePublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRequest()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    return-object v0
.end method

.method public final getStatePublisher()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->request:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;->statePublisher:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LastPresentationItems(request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", statePublisher="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
