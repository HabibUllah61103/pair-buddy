.class public final Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SWLocalizationViewController.kt"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002J\u0008\u0010\u001b\u001a\u00020\u0016H\u0002J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\"\u001a\u00020 2\u0008\u0010#\u001a\u0004\u0018\u00010\u001eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "<init>",
        "()V",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "adapter",
        "Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;",
        "localizationManager",
        "Lcom/superwall/sdk/debug/localizations/LocalizationManager;",
        "allRowModels",
        "",
        "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
        "getAllRowModels",
        "()Ljava/util/List;",
        "allRowModels$delegate",
        "Lkotlin/Lazy;",
        "rowModels",
        "searchView",
        "Landroid/widget/SearchView;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setupRecyclerView",
        "setupSearchView",
        "setupActionBar",
        "completion",
        "locale",
        "",
        "onQueryTextSubmit",
        "",
        "query",
        "onQueryTextChange",
        "newText",
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
.field public static final Companion:Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;

.field private static completion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;

.field private final allRowModels$delegate:Lkotlin/Lazy;

.field private localizationManager:Lcom/superwall/sdk/debug/localizations/LocalizationManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private rowModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public static synthetic $r8$lambda$JBDXVlormSvWDU9JPHZ1uDuTNBc(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->setupRecyclerView$lambda$1(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lxPBlTArALZLX3EjiAR2Ktr4nPQ(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->allRowModels_delegate$lambda$0(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->Companion:Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->allRowModels$delegate:Lkotlin/Lazy;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCompletion$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 12
    sget-object v0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->completion:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$setCompletion$cp(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 12
    sput-object p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->completion:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final allRowModels_delegate$lambda$0(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->localizationManager:Lcom/superwall/sdk/debug/localizations/LocalizationManager;

    if-nez p0, :cond_0

    const-string p0, "localizationManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->getLocalizationGroupings()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final completion(Ljava/lang/String;)V
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->finish()V

    return-void
.end method

.method private final getAllRowModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->allRowModels$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Localization"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final setupRecyclerView()V
    .locals 5

    .line 43
    new-instance v0, Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;

    iget-object v1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    .line 42
    new-instance v2, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;)V

    .line 43
    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 42
    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->adapter:Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->adapter:Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;

    if-nez v1, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final setupRecyclerView$lambda$1(Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->finish()V

    .line 45
    sget-object p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->completion:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setupSearchView()V
    .locals 2

    .line 53
    sget v0, Lcom/superwall/sdk/R$id;->search_view:I

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->searchView:Landroid/widget/SearchView;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "searchView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/superwall/sdk/R$layout;->activity_localization:I

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->setContentView(I)V

    .line 31
    new-instance p1, Lcom/superwall/sdk/debug/localizations/LocalizationManager;

    invoke-direct {p1}, Lcom/superwall/sdk/debug/localizations/LocalizationManager;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->localizationManager:Lcom/superwall/sdk/debug/localizations/LocalizationManager;

    .line 32
    invoke-direct {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->getAllRowModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    .line 34
    sget p1, Lcom/superwall/sdk/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    invoke-direct {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->setupRecyclerView()V

    .line 37
    invoke-direct {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->setupSearchView()V

    .line 38
    invoke-direct {p0}, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->setupActionBar()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->localizationManager:Lcom/superwall/sdk/debug/localizations/LocalizationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "localizationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->localizationGroupings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->adapter:Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;

    if-nez p1, :cond_1

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;->updateData(Ljava/util/List;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->localizationManager:Lcom/superwall/sdk/debug/localizations/LocalizationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "localizationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/superwall/sdk/debug/localizations/LocalizationManager;->localizationGroupings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    .line 75
    iget-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->adapter:Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;

    if-nez p1, :cond_1

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;->rowModels:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;->updateData(Ljava/util/List;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
