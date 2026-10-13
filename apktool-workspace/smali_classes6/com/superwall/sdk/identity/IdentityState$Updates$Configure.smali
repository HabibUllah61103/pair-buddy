.class public final Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;
.super Lcom/superwall/sdk/identity/IdentityState$Updates;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Updates;
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
        "Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;",
        "Lcom/superwall/sdk/identity/IdentityState$Updates;",
        "needsAssignments",
        "",
        "<init>",
        "(Z)V",
        "getNeedsAssignments",
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
.field private final needsAssignments:Z


# direct methods
.method public static synthetic $r8$lambda$XGGa4VJ1gYo_DZcoNg_rPtMT7Cc(ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->_init_$lambda$0(ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 203
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure$$ExternalSyntheticLambda0;-><init>(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    iput-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    return-void
.end method

.method private static final _init_$lambda$0(ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 9

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getPhase()Lcom/superwall/sdk/identity/IdentityState$Phase;

    move-result-object v0

    instance-of v1, v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;->getItems()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 209
    :cond_2
    sget-object v1, Lcom/superwall/sdk/identity/IdentityState$Pending$Configuration;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Configuration;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    if-eqz p0, :cond_3

    .line 210
    sget-object p0, Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/lang/Iterable;

    .line 209
    invoke-static {v0, p0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 211
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    sget-object p0, Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;

    move-object v5, p0

    check-cast v5, Lcom/superwall/sdk/identity/IdentityState$Phase;

    const/16 v7, 0x2f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0

    :cond_4
    move-object v0, p1

    .line 214
    new-instance p1, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;-><init>(Ljava/util/Set;)V

    move-object v5, p1

    check-cast v5, Lcom/superwall/sdk/identity/IdentityState$Phase;

    const/16 v7, 0x2f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;ZILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->copy(Z)Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    return v0
.end method

.method public final copy(Z)Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getNeedsAssignments()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Configure;->needsAssignments:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Configure(needsAssignments="

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
