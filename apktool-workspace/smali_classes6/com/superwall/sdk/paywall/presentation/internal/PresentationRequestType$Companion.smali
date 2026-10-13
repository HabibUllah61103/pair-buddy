.class public final Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;
.super Ljava/lang/Object;
.source "PresentationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;",
        "",
        "<init>",
        "()V",
        "areEqual",
        "",
        "lhs",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
        "rhs",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final areEqual(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Z
    .locals 1

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v0, p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;->getAdapter()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    move-result-object p1

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    invoke-virtual {p2}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;->getAdapter()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
