.class public final Lcom/superwall/sdk/debug/DebugViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DebugView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/debug/DebugViewActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u0007H\u0014J\u0008\u0010\r\u001a\u00020\u0007H\u0014J\u0008\u0010\u000e\u001a\u00020\u0007H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/DebugViewActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "contentView",
        "Landroid/view/View;",
        "setContentView",
        "",
        "view",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onStop",
        "onDestroy",
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
.field public static final Companion:Lcom/superwall/sdk/debug/DebugViewActivity$Companion;

.field private static final VIEW_KEY:Ljava/lang/String; = "debugViewKey"


# instance fields
.field private contentView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$9yHXTl7bYbx64WhdseV4hmZLJtQ(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/DebugViewActivity;->onCreate$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/debug/DebugViewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/debug/DebugViewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/debug/DebugViewActivity;->Companion:Lcom/superwall/sdk/debug/DebugViewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 917
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 981
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 949
    const-string v0, "#181A1E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 950
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 951
    sget-object v2, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v2, v0}, Landroidx/activity/SystemBarStyle$Companion;->dark(I)Landroidx/activity/SystemBarStyle;

    move-result-object v2

    .line 952
    sget-object v3, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v3, v0}, Landroidx/activity/SystemBarStyle$Companion;->dark(I)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    .line 950
    invoke-static {v1, v2, v0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    .line 955
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 956
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 958
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "debugViewKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugViewActivity;->finish()V

    return-void

    .line 964
    :cond_0
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v1

    .line 965
    invoke-virtual {v1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeViewStore()Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;

    move-result-object v1

    .line 966
    invoke-virtual {v1, v0}, Lcom/superwall/sdk/paywall/view/ViewStorageViewModel;->retrieveView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/debug/DebugViewActivity;

    .line 967
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugViewActivity;->finish()V

    return-void

    .line 971
    :cond_1
    instance-of v1, v0, Lcom/superwall/sdk/debug/AppCompatActivityEncapsulatable;

    if-eqz v1, :cond_2

    .line 972
    move-object v1, v0

    check-cast v1, Lcom/superwall/sdk/debug/AppCompatActivityEncapsulatable;

    move-object v2, p0

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {v1, v2}, Lcom/superwall/sdk/debug/AppCompatActivityEncapsulatable;->setEncapsulatingActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 975
    :cond_2
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/DebugViewActivity;->requestWindowFeature(I)Z

    .line 978
    new-instance p1, Lcom/superwall/sdk/debug/DebugViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/superwall/sdk/debug/DebugViewActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 985
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/debug/DebugViewActivity;->setContentView(Landroid/view/View;)V

    .line 986
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/DebugViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 9

    .line 1006
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1008
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugViewActivity;->contentView:Landroid/view/View;

    instance-of v1, v0, Lcom/superwall/sdk/debug/DebugView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/debug/DebugView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1010
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/superwall/sdk/debug/DebugViewActivity$onDestroy$1;

    invoke-direct {v1, v0, v2}, Lcom/superwall/sdk/debug/DebugViewActivity$onDestroy$1;-><init>(Lcom/superwall/sdk/debug/DebugView;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1015
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugViewActivity;->contentView:Landroid/view/View;

    instance-of v1, v0, Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/superwall/sdk/paywall/view/ActivityEncapsulatable;->setEncapsulatingActivity(Ljava/lang/ref/WeakReference;)V

    .line 1018
    :cond_3
    iput-object v2, p0, Lcom/superwall/sdk/debug/DebugViewActivity;->contentView:Landroid/view/View;

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 990
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 992
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugViewActivity;->contentView:Landroid/view/View;

    instance-of v1, v0, Lcom/superwall/sdk/debug/DebugView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/debug/DebugView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 994
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/debug/DebugView;->setActive$superwall_release(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 998
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 1000
    iget-object v0, p0, Lcom/superwall/sdk/debug/DebugViewActivity;->contentView:Landroid/view/View;

    instance-of v1, v0, Lcom/superwall/sdk/debug/DebugView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/superwall/sdk/debug/DebugView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1002
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/debug/DebugView;->setActive$superwall_release(Z)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 943
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 944
    iput-object p1, p0, Lcom/superwall/sdk/debug/DebugViewActivity;->contentView:Landroid/view/View;

    return-void
.end method
