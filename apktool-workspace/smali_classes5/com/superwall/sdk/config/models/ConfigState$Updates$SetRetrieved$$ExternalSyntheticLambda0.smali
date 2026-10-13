.class public final synthetic Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/models/config/Config;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/models/config/Config;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/models/config/Config;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/models/config/Config;

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {v0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->$r8$lambda$RigSXT0ADFv2p0XezR1F-ClA_vM(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;

    move-result-object p1

    return-object p1
.end method
