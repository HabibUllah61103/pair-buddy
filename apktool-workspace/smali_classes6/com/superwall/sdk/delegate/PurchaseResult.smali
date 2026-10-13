.class public abstract Lcom/superwall/sdk/delegate/PurchaseResult;
.super Ljava/lang/Object;
.source "PurchaseResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;,
        Lcom/superwall/sdk/delegate/PurchaseResult$Failed;,
        Lcom/superwall/sdk/delegate/PurchaseResult$Pending;,
        Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0007\u0008\t\nB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u0082\u0001\u0004\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "",
        "<init>",
        "()V",
        "equals",
        "",
        "other",
        "Cancelled",
        "Purchased",
        "Pending",
        "Failed",
        "Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;",
        "Lcom/superwall/sdk/delegate/PurchaseResult$Failed;",
        "Lcom/superwall/sdk/delegate/PurchaseResult$Pending;",
        "Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/delegate/PurchaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 61
    instance-of v0, p0, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/superwall/sdk/delegate/PurchaseResult$Cancelled;

    if-eqz v0, :cond_0

    return v1

    .line 62
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/superwall/sdk/delegate/PurchaseResult$Purchased;

    if-eqz v0, :cond_1

    return v1

    .line 63
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/delegate/PurchaseResult$Pending;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/superwall/sdk/delegate/PurchaseResult$Pending;

    if-eqz v0, :cond_2

    return v1

    .line 64
    :cond_2
    instance-of v0, p0, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {v0}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;

    invoke-virtual {p1}, Lcom/superwall/sdk/delegate/PurchaseResult$Failed;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
