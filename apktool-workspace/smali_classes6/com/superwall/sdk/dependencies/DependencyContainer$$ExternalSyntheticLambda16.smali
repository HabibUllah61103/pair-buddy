.class public final synthetic Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/dependencies/DependencyContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/dependencies/DependencyContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda16;->f$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/dependencies/DependencyContainer$$ExternalSyntheticLambda16;->f$0:Lcom/superwall/sdk/dependencies/DependencyContainer;

    check-cast p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-static {v0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->$r8$lambda$nEcktFX_cmpZfNd_kcfI2appwZc(Lcom/superwall/sdk/dependencies/DependencyContainer;Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
