.class public final Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;
.super Ljava/lang/Object;
.source "PresentationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flags"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\tH\u00c6\u0003J9\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u000c\"\u0004\u0008\u0013\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;",
        "",
        "isDebuggerLaunched",
        "",
        "entitlements",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "isPaywallPresented",
        "type",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
        "<init>",
        "(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V",
        "()Z",
        "setDebuggerLaunched",
        "(Z)V",
        "getEntitlements",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "setEntitlements",
        "(Lkotlinx/coroutines/flow/StateFlow;)V",
        "setPaywallPresented",
        "getType",
        "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
        "setType",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private entitlements:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private isDebuggerLaunched:Z

.field private isPaywallPresented:Z

.field private type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;


# direct methods
.method public constructor <init>(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;Z",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
            ")V"
        }
    .end annotation

    const-string v0, "entitlements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    .line 58
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    .line 59
    iput-boolean p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    .line 60
    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->copy(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    return v0
.end method

.method public final component2()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    return v0
.end method

.method public final component4()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    return-object v0
.end method

.method public final copy(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;Z",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
            ")",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;"
        }
    .end annotation

    const-string v0, "entitlements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;-><init>(ZLkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEntitlements()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDebuggerLaunched()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    return v0
.end method

.method public final isPaywallPresented()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    return v0
.end method

.method public final setDebuggerLaunched(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    return-void
.end method

.method public final setEntitlements(Lkotlinx/coroutines/flow/StateFlow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public final setPaywallPresented(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    return-void
.end method

.method public final setType(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isDebuggerLaunched:Z

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->entitlements:Lkotlinx/coroutines/flow/StateFlow;

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->isPaywallPresented:Z

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->type:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flags(isDebuggerLaunched="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", entitlements="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaywallPresented="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
