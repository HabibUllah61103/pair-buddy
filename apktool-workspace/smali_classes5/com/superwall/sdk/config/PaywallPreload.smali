.class public final Lcom/superwall/sdk/config/PaywallPreload;
.super Ljava/lang/Object;
.source "PaywallPreload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/PaywallPreload$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallPreload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallPreload.kt\ncom/superwall/sdk/config/PaywallPreload\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n774#2:243\n865#2,2:244\n1557#2:246\n1628#2,3:247\n1557#2:250\n1628#2,3:251\n774#2:254\n865#2,2:255\n1557#2:257\n1628#2,3:258\n1863#2,2:261\n*S KotlinDebug\n*F\n+ 1 PaywallPreload.kt\ncom/superwall/sdk/config/PaywallPreload\n*L\n122#1:243\n122#1:244,2\n216#1:246\n216#1:247,3\n219#1:250\n219#1:251,3\n227#1:254\n227#1:255,2\n231#1:257\n231#1:258,3\n234#1:261,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001;BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\"\u0010\u000c\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J*\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\"H\u0086@\u00a2\u0006\u0002\u0010+J$\u0010,\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\'2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\"0.H\u0086@\u00a2\u0006\u0002\u0010/J\u001c\u00100\u001a\u00020\u00102\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\"0.H\u0082@\u00a2\u0006\u0002\u00102J$\u00103\u001a\u0008\u0012\u0004\u0012\u00020\"0.2\u0006\u0010&\u001a\u00020\'2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002050.H\u0002J \u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\'2\u0006\u00108\u001a\u00020\'H\u0080@\u00a2\u0006\u0004\u00089\u0010:R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR,\u0010\u000c\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0!X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006<"
    }
    d2 = {
        "Lcom/superwall/sdk/config/PaywallPreload;",
        "",
        "factory",
        "Lcom/superwall/sdk/config/PaywallPreload$Factory;",
        "scope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "assignments",
        "Lcom/superwall/sdk/config/Assignments;",
        "paywallManager",
        "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "<init>",
        "(Lcom/superwall/sdk/config/PaywallPreload$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function2;)V",
        "getFactory",
        "()Lcom/superwall/sdk/config/PaywallPreload$Factory;",
        "getScope",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "getStorage",
        "()Lcom/superwall/sdk/storage/LocalStorage;",
        "getAssignments",
        "()Lcom/superwall/sdk/config/Assignments;",
        "getPaywallManager",
        "()Lcom/superwall/sdk/paywall/manager/PaywallManager;",
        "Lkotlin/jvm/functions/Function2;",
        "currentPreloadingTask",
        "Lkotlinx/coroutines/Job;",
        "lastFingerprint",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "",
        "getLastFingerprint$superwall_release",
        "()Ljava/util/concurrent/atomic/AtomicReference;",
        "preloadAllPaywalls",
        "config",
        "Lcom/superwall/sdk/models/config/Config;",
        "context",
        "Landroid/content/Context;",
        "fingerprint",
        "(Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "preloadPaywallsByNames",
        "eventNames",
        "",
        "(Lcom/superwall/sdk/models/config/Config;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "preloadPaywalls",
        "paywallIdentifiers",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTreatmentPaywallIds",
        "triggers",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "removeUnusedPaywallVCsFromCache",
        "oldConfig",
        "newConfig",
        "removeUnusedPaywallVCsFromCache$superwall_release",
        "(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Factory",
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
.field private final assignments:Lcom/superwall/sdk/config/Assignments;

.field private currentPreloadingTask:Lkotlinx/coroutines/Job;

.field private final factory:Lcom/superwall/sdk/config/PaywallPreload$Factory;

.field private final lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

.field private final scope:Lcom/superwall/sdk/misc/IOScope;

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;

.field private final track:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
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
.method public constructor <init>(Lcom/superwall/sdk/config/PaywallPreload$Factory;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/config/PaywallPreload$Factory;",
            "Lcom/superwall/sdk/misc/IOScope;",
            "Lcom/superwall/sdk/storage/LocalStorage;",
            "Lcom/superwall/sdk/config/Assignments;",
            "Lcom/superwall/sdk/paywall/manager/PaywallManager;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assignments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload;->factory:Lcom/superwall/sdk/config/PaywallPreload$Factory;

    .line 27
    iput-object p2, p0, Lcom/superwall/sdk/config/PaywallPreload;->scope:Lcom/superwall/sdk/misc/IOScope;

    .line 28
    iput-object p3, p0, Lcom/superwall/sdk/config/PaywallPreload;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 29
    iput-object p4, p0, Lcom/superwall/sdk/config/PaywallPreload;->assignments:Lcom/superwall/sdk/config/Assignments;

    .line 30
    iput-object p5, p0, Lcom/superwall/sdk/config/PaywallPreload;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    .line 31
    iput-object p6, p0, Lcom/superwall/sdk/config/PaywallPreload;->track:Lkotlin/jvm/functions/Function2;

    .line 47
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload;->lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic access$getTrack$p(Lcom/superwall/sdk/config/PaywallPreload;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/superwall/sdk/config/PaywallPreload;->track:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$preloadPaywalls(Lcom/superwall/sdk/config/PaywallPreload;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload;->preloadPaywalls(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentPreloadingTask$p(Lcom/superwall/sdk/config/PaywallPreload;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload;->currentPreloadingTask:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getTreatmentPaywallIds(Lcom/superwall/sdk/models/config/Config;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getPreloadingDisabled()Lcom/superwall/sdk/models/config/PreloadingDisabled;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/superwall/sdk/config/ConfigLogic;->filterTriggers(Ljava/util/Set;Lcom/superwall/sdk/models/config/PreloadingDisabled;)Ljava/util/Set;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    iget-object p2, p0, Lcom/superwall/sdk/config/PaywallPreload;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {p2}, Lcom/superwall/sdk/storage/LocalStorage;->getConfirmedAssignments()Ljava/util/Map;

    move-result-object p2

    .line 195
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    .line 198
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload;->assignments:Lcom/superwall/sdk/config/Assignments;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/Assignments;->getUnconfirmedAssignments()Ljava/util/Map;

    move-result-object v1

    .line 195
    invoke-virtual {v0, p1, p2, v1}, Lcom/superwall/sdk/config/ConfigLogic;->getActiveTreatmentPaywallIds(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic preloadAllPaywalls$default(Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/config/PaywallPreload;->preloadAllPaywalls(Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final preloadPaywalls(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;

    iget v1, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;-><init>(Lcom/superwall/sdk/config/PaywallPreload;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 132
    iget v2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->I$0:I

    iget-object v1, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v0, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/config/PaywallPreload;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p2, p1

    move-object p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    .line 134
    iget-object v2, p0, Lcom/superwall/sdk/config/PaywallPreload;->track:Lkotlin/jvm/functions/Function2;

    .line 135
    new-instance v4, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload;

    .line 136
    sget-object v5, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;->Start:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;

    .line 135
    invoke-direct {v4, v5, p2}, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload;-><init>(Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$PaywallPreload$State;I)V

    .line 134
    iput-object p0, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->I$0:I

    iput v3, v0, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 141
    :goto_1
    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/view/webview/WebviewChecker;->getWebviewExists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, v0, Lcom/superwall/sdk/config/PaywallPreload;->scope:Lcom/superwall/sdk/misc/IOScope;

    check-cast v1, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v2, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, p2, v3}, Lcom/superwall/sdk/config/PaywallPreload$preloadPaywalls$2;-><init>(Ljava/util/Set;Lcom/superwall/sdk/config/PaywallPreload;ILkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 186
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final getAssignments()Lcom/superwall/sdk/config/Assignments;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->assignments:Lcom/superwall/sdk/config/Assignments;

    return-object v0
.end method

.method public final getFactory()Lcom/superwall/sdk/config/PaywallPreload$Factory;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->factory:Lcom/superwall/sdk/config/PaywallPreload$Factory;

    return-object v0
.end method

.method public final getLastFingerprint$superwall_release()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public final getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    return-object v0
.end method

.method public final getScope()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->scope:Lcom/superwall/sdk/misc/IOScope;

    return-object v0
.end method

.method public final getStorage()Lcom/superwall/sdk/storage/LocalStorage;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    return-object v0
.end method

.method public final preloadAllPaywalls(Lcom/superwall/sdk/models/config/Config;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 55
    iget-object p4, p0, Lcom/superwall/sdk/config/PaywallPreload;->lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 57
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p4, p3}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/config/PaywallPreload;->currentPreloadingTask:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    .line 62
    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload;->lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, p3, p4}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 65
    :cond_2
    iget-object p3, p0, Lcom/superwall/sdk/config/PaywallPreload;->currentPreloadingTask:Lkotlinx/coroutines/Job;

    if-eqz p3, :cond_3

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 70
    :cond_3
    iget-object p3, p0, Lcom/superwall/sdk/config/PaywallPreload;->scope:Lcom/superwall/sdk/misc/IOScope;

    check-cast p3, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance p4, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p2, p1, v0}, Lcom/superwall/sdk/config/PaywallPreload$preloadAllPaywalls$2;-><init>(Lcom/superwall/sdk/config/PaywallPreload;Landroid/content/Context;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {p3, p4}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload;->currentPreloadingTask:Lkotlinx/coroutines/Job;

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final preloadPaywallsByNames(Lcom/superwall/sdk/models/config/Config;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 244
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 122
    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/Trigger;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 126
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/config/PaywallPreload;->getTreatmentPaywallIds(Lcom/superwall/sdk/models/config/Config;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 128
    invoke-direct {p0, p1, p3}, Lcom/superwall/sdk/config/PaywallPreload;->preloadPaywalls(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final removeUnusedPaywallVCsFromCache$superwall_release(Lcom/superwall/sdk/models/config/Config;Lcom/superwall/sdk/models/config/Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lcom/superwall/sdk/models/config/Config;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/superwall/sdk/models/config/Config;->getPaywalls()Ljava/util/List;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/Config;->getPaywalls()Ljava/util/List;

    move-result-object p2

    .line 210
    iget-object p3, p0, Lcom/superwall/sdk/config/PaywallPreload;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCurrentView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 211
    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 212
    invoke-virtual {p3}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPaywall()Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 213
    invoke-virtual {p3}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 215
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 247
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 248
    check-cast v3, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 216
    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/superwall/sdk/models/paywall/Paywall;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 248
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 246
    check-cast v1, Ljava/lang/Iterable;

    .line 217
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 219
    check-cast p2, Ljava/lang/Iterable;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 251
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 252
    check-cast v4, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 219
    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/superwall/sdk/models/paywall/Paywall;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 252
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 253
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 250
    check-cast v1, Ljava/lang/Iterable;

    .line 219
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 222
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 255
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 228
    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 229
    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    .line 255
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 256
    :cond_4
    check-cast v4, Ljava/util/List;

    .line 254
    check-cast v4, Ljava/lang/Iterable;

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 258
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 259
    check-cast v1, Lcom/superwall/sdk/models/paywall/Paywall;

    .line 231
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 260
    :cond_5
    check-cast p1, Ljava/util/List;

    .line 257
    check-cast p1, Ljava/lang/Iterable;

    .line 225
    invoke-static {v3, p1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 233
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 234
    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    .line 261
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/superwall/sdk/config/PaywallPreload;->paywallManager:Lcom/superwall/sdk/paywall/manager/PaywallManager;

    invoke-virtual {v1, p3}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->removePaywallView(Ljava/lang/String;)V

    goto :goto_5

    .line 237
    :cond_6
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 238
    iget-object p1, p0, Lcom/superwall/sdk/config/PaywallPreload;->lastFingerprint:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 240
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
