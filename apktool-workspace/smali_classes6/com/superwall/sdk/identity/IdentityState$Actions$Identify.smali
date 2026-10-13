.class public final Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;
.super Lcom/superwall/sdk/identity/IdentityState$Actions;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identify"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions;",
        "userId",
        "",
        "options",
        "Lcom/superwall/sdk/identity/IdentityOptions;",
        "<init>",
        "(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V",
        "getUserId",
        "()Ljava/lang/String;",
        "getOptions",
        "()Lcom/superwall/sdk/identity/IdentityOptions;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final options:Lcom/superwall/sdk/identity/IdentityOptions;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V
    .locals 2

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify$1;-><init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Actions;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 265
    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->copy(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/identity/IdentityOptions;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;-><init>(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityOptions;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    iget-object p1, p1, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOptions()Lcom/superwall/sdk/identity/IdentityOptions;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/identity/IdentityOptions;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;->options:Lcom/superwall/sdk/identity/IdentityOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Identify(userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", options="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
