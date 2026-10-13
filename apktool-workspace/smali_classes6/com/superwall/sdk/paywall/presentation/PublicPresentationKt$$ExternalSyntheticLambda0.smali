.class public final synthetic Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/Superwall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/Superwall;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/Superwall;

    check-cast p1, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->$r8$lambda$9EgvMavujRDupFYWWbkDwTj6AQE(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object p1

    return-object p1
.end method
