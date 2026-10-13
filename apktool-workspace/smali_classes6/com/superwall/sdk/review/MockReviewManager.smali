.class public final Lcom/superwall/sdk/review/MockReviewManager;
.super Ljava/lang/Object;
.source "MockReviewManager.kt"

# interfaces
.implements Lcom/superwall/sdk/review/ReviewManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMockReviewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MockReviewManager.kt\ncom/superwall/sdk/review/MockReviewManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,138:1\n351#2,11:139\n351#2,11:150\n*S KotlinDebug\n*F\n+ 1 MockReviewManager.kt\ncom/superwall/sdk/review/MockReviewManager\n*L\n37#1:139,11\n52#1:150,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\u0010J$\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000c0\u0013H\u0002J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000c0\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/superwall/sdk/review/MockReviewManager;",
        "Lcom/superwall/sdk/review/ReviewManager;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "fakeReviewManager",
        "Lcom/google/android/play/core/review/testing/FakeReviewManager;",
        "requestReviewFlow",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "launchReviewFlow",
        "",
        "activity",
        "Landroid/app/Activity;",
        "reviewInfo",
        "(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showMockReviewBottomSheet",
        "onComplete",
        "Lkotlin/Function1;",
        "",
        "createMockReviewView",
        "Landroid/view/View;",
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

.field private final fakeReviewManager:Lcom/google/android/play/core/review/testing/FakeReviewManager;


# direct methods
.method public static synthetic $r8$lambda$rFVbkKBf3MV5ZGz0_SCOHESU0CY(Landroid/widget/RatingBar;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager;->createMockReviewView$lambda$5(Landroid/widget/RatingBar;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhIo0oVvxqP_G9ifWu8bl6zgeR4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/review/MockReviewManager;->createMockReviewView$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/superwall/sdk/review/MockReviewManager;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/google/android/play/core/review/testing/FakeReviewManager;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/review/testing/FakeReviewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superwall/sdk/review/MockReviewManager;->fakeReviewManager:Lcom/google/android/play/core/review/testing/FakeReviewManager;

    return-void
.end method

.method public static final synthetic access$createMockReviewView(Lcom/superwall/sdk/review/MockReviewManager;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager;->createMockReviewView(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFakeReviewManager$p(Lcom/superwall/sdk/review/MockReviewManager;)Lcom/google/android/play/core/review/testing/FakeReviewManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/superwall/sdk/review/MockReviewManager;->fakeReviewManager:Lcom/google/android/play/core/review/testing/FakeReviewManager;

    return-object p0
.end method

.method public static final synthetic access$showMockReviewBottomSheet(Lcom/superwall/sdk/review/MockReviewManager;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager;->showMockReviewBottomSheet(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final createMockReviewView(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 94
    sget v2, Lcom/superwall/sdk/R$layout;->mock_review_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    sget v2, Lcom/superwall/sdk/R$id;->app_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const p1, 0x1080093

    .line 109
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 111
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    sget p1, Lcom/superwall/sdk/R$id;->app_name:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "App Name"

    check-cast v0, Ljava/lang/CharSequence;

    .line 115
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget p1, Lcom/superwall/sdk/R$id;->rating_bar:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 123
    sget v0, Lcom/superwall/sdk/R$id;->not_now_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    sget v2, Lcom/superwall/sdk/R$id;->submit_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    new-instance v3, Lcom/superwall/sdk/review/MockReviewManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/superwall/sdk/review/MockReviewManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Lcom/superwall/sdk/review/MockReviewManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RatingBar;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method private static final createMockReviewView$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final createMockReviewView$lambda$5(Landroid/widget/RatingBar;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result p0

    float-to-int p0, p0

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showMockReviewBottomSheet(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;-><init>(Landroid/app/Activity;Lcom/superwall/sdk/review/MockReviewManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 151
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 157
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 158
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 53
    new-instance v1, Lcom/superwall/sdk/review/MockReviewManager$launchReviewFlow$2$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/review/MockReviewManager$launchReviewFlow$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v1}, Lcom/superwall/sdk/review/MockReviewManager;->access$showMockReviewBottomSheet(Lcom/superwall/sdk/review/MockReviewManager;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 159
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 150
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    .line 160
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

    .line 140
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 146
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 147
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 38
    invoke-static {p0}, Lcom/superwall/sdk/review/MockReviewManager;->access$getFakeReviewManager$p(Lcom/superwall/sdk/review/MockReviewManager;)Lcom/google/android/play/core/review/testing/FakeReviewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/review/testing/FakeReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    const-string v3, "requestReviewFlow(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v3, Lcom/superwall/sdk/review/MockReviewManager$requestReviewFlow$2$1;

    invoke-direct {v3, v1}, Lcom/superwall/sdk/review/MockReviewManager$requestReviewFlow$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 148
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method
