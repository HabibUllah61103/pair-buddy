.class public final synthetic Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->$r8$lambda$H7fRlqHBA135HFBcENfdWB7HDAY(Ljava/lang/String;ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p1

    return-object p1
.end method
