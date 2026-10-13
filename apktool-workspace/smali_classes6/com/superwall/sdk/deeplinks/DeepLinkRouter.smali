.class public final Lcom/superwall/sdk/deeplinks/DeepLinkRouter;
.super Ljava/lang/Object;
.source "DeepLinkRouter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeepLinkRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeepLinkRouter.kt\ncom/superwall/sdk/deeplinks/DeepLinkRouter\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 Either.kt\ncom/superwall/sdk/misc/EitherKt\n*L\n1#1,107:1\n135#2,10:108\n143#3,4:118\n*S KotlinDebug\n*F\n+ 1 DeepLinkRouter.kt\ncom/superwall/sdk/deeplinks/DeepLinkRouter\n*L\n72#1:108,10\n92#1:118,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\"\u0010\u0008\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R/\u0010\u0008\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lcom/superwall/sdk/deeplinks/DeepLinkRouter;",
        "",
        "redeemer",
        "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "debugManager",
        "Lcom/superwall/sdk/debug/DebugManager;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "<init>",
        "(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/debug/DebugManager;Lkotlin/jvm/functions/Function2;)V",
        "getRedeemer",
        "()Lcom/superwall/sdk/web/WebPaywallRedeemer;",
        "getIoScope",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "getDebugManager",
        "()Lcom/superwall/sdk/debug/DebugManager;",
        "getTrack",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "handleDeepLink",
        "Lkotlin/Result;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "handleDeepLink-IoAF18A",
        "(Landroid/net/Uri;)Ljava/lang/Object;",
        "Companion",
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
.field public static final Companion:Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;

.field private static unhandledDeepLinks:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final debugManager:Lcom/superwall/sdk/debug/DebugManager;

.field private final ioScope:Lcom/superwall/sdk/misc/IOScope;

.field private final redeemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

.field private final track:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->Companion:Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->unhandledDeepLinks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-void
.end method

.method public constructor <init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/debug/DebugManager;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/web/WebPaywallRedeemer;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lcom/superwall/sdk/debug/DebugManager;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "redeemer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->redeemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    .line 23
    iput-object p2, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    .line 24
    iput-object p3, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    .line 25
    iput-object p4, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->track:Lkotlin/jvm/functions/Function2;

    .line 60
    move-object v1, p2

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$1;-><init>(Lcom/superwall/sdk/deeplinks/DeepLinkRouter;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/debug/DebugManager;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 23
    new-instance p2, Lcom/superwall/sdk/misc/IOScope;

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-direct {p2, p6, p5, p6}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;-><init>(Lcom/superwall/sdk/web/WebPaywallRedeemer;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/debug/DebugManager;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getUnhandledDeepLinks$cp()Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1

    .line 21
    sget-object v0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->unhandledDeepLinks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method


# virtual methods
.method public final getDebugManager()Lcom/superwall/sdk/debug/DebugManager;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    return-object v0
.end method

.method public final getIoScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    return-object v0
.end method

.method public final getRedeemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->redeemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    return-object v0
.end method

.method public final getTrack()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->track:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final handleDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 14

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$handleDeepLink$1$1;

    const/4 v7, 0x0

    invoke-direct {v0, p0, p1, v7}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$handleDeepLink$1$1;-><init>(Lcom/superwall/sdk/deeplinks/DeepLinkRouter;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 77
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->redeemer:Lcom/superwall/sdk/web/WebPaywallRedeemer;

    invoke-virtual {v0}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->getDeepLinkReferrer$superwall_release()Lcom/superwall/sdk/web/CheckForReferral;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Lcom/superwall/sdk/web/CheckForReferral;->handleDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->ioScope:Lcom/superwall/sdk/misc/IOScope;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$handleDeepLink$1$handledAsRedemption$1$1;

    invoke-direct {v2, p0, v1, v7}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$handleDeepLink$1$handledAsRedemption$1$1;-><init>(Lcom/superwall/sdk/deeplinks/DeepLinkRouter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 83
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->debugManager:Lcom/superwall/sdk/debug/DebugManager;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/debug/DebugManager;->handle(Landroid/net/Uri;)Z

    move-result p1

    .line 91
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 111
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 116
    :cond_2
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 119
    :goto_1
    instance-of p1, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p1, :cond_3

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 120
    :cond_3
    instance-of p1, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    .line 118
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
