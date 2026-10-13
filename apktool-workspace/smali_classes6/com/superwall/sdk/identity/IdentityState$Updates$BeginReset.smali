.class public final Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;
.super Lcom/superwall/sdk/identity/IdentityState$Updates;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BeginReset"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;",
        "Lcom/superwall/sdk/identity/IdentityState$Updates;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;


# direct methods
.method public static synthetic $r8$lambda$17zZQEHDmSGO5E3pQRqx6bsImaU(Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;->_init_$lambda$0(Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;

    invoke-direct {v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;-><init>()V

    sput-object v0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 192
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$BeginReset$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 11

    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getPhase()Lcom/superwall/sdk/identity/IdentityState$Phase;

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

    .line 194
    :cond_2
    new-instance v1, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    sget-object v2, Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;-><init>(Ljava/util/Set;)V

    move-object v7, v1

    check-cast v7, Lcom/superwall/sdk/identity/IdentityState$Phase;

    const/16 v9, 0x2f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method
