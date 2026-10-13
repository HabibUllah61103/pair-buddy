.class public final Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
.super Ljava/lang/Object;
.source "PresentationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001*B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\t\u0010)\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006+"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;",
        "",
        "presentationInfo",
        "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;",
        "presenter",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "paywallOverrides",
        "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
        "flags",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;",
        "<init>",
        "(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V",
        "getPresentationInfo",
        "()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;",
        "getPresenter",
        "()Ljava/lang/ref/WeakReference;",
        "setPresenter",
        "(Ljava/lang/ref/WeakReference;)V",
        "getPaywallOverrides",
        "()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
        "setPaywallOverrides",
        "(Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;)V",
        "getFlags",
        "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;",
        "setFlags",
        "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V",
        "presentationSourceType",
        "",
        "getPresentationSourceType",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Flags",
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
.field private flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

.field private paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

.field private final presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

.field private presenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;",
            ")V"
        }
    .end annotation

    const-string v0, "presentationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    .line 52
    iput-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    .line 54
    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 50
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->copy(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component3()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    return-object v0
.end method

.method public final component4()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;",
            ")",
            "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;"
        }
    .end annotation

    const-string v0, "presentationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;-><init>(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Ljava/lang/ref/WeakReference;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFlags()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    return-object v0
.end method

.method public final getPaywallOverrides()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    return-object v0
.end method

.method public final getPresentationInfo()Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    return-object v0
.end method

.method public final getPresentationSourceType()Ljava/lang/String;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    .line 69
    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ImplicitTrigger;

    if-eqz v1, :cond_0

    const-string v0, "implicit"

    return-object v0

    .line 70
    :cond_0
    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$FromIdentifier;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->getType()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    move-result-object v0

    .line 72
    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    if-eqz v1, :cond_3

    const-string v0, "getPaywall"

    return-object v0

    .line 73
    :cond_3
    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;

    if-eqz v1, :cond_4

    const-string v0, "register"

    return-object v0

    .line 74
    :cond_4
    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    return-object v2

    .line 75
    :cond_5
    instance-of v1, v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    if-eqz v1, :cond_6

    return-object v2

    .line 76
    :cond_6
    instance-of v0, v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;

    return-object v2
.end method

.method public final getPresenter()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFlags(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    return-void
.end method

.method public final setPaywallOverrides(Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    return-void
.end method

.method public final setPresenter(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presentationInfo:Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->presenter:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->paywallOverrides:Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;->flags:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest$Flags;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PresentationRequest(presentationInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", presenter="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywallOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

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
