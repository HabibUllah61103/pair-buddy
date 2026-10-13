.class public final synthetic Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iput p2, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iget v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetFailed;->$r8$lambda$TM2AH_gf7Jr9kDieKdGjaG6uH24(Ljava/lang/Throwable;ILcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;

    move-result-object p1

    return-object p1
.end method
