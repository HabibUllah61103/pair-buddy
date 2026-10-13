.class public final Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;
.super Lcom/superwall/sdk/config/models/ConfigState$Actions;
.source "ConfigState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions;",
        "force",
        "",
        "<init>",
        "(Z)V",
        "getForce",
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
.field private final force:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 239
    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/config/models/ConfigState$Actions;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;ZILjava/lang/Object;)Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->copy(Z)Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    return v0
.end method

.method public final copy(Z)Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;

    iget-boolean v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getForce()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;->force:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RefreshConfig(force="

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
