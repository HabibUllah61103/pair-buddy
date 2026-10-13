.class public final synthetic Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/misc/primitives/StateActor;

.field public final synthetic f$1:Lcom/superwall/sdk/storage/Storage;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/misc/primitives/StateActor;

    iput-object p2, p0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/storage/Storage;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/superwall/sdk/misc/primitives/StateActor;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/storage/Storage;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1, p2}, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;->$r8$lambda$XmkEU4MEQ0pCb2nY5u7fIbVqz1I(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
