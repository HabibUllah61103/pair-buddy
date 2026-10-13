.class public final Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;
.super Lcom/superwall/sdk/identity/IdentityState$Updates;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BeginIdentify"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;",
        "Lcom/superwall/sdk/identity/IdentityState$Updates;",
        "id",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "component1",
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
.field private final id:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$XcIeCZ2oglDaPELjvPdV6cVfCO4(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->_init_$lambda$0(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 11

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
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

    .line 176
    :cond_2
    new-instance v1, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    new-instance v2, Lcom/superwall/sdk/identity/IdentityState$Pending$Identification;

    invoke-direct {v2, p0}, Lcom/superwall/sdk/identity/IdentityState$Pending$Identification;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;-><init>(Ljava/util/Set;)V

    move-object v7, v1

    check-cast v7, Lcom/superwall/sdk/identity/IdentityState$Phase;

    const/16 v9, 0x2f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->copy(Ljava/lang/String;)Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginIdentify;->id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BeginIdentify(id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
