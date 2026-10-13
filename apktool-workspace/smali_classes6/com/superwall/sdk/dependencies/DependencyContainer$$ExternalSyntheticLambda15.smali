.class public final synthetic Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda15;->f$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda15;->f$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;

    invoke-static {v0, p1, p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->$r8$lambda$TidQfk3qxoGPV7G2SdMc8gAzMQ0(Lcom/superwall/sdk/dependencies/DependencyContainer;Ljava/lang/String;Lcom/superwall/sdk/paywall/view/PaywallViewState$Updates;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
