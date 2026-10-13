.class public final synthetic Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStatusDidChange$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/superwall/sdk/models/entitlements/Entitlement;

    invoke-static {p1}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$SubscriptionStatusDidChange;->$r8$lambda$SpcCf4-U4Xja27l3N6WLTSlcaS0(Lcom/superwall/sdk/models/entitlements/Entitlement;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
