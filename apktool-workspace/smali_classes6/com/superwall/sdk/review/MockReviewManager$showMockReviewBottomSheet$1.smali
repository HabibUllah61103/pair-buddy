.class final Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MockReviewManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/review/MockReviewManager;->showMockReviewBottomSheet(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.review.MockReviewManager$showMockReviewBottomSheet$1"
    f = "MockReviewManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $onComplete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/review/MockReviewManager;


# direct methods
.method public static synthetic $r8$lambda$TKaU-aEXMU8DpCj_7SfW2x_X6To(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->invokeSuspend$lambda$0(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/superwall/sdk/review/MockReviewManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/review/MockReviewManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->this$0:Lcom/superwall/sdk/review/MockReviewManager;

    iput-object p3, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;

    iget-object v0, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->this$0:Lcom/superwall/sdk/review/MockReviewManager;

    iget-object v2, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;-><init>(Landroid/app/Activity;Lcom/superwall/sdk/review/MockReviewManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 63
    iget v0, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x1030132

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->this$0:Lcom/superwall/sdk/review/MockReviewManager;

    iget-object v1, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v2}, Lcom/superwall/sdk/review/MockReviewManager$showMockReviewBottomSheet$1$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, v3}, Lcom/superwall/sdk/review/MockReviewManager;->access$createMockReviewView(Lcom/superwall/sdk/review/MockReviewManager;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x50

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 81
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x10

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 86
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
