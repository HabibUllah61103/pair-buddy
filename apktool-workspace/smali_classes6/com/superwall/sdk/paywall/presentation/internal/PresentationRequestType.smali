.class public abstract Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;
.super Ljava/lang/Object;
.source "PresentationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;,
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;,
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;,
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;,
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;,
        Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00112\u00020\u0001:\u0006\u000c\r\u000e\u000f\u0010\u0011B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0001\u0005\u0012\u0013\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;",
        "",
        "<init>",
        "()V",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "paywallViewDelegateAdapter",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
        "getPaywallViewDelegateAdapter",
        "()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;",
        "Presentation",
        "ConfirmAllAssignments",
        "GetPaywall",
        "GetPresentationResult",
        "GetImplicitPresentationResult",
        "Companion",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;",
        "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;",
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


# static fields
.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;->Companion:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 27
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$Presentation;

    if-eqz v0, :cond_0

    const-string v0, "presentation"

    return-object v0

    .line 28
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    if-eqz v0, :cond_1

    const-string v0, "getPaywallViewController"

    return-object v0

    .line 29
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPresentationResult;

    if-eqz v0, :cond_2

    const-string v0, "getPresentationResult"

    return-object v0

    .line 30
    :cond_2
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetImplicitPresentationResult;

    if-eqz v0, :cond_3

    const-string v0, "getImplicitPresentationResult"

    return-object v0

    .line 31
    :cond_3
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;

    if-eqz v0, :cond_4

    const-string v0, "confirmAllAssignments"

    return-object v0

    .line 32
    :cond_4
    const-string v0, "Unknown"

    return-object v0
.end method

.method public final getPaywallViewDelegateAdapter()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;
    .locals 1

    .line 36
    instance-of v0, p0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$GetPaywall;->getAdapter()Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
