.class public final Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;
.super Lcom/superwall/sdk/identity/IdentityState$Updates;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identify"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;",
        "Lcom/superwall/sdk/identity/IdentityState$Updates;",
        "userId",
        "",
        "restoreAssignments",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "getUserId",
        "()Ljava/lang/String;",
        "getRestoreAssignments",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field private final restoreAssignments:Z

.field private final userId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$H7fRlqHBA135HFBcENfdWB7HDAY(Ljava/lang/String;ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->_init_$lambda$1(Ljava/lang/String;ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    .line 94
    iput-boolean p2, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    return-void
.end method

.method private static final _init_$lambda$1(Ljava/lang/String;ZLcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 11

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 101
    :cond_0
    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityState;->getAppUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityState;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v7

    .line 104
    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;

    .line 102
    new-instance v1, Lcom/superwall/sdk/identity/IdentityState;

    .line 104
    move-object v6, v0

    check-cast v6, Lcom/superwall/sdk/identity/IdentityState$Phase;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 102
    invoke-direct/range {v1 .. v9}, Lcom/superwall/sdk/identity/IdentityState;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 111
    :goto_0
    sget-object v0, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    const/4 v1, 0x3

    .line 114
    new-array v1, v1, [Lkotlin/Pair;

    const-string v3, "appUserId"

    invoke-static {v3, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 115
    const-string v3, "aliasId"

    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 116
    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityState;->getSeed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seed"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 113
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 118
    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object v3

    .line 119
    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityState;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v0, v1, v3, v4}, Lcom/superwall/sdk/identity/IdentityLogic;->mergeAttributes(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 122
    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityState;->getPhase()Lcom/superwall/sdk/identity/IdentityState$Phase;

    move-result-object p2

    instance-of v0, p2, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;->getItems()Ljava/util/Set;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    :cond_4
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object p2

    .line 127
    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5

    .line 128
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 126
    invoke-static {p2}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v1, p1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;-><init>(Ljava/util/Set;)V

    move-object v7, p2

    check-cast v7, Lcom/superwall/sdk/identity/IdentityState$Phase;

    const/16 v9, 0x26

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 123
    invoke-static/range {v2 .. v10}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;Ljava/lang/String;ZILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->copy(Ljava/lang/String;Z)Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    iget-boolean p1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRestoreAssignments()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->userId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$Identify;->restoreAssignments:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Identify(userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", restoreAssignments="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
