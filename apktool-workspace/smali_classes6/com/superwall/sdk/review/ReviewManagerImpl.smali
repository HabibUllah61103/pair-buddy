.class public final Lcom/superwall/sdk/review/ReviewManagerImpl;
.super Ljava/lang/Object;
.source "ReviewManagerImpl.kt"

# interfaces
.implements Lcom/superwall/sdk/review/ReviewManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReviewManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReviewManagerImpl.kt\ncom/superwall/sdk/review/ReviewManagerImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,73:1\n351#2,11:74\n351#2,11:85\n*S KotlinDebug\n*F\n+ 1 ReviewManagerImpl.kt\ncom/superwall/sdk/review/ReviewManagerImpl\n*L\n28#1:74,11\n57#1:85,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012J\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/review/ReviewManagerImpl;",
        "Lcom/superwall/sdk/review/ReviewManager;",
        "context",
        "Landroid/content/Context;",
        "isDebug",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
        "()Lkotlin/jvm/functions/Function0;",
        "playReviewManager",
        "Lcom/google/android/play/core/review/ReviewManager;",
        "getPlayReviewManager",
        "()Lcom/google/android/play/core/review/ReviewManager;",
        "playReviewManager$delegate",
        "Lkotlin/Lazy;",
        "requestReviewFlow",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "launchReviewFlow",
        "",
        "activity",
        "Landroid/app/Activity;",
        "reviewInfo",
        "(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final context:Landroid/content/Context;

.field private final isDebug:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final playReviewManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$eXmfywndY9fCR6xjFQs5v4V6kYY(Lcom/superwall/sdk/review/ReviewManagerImpl;)Lcom/google/android/play/core/review/ReviewManager;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/review/ReviewManagerImpl;->playReviewManager_delegate$lambda$0(Lcom/superwall/sdk/review/ReviewManagerImpl;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isDebug"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->isDebug:Lkotlin/jvm/functions/Function0;

    .line 19
    new-instance p1, Lcom/superwall/sdk/review/ReviewManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/review/ReviewManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/review/ReviewManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->playReviewManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPlayReviewManager(Lcom/superwall/sdk/review/ReviewManagerImpl;)Lcom/google/android/play/core/review/ReviewManager;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/superwall/sdk/review/ReviewManagerImpl;->getPlayReviewManager()Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p0

    return-object p0
.end method

.method private final getPlayReviewManager()Lcom/google/android/play/core/review/ReviewManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->playReviewManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/review/ReviewManager;

    return-object v0
.end method

.method private static final playReviewManager_delegate$lambda$0(Lcom/superwall/sdk/review/ReviewManagerImpl;)Lcom/google/android/play/core/review/ReviewManager;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->isDebug:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/android/play/core/review/testing/FakeReviewManager;

    iget-object p0, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/review/testing/FakeReviewManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/google/android/play/core/review/ReviewManager;

    return-object v0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isDebug()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/review/ReviewManagerImpl;->isDebug:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 92
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 93
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 58
    invoke-static {p0}, Lcom/superwall/sdk/review/ReviewManagerImpl;->access$getPlayReviewManager(Lcom/superwall/sdk/review/ReviewManagerImpl;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string p2, "launchReviewFlow(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p2, Lcom/superwall/sdk/review/ReviewManagerImpl$launchReviewFlow$2$1;

    invoke-direct {p2, v1}, Lcom/superwall/sdk/review/ReviewManagerImpl$launchReviewFlow$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast p2, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 94
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 85
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    .line 95
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public requestReviewFlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 81
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 82
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 29
    invoke-static {p0}, Lcom/superwall/sdk/review/ReviewManagerImpl;->access$getPlayReviewManager(Lcom/superwall/sdk/review/ReviewManagerImpl;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    const-string v3, "requestReviewFlow(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v3, Lcom/superwall/sdk/review/ReviewManagerImpl$requestReviewFlow$2$1;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/review/ReviewManagerImpl$requestReviewFlow$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 83
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 74
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method
