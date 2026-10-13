.class public final Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;
.super Ljava/lang/Object;
.source "IdentityPersistenceInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;",
        "",
        "<init>",
        "()V",
        "install",
        "",
        "actor",
        "Lcom/superwall/sdk/misc/primitives/StateActor;",
        "Lcom/superwall/sdk/identity/IdentityContext;",
        "Lcom/superwall/sdk/identity/IdentityState;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;


# direct methods
.method public static synthetic $r8$lambda$XmkEU4MEQ0pCb2nY5u7fIbVqz1I(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;->install$lambda$0(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;

    invoke-direct {v0}, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;-><init>()V

    sput-object v0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;->INSTANCE:Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final install$lambda$0(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/primitives/Reducer;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    const-string v0, "reducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState;

    .line 24
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/superwall/sdk/misc/primitives/StateActor;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/superwall/sdk/identity/IdentityState;

    .line 27
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/superwall/sdk/storage/AliasId;->INSTANCE:Lcom/superwall/sdk/storage/AliasId;

    check-cast p2, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getSeed()I

    move-result p2

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getSeed()I

    move-result p3

    if-eq p2, p3, :cond_1

    sget-object p2, Lcom/superwall/sdk/storage/Seed;->INSTANCE:Lcom/superwall/sdk/storage/Seed;

    check-cast p2, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getSeed()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/superwall/sdk/storage/UserAttributes;->INSTANCE:Lcom/superwall/sdk/storage/UserAttributes;

    check-cast p2, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 31
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 32
    sget-object p2, Lcom/superwall/sdk/storage/AppUserId;->INSTANCE:Lcom/superwall/sdk/storage/AppUserId;

    check-cast p2, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_3
    sget-object p0, Lcom/superwall/sdk/storage/AppUserId;->INSTANCE:Lcom/superwall/sdk/storage/AppUserId;

    check-cast p0, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p1, p0}, Lcom/superwall/sdk/storage/Storage;->delete(Lcom/superwall/sdk/storage/Storable;)V

    .line 37
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final install(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/misc/primitives/StateActor<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lcom/superwall/sdk/identity/IdentityState;",
            ">;",
            "Lcom/superwall/sdk/storage/Storage;",
            ")V"
        }
    .end annotation

    const-string v0, "actor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/identity/IdentityPersistenceInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/storage/Storage;)V

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/misc/primitives/StateActor;->onUpdate(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
