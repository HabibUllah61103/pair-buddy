.class public final Lcom/superwall/sdk/identity/IdentityPendingInterceptor;
.super Ljava/lang/Object;
.source "IdentityPendingInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityPendingInterceptor;",
        "",
        "<init>",
        "()V",
        "install",
        "",
        "actor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "Lcom/superwall/sdk/identity/IdentityContext;",
        "Lcom/superwall/sdk/identity/IdentityState;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/identity/IdentityPendingInterceptor;


# direct methods
.method public static synthetic $r8$lambda$DcMqoVATbkKEj5kMV-awYWCFSQ0(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor;->install$lambda$0(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor;

    invoke-direct {v0}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor;-><init>()V

    sput-object v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor;->INSTANCE:Lcom/superwall/sdk/identity/IdentityPendingInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final install$lambda$0(Lcom/superwall/sdk/misc/primitives/StateActor;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginAttributes;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$BeginAttributes;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    goto :goto_0

    .line 11
    :cond_1
    instance-of p1, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;

    check-cast p1, Lcom/superwall/sdk/misc/primitives/Reducer;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/misc/primitives/StateActor;->update(Lcom/superwall/sdk/misc/primitives/Reducer;)V

    .line 13
    :cond_2
    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final install(Lcom/superwall/sdk/misc/primitives/StateActor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->onAction(Lkotlin/jvm/functions/Function2;)V

    .line 16
    new-instance v0, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/superwall/sdk/identity/IdentityPendingInterceptor$install$2;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->onActionExecution(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
