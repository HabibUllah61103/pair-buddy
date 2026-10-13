.class public final synthetic Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/Superwall;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/Superwall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/Superwall;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/Superwall;

    invoke-static {v0}, Lcom/superwall/sdk/Superwall;->$r8$lambda$sRrDDGPrsNg2jJBhQDzWaeidyPY(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method
