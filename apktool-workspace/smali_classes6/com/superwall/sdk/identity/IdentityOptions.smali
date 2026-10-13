.class public final Lcom/superwall/sdk/identity/IdentityOptions;
.super Ljava/lang/Object;
.source "IdentityOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityOptions;",
        "",
        "restorePaywallAssignments",
        "",
        "<init>",
        "(Z)V",
        "getRestorePaywallAssignments",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
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
.field private final restorePaywallAssignments:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/superwall/sdk/identity/IdentityOptions;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/superwall/sdk/identity/IdentityOptions;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityOptions;ZILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityOptions;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/identity/IdentityOptions;->copy(Z)Lcom/superwall/sdk/identity/IdentityOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    return v0
.end method

.method public final copy(Z)Lcom/superwall/sdk/identity/IdentityOptions;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityOptions;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityOptions;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityOptions;

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRestorePaywallAssignments()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityOptions;->restorePaywallAssignments:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdentityOptions(restorePaywallAssignments="

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
