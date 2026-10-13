.class public final Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;
.super Lcom/superwall/sdk/identity/IdentityState$Actions;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions;",
        "neverCalledStaticConfig",
        "",
        "<init>",
        "(Z)V",
        "getNeverCalledStaticConfig",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final neverCalledStaticConfig:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 250
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 249
    iput-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;ZILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->copy(Z)Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    return v0
.end method

.method public final copy(Z)Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getNeverCalledStaticConfig()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;->neverCalledStaticConfig:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Configure(neverCalledStaticConfig="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
