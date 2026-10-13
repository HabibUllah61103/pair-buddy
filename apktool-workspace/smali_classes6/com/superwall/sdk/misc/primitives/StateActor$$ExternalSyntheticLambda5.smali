.class public final synthetic Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lcom/superwall/sdk/misc/primitives/TypedAction;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;->f$1:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iput-object p3, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;->f$1:Lcom/superwall/sdk/misc/primitives/TypedAction;

    iget-object v2, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lcom/superwall/sdk/misc/primitives/StateActor;->$r8$lambda$HJxHVSTca-8Dg0i1q0vX70ndm98(Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
