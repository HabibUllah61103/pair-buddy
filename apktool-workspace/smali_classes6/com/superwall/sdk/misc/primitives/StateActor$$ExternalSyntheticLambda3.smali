.class public final synthetic Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/misc/primitives/StateActor;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/misc/primitives/StateActor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda3;->f$0:Lcom/superwall/sdk/misc/primitives/StateActor;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/StateActor$$ExternalSyntheticLambda3;->f$0:Lcom/superwall/sdk/misc/primitives/StateActor;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-static {v0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->$r8$lambda$M0telRZQttAEVzsyWnhQylnj3wQ(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/misc/primitives/Reducer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
