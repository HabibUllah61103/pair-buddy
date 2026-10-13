.class public final Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;
.super Lcom/superwall/sdk/identity/IdentityState$Updates;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeedResolved"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;",
        "Lcom/superwall/sdk/identity/IdentityState$Updates;",
        "seed",
        "",
        "<init>",
        "(I)V",
        "getSeed",
        "()I",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final seed:I


# direct methods
.method public static synthetic $r8$lambda$8sr2vq7k8_o_Sz5gVGQ0qSLpktY(ILcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->_init_$lambda$0(ILcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 136
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    iput p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    return-void
.end method

.method private static final _init_$lambda$0(ILcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 13

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    const/4 v1, 0x3

    .line 141
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "appUserId"

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 142
    const-string v2, "aliasId"

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAliasId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 143
    const-string v2, "seed"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 140
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getUserAttributes()Ljava/util/Map;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityState;->getAppInstalledAtString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lcom/superwall/sdk/identity/IdentityLogic;->mergeAttributes(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, p0

    move-object v4, p1

    .line 150
    invoke-static/range {v4 .. v12}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    .line 151
    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Pending;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/identity/IdentityState;->resolve(Lcom/superwall/sdk/identity/IdentityState$Pending;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;IILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->copy(I)Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    return v0
.end method

.method public final copy(I)Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;

    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    iget p1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSeed()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$SeedResolved;->seed:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SeedResolved(seed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
