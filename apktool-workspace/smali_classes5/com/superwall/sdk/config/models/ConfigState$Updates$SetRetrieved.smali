.class public final Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;
.super Lcom/superwall/sdk/config/models/ConfigState$Updates;
.source "ConfigState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/models/ConfigState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetRetrieved"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;",
        "Lcom/superwall/sdk/config/models/ConfigState$Updates;",
        "config",
        "Lcom/superwall/sdk/models/config/Config;",
        "<init>",
        "(Lcom/superwall/sdk/models/config/Config;)V",
        "getConfig",
        "()Lcom/superwall/sdk/models/config/Config;",
        "component1",
        "copy",
        "equals",
        "",
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
.field private final config:Lcom/superwall/sdk/models/config/Config;


# direct methods
.method public static synthetic $r8$lambda$RigSXT0ADFv2p0XezR1F-ClA_vM(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->_init_$lambda$0(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/models/config/Config;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/models/config/Config;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/config/models/ConfigState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p1, Lcom/superwall/sdk/config/models/ConfigState$Retrieved;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/config/models/ConfigState$Retrieved;-><init>(Lcom/superwall/sdk/models/config/Config;)V

    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState;

    return-object p1
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;Lcom/superwall/sdk/models/config/Config;ILjava/lang/Object;)Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->copy(Lcom/superwall/sdk/models/config/Config;)Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/models/config/Config;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/models/config/Config;)Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;-><init>(Lcom/superwall/sdk/models/config/Config;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;

    iget-object v1, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    iget-object p1, p1, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getConfig()Lcom/superwall/sdk/models/config/Config;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrieved;->config:Lcom/superwall/sdk/models/config/Config;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetRetrieved(config="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
