.class public final Lcom/superwall/sdk/network/EnrichmentService;
.super Lcom/superwall/sdk/network/NetworkService;
.source "EnrichmentService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ*\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0096@\u00a2\u0006\u0002\u0010\u0017J8\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0004\u0008\"\u0010#R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Lcom/superwall/sdk/network/EnrichmentService;",
        "Lcom/superwall/sdk/network/NetworkService;",
        "host",
        "",
        "version",
        "factory",
        "Lcom/superwall/sdk/dependencies/ApiFactory;",
        "customHttpUrlConnection",
        "Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V",
        "getHost",
        "()Ljava/lang/String;",
        "getVersion",
        "getFactory",
        "()Lcom/superwall/sdk/dependencies/ApiFactory;",
        "getCustomHttpUrlConnection",
        "()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;",
        "makeHeaders",
        "",
        "isForDebugging",
        "",
        "requestId",
        "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "enrichment",
        "Lcom/superwall/sdk/misc/Either;",
        "Lcom/superwall/sdk/models/enrichment/Enrichment;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "enrichmentRequest",
        "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
        "maxRetry",
        "",
        "timeout",
        "Lkotlin/time/Duration;",
        "enrichment-exY8QGI",
        "(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

.field private final factory:Lcom/superwall/sdk/dependencies/ApiFactory;

.field private final host:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$FkFfTZGgPSoEc3I7ThJ4QklJ38c()Lcom/superwall/sdk/network/NetworkError;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/network/EnrichmentService;->enrichment_exY8QGI$lambda$0()Lcom/superwall/sdk/network/NetworkError;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/dependencies/ApiFactory;Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customHttpUrlConnection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/superwall/sdk/network/NetworkService;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/superwall/sdk/network/EnrichmentService;->host:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/superwall/sdk/network/EnrichmentService;->version:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/superwall/sdk/network/EnrichmentService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    .line 16
    iput-object p4, p0, Lcom/superwall/sdk/network/EnrichmentService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-void
.end method

.method public static synthetic enrichment-exY8QGI$default(Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 26
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 p2, 0x1

    sget-object p3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p2, p3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p3

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/network/EnrichmentService;->enrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final enrichment_exY8QGI$lambda$0()Lcom/superwall/sdk/network/NetworkError;
    .locals 1

    .line 27
    sget-object v0, Lcom/superwall/sdk/network/NetworkError$Timeout;->INSTANCE:Lcom/superwall/sdk/network/NetworkError$Timeout;

    check-cast v0, Lcom/superwall/sdk/network/NetworkError;

    return-object v0
.end method


# virtual methods
.method public final enrichment-exY8QGI(Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "Lcom/superwall/sdk/models/enrichment/Enrichment;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/superwall/sdk/network/EnrichmentService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/network/EnrichmentService$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/network/EnrichmentService$enrichment$3;-><init>(Lcom/superwall/sdk/network/EnrichmentService;Lcom/superwall/sdk/models/enrichment/EnrichmentRequest;IJLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6, v0, v1, p5}, Lcom/superwall/sdk/misc/EitherKt;->eitherWithTimeout-rnQQ1Ag(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCustomHttpUrlConnection()Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/network/EnrichmentService;->customHttpUrlConnection:Lcom/superwall/sdk/network/session/CustomHttpUrlConnection;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/dependencies/ApiFactory;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/network/EnrichmentService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/network/EnrichmentService;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/network/EnrichmentService;->version:Ljava/lang/String;

    return-object v0
.end method

.method public makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/network/EnrichmentService;->factory:Lcom/superwall/sdk/dependencies/ApiFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/superwall/sdk/dependencies/ApiFactory;->makeHeaders(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
