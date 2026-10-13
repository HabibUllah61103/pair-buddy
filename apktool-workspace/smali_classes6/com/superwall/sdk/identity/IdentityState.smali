.class public final Lcom/superwall/sdk/identity/IdentityState;
.super Ljava/lang/Object;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/identity/IdentityState$Actions;,
        Lcom/superwall/sdk/identity/IdentityState$Pending;,
        Lcom/superwall/sdk/identity/IdentityState$Phase;,
        Lcom/superwall/sdk/identity/IdentityState$Updates;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityManagerActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityManagerActor.kt\ncom/superwall/sdk/identity/IdentityState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,475:1\n1#2:476\n1755#3,3:477\n*S KotlinDebug\n*F\n+ 1 IdentityManagerActor.kt\ncom/superwall/sdk/identity/IdentityState\n*L\n75#1:477,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u00044567BQ\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\"J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0006H\u00c6\u0003J\u0015\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0008H\u00c6\u0003J\t\u0010-\u001a\u00020\nH\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003JS\u0010/\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\u0013\u00100\u001a\u00020\u00192\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u00020\u0006H\u00d6\u0001J\t\u00103\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u000fR\u0011\u0010\u001d\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001aR\u001d\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0014R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001a\u00a8\u00068"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState;",
        "",
        "appUserId",
        "",
        "aliasId",
        "seed",
        "",
        "userAttributes",
        "",
        "phase",
        "Lcom/superwall/sdk/identity/IdentityState$Phase;",
        "appInstalledAtString",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)V",
        "getAppUserId",
        "()Ljava/lang/String;",
        "getAliasId",
        "getSeed",
        "()I",
        "getUserAttributes",
        "()Ljava/util/Map;",
        "getPhase",
        "()Lcom/superwall/sdk/identity/IdentityState$Phase;",
        "getAppInstalledAtString",
        "isReady",
        "",
        "()Z",
        "userId",
        "getUserId",
        "isLoggedIn",
        "enrichedAttributes",
        "getEnrichedAttributes",
        "pending",
        "",
        "Lcom/superwall/sdk/identity/IdentityState$Pending;",
        "getPending",
        "()Ljava/util/Set;",
        "hasPendingIdentityResolution",
        "getHasPendingIdentityResolution",
        "resolve",
        "item",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Pending",
        "Phase",
        "Updates",
        "Actions",
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
.field private final aliasId:Ljava/lang/String;

.field private final appInstalledAtString:Ljava/lang/String;

.field private final appUserId:Ljava/lang/String;

.field private final phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

.field private final seed:I

.field private final userAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/identity/IdentityState;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/identity/IdentityState$Phase;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "aliasId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAttributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInstalledAtString"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    .line 29
    iput-object p4, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    .line 30
    iput-object p5, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    .line 31
    iput-object p6, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 27
    sget-object p2, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    invoke-virtual {p2}, Lcom/superwall/sdk/identity/IdentityLogic;->generateAlias()Ljava/lang/String;

    move-result-object p2

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 28
    sget-object p3, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    invoke-virtual {p3}, Lcom/superwall/sdk/identity/IdentityLogic;->generateSeed()I

    move-result p3

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 29
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 30
    new-instance p5, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    sget-object p8, Lcom/superwall/sdk/identity/IdentityState$Pending$Configuration;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Configuration;

    invoke-static {p8}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p8

    invoke-direct {p5, p8}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;-><init>(Ljava/util/Set;)V

    check-cast p5, Lcom/superwall/sdk/identity/IdentityState$Phase;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 31
    const-string p6, ""

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 25
    invoke-direct/range {p2 .. p8}, Lcom/superwall/sdk/identity/IdentityState;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/superwall/sdk/identity/IdentityState;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    return v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Lcom/superwall/sdk/identity/IdentityState$Phase;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/identity/IdentityState$Phase;",
            "Ljava/lang/String;",
            ")",
            "Lcom/superwall/sdk/identity/IdentityState;"
        }
    .end annotation

    const-string v0, "aliasId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAttributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInstalledAtString"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/identity/IdentityState;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/identity/IdentityState;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/identity/IdentityState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/identity/IdentityState;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    iget v3, p1, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    iget-object v3, p1, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    iget-object v3, p1, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAliasId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppInstalledAtString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppUserId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnrichedAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "appUserId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    const-string v1, "aliasId"

    iget-object v2, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getHasPendingIdentityResolution()Z
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/superwall/sdk/identity/IdentityState;->getPending()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 477
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 478
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/identity/IdentityState$Pending;

    .line 76
    instance-of v3, v1, Lcom/superwall/sdk/identity/IdentityState$Pending$Identification;

    if-nez v3, :cond_2

    .line 77
    instance-of v3, v1, Lcom/superwall/sdk/identity/IdentityState$Pending$Attributes;

    if-nez v3, :cond_2

    .line 78
    instance-of v3, v1, Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;

    if-nez v3, :cond_2

    .line 79
    instance-of v3, v1, Lcom/superwall/sdk/identity/IdentityState$Pending$Seed;

    if-nez v3, :cond_2

    .line 80
    instance-of v1, v1, Lcom/superwall/sdk/identity/IdentityState$Pending$Assignments;

    if-eqz v1, :cond_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public final getPending()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/identity/IdentityState$Pending;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    instance-of v1, v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;->getItems()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getPhase()Lcom/superwall/sdk/identity/IdentityState$Phase;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    return-object v0
.end method

.method public final getSeed()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    return v0
.end method

.method public final getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    invoke-virtual {v1}, Lcom/superwall/sdk/identity/IdentityState$Phase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isLoggedIn()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    instance-of v0, v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;

    return v0
.end method

.method public final resolve(Lcom/superwall/sdk/identity/IdentityState$Pending;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    instance-of v1, v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;->getItems()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 85
    :cond_1
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Phase$Ready;

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Phase;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/identity/IdentityState$Phase$Pending;-><init>(Ljava/util/Set;)V

    move-object p1, v0

    check-cast p1, Lcom/superwall/sdk/identity/IdentityState$Phase;

    :goto_1
    move-object v5, p1

    const/16 v7, 0x2f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/superwall/sdk/identity/IdentityState;->copy$default(Lcom/superwall/sdk/identity/IdentityState;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILjava/lang/Object;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    move-object v0, p0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState;->appUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/superwall/sdk/identity/IdentityState;->aliasId:Ljava/lang/String;

    iget v2, p0, Lcom/superwall/sdk/identity/IdentityState;->seed:I

    iget-object v3, p0, Lcom/superwall/sdk/identity/IdentityState;->userAttributes:Ljava/util/Map;

    iget-object v4, p0, Lcom/superwall/sdk/identity/IdentityState;->phase:Lcom/superwall/sdk/identity/IdentityState$Phase;

    iget-object v5, p0, Lcom/superwall/sdk/identity/IdentityState;->appInstalledAtString:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IdentityState(appUserId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", aliasId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appInstalledAtString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
