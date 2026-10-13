.class public final Lcom/superwall/sdk/debug/DebugManager;
.super Ljava/lang/Object;
.source "DebugManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/debug/DebugManager$Companion;,
        Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u001a\u0010\u0019\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0087@\u00a2\u0006\u0002\u0010\u001dJ\u001a\u0010\u001e\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0087@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u0012H\u0087@\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/DebugManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "factory",
        "Lcom/superwall/sdk/dependencies/ViewFactory;",
        "<init>",
        "(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/ViewFactory;)V",
        "value",
        "Lcom/superwall/sdk/debug/DebugView;",
        "view",
        "getView",
        "()Lcom/superwall/sdk/debug/DebugView;",
        "setView",
        "(Lcom/superwall/sdk/debug/DebugView;)V",
        "isDebuggerLaunched",
        "",
        "()Z",
        "setDebuggerLaunched",
        "(Z)V",
        "handle",
        "deepLinkUrl",
        "Landroid/net/Uri;",
        "launchDebugger",
        "",
        "paywallDatabaseId",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "presentDebugger",
        "closeDebugger",
        "animated",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "DeepLinkOutcome",
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
.field public static final Companion:Lcom/superwall/sdk/debug/DebugManager$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final factory:Lcom/superwall/sdk/dependencies/ViewFactory;

.field private isDebuggerLaunched:Z

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;

.field private view:Lcom/superwall/sdk/debug/DebugView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/debug/DebugManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/debug/DebugManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/debug/DebugManager;->Companion:Lcom/superwall/sdk/debug/DebugManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/ViewFactory;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugManager;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/superwall/sdk/debug/DebugManager;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 18
    iput-object p3, p0, Lcom/superwall/sdk/debug/DebugManager;->factory:Lcom/superwall/sdk/dependencies/ViewFactory;

    return-void
.end method

.method public static synthetic launchDebugger$default(Lcom/superwall/sdk/debug/DebugManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/debug/DebugManager;->launchDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic presentDebugger$default(Lcom/superwall/sdk/debug/DebugManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/debug/DebugManager;->presentDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final closeDebugger(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/superwall/sdk/debug/DebugView;->getEncapsulatingActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/superwall/sdk/debug/DebugManager;->isDebuggerLaunched:Z

    .line 110
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getView()Lcom/superwall/sdk/debug/DebugView;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    return-object v0
.end method

.method public final handle(Landroid/net/Uri;)Z
    .locals 8

    const-string v0, "deepLinkUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/superwall/sdk/debug/DebugManager;->Companion:Lcom/superwall/sdk/debug/DebugManager$Companion;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/debug/DebugManager$Companion;->outcomeForDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;

    .line 57
    iget-object v1, p0, Lcom/superwall/sdk/debug/DebugManager;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;->getDebugKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/superwall/sdk/storage/LocalStorage;->setDebugKey(Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;

    .line 59
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lcom/superwall/sdk/debug/DebugManager$handle$2$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lcom/superwall/sdk/debug/DebugManager$handle$2$1;-><init>(Lcom/superwall/sdk/debug/DebugManager;Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 62
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isDebuggerLaunched()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/superwall/sdk/debug/DebugManager;->isDebuggerLaunched:Z

    return v0
.end method

.method public final launchDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;

    iget v1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;-><init>(Lcom/superwall/sdk/debug/DebugManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/debug/DebugManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/debug/DebugManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/debug/DebugManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall;->isPaywallPresented()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 67
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    iput-object p0, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    invoke-static {p2, v0}, Lcom/superwall/sdk/paywall/presentation/PublicPresentationKt;->dismiss(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    goto :goto_6

    :cond_1
    move-object v2, p0

    .line 68
    :goto_1
    iput-object v3, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/superwall/sdk/debug/DebugManager;->launchDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_6

    .line 78
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 70
    :cond_3
    iget-object p2, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    if-nez p2, :cond_6

    .line 71
    iput-object p0, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x3

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_6

    :cond_4
    move-object v2, p0

    .line 72
    :goto_3
    iput-object v3, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/superwall/sdk/debug/DebugManager;->presentDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_6

    .line 78
    :cond_5
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 74
    :cond_6
    iput-object p0, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x5

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    invoke-virtual {p0, v2, v0}, Lcom/superwall/sdk/debug/DebugManager;->closeDebugger(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v2, p0

    .line 75
    :goto_5
    iput-object v3, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x6

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$launchDebugger$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/superwall/sdk/debug/DebugManager;->launchDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_6
    return-object v1

    .line 78
    :cond_8
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final presentDebugger(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;

    iget v1, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;-><init>(Lcom/superwall/sdk/debug/DebugManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/debug/DebugView;

    iget-object v0, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/debug/DebugManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iput-boolean v3, p0, Lcom/superwall/sdk/debug/DebugManager;->isDebuggerLaunched:Z

    .line 83
    iget-object p2, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    if-eqz p2, :cond_5

    .line 85
    invoke-virtual {p2}, Lcom/superwall/sdk/debug/DebugView;->isActive$superwall_release()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 87
    :cond_3
    invoke-virtual {p2, p1}, Lcom/superwall/sdk/debug/DebugView;->setPaywallDatabaseId$superwall_release(Ljava/lang/String;)V

    .line 88
    iput-object p0, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/debug/DebugManager$presentDebugger$1;->label:I

    invoke-virtual {p2, v0}, Lcom/superwall/sdk/debug/DebugView;->loadPreview(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object p1, p2

    .line 90
    :goto_1
    sget-object p2, Lcom/superwall/sdk/debug/DebugViewActivity;->Companion:Lcom/superwall/sdk/debug/DebugViewActivity$Companion;

    .line 91
    iget-object v0, v0, Lcom/superwall/sdk/debug/DebugManager;->context:Landroid/content/Context;

    .line 92
    check-cast p1, Landroid/view/View;

    .line 90
    invoke-virtual {p2, v0, p1}, Lcom/superwall/sdk/debug/DebugViewActivity$Companion;->startWithView(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_2

    .line 95
    :cond_5
    iget-object p2, p0, Lcom/superwall/sdk/debug/DebugManager;->factory:Lcom/superwall/sdk/dependencies/ViewFactory;

    invoke-interface {p2, p1}, Lcom/superwall/sdk/dependencies/ViewFactory;->makeDebugView(Ljava/lang/String;)Lcom/superwall/sdk/debug/DebugView;

    move-result-object p1

    .line 96
    sget-object p2, Lcom/superwall/sdk/debug/DebugViewActivity;->Companion:Lcom/superwall/sdk/debug/DebugViewActivity$Companion;

    .line 97
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugManager;->context:Landroid/content/Context;

    .line 98
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 96
    invoke-virtual {p2, v0, v1}, Lcom/superwall/sdk/debug/DebugViewActivity$Companion;->startWithView(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    .line 102
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setDebuggerLaunched(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/superwall/sdk/debug/DebugManager;->isDebuggerLaunched:Z

    return-void
.end method

.method public final setView(Lcom/superwall/sdk/debug/DebugView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugManager;->view:Lcom/superwall/sdk/debug/DebugView;

    return-void
.end method
