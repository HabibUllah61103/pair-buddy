.class public final Lcom/superwall/sdk/debug/SWConsoleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SWConsoleViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSWConsoleViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SWConsoleViewController.kt\ncom/superwall/sdk/debug/SWConsoleActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1557#2:88\n1628#2,3:89\n*S KotlinDebug\n*F\n+ 1 SWConsoleViewController.kt\ncom/superwall/sdk/debug/SWConsoleActivity\n*L\n42#1:88\n42#1:89,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/SWConsoleActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "productPicker",
        "Landroid/widget/Spinner;",
        "tableView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "productAdapter",
        "Landroid/widget/ArrayAdapter;",
        "",
        "tableViewAdapter",
        "Lcom/superwall/sdk/debug/TableViewAdapter;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "setupTableView",
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
.field public static final Companion:Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;

.field private static products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private productAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productPicker:Landroid/widget/Spinner;

.field private tableView:Landroidx/recyclerview/widget/RecyclerView;

.field private tableViewAdapter:Lcom/superwall/sdk/debug/TableViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/debug/SWConsoleActivity;->Companion:Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/debug/SWConsoleActivity;->products:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProducts$cp()Ljava/util/List;
    .locals 1

    .line 18
    sget-object v0, Lcom/superwall/sdk/debug/SWConsoleActivity;->products:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getTableViewAdapter$p(Lcom/superwall/sdk/debug/SWConsoleActivity;)Lcom/superwall/sdk/debug/TableViewAdapter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->tableViewAdapter:Lcom/superwall/sdk/debug/TableViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$setProducts$cp(Ljava/util/List;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->products:Ljava/util/List;

    return-void
.end method

.method private final setupTableView()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->tableView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "tableView"

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

    .line 83
    new-instance v0, Lcom/superwall/sdk/debug/TableViewAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/superwall/sdk/debug/TableViewAdapter;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->tableViewAdapter:Lcom/superwall/sdk/debug/TableViewAdapter;

    .line 84
    iget-object v0, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->tableView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->tableViewAdapter:Lcom/superwall/sdk/debug/TableViewAdapter;

    if-nez v1, :cond_2

    const-string v1, "tableViewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcom/superwall/sdk/R$layout;->activity_console:I

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/SWConsoleActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/SWConsoleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Template Variables"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/SWConsoleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_1
    sget p1, Lcom/superwall/sdk/R$id;->productPicker:I

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/SWConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->productPicker:Landroid/widget/Spinner;

    .line 35
    sget p1, Lcom/superwall/sdk/R$id;->console_recycler_view:I

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/debug/SWConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->tableView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    .line 41
    sget v0, Lcom/superwall/sdk/R$layout;->spinner_item:I

    .line 42
    sget-object v1, Lcom/superwall/sdk/debug/SWConsoleActivity;->products:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 89
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 90
    check-cast v3, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    .line 42
    invoke-virtual {v3}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 39
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    iput-object v1, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->productAdapter:Landroid/widget/ArrayAdapter;

    const p1, 0x1090009

    .line 44
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 45
    iget-object p1, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->productPicker:Landroid/widget/Spinner;

    const-string v0, "productPicker"

    const/4 v1, 0x0

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    iget-object v2, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->productAdapter:Landroid/widget/ArrayAdapter;

    if-nez v2, :cond_4

    const-string v2, "productAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    check-cast v2, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 46
    iget-object p1, p0, Lcom/superwall/sdk/debug/SWConsoleActivity;->productPicker:Landroid/widget/Spinner;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    .line 47
    :goto_1
    new-instance p1, Lcom/superwall/sdk/debug/SWConsoleActivity$onCreate$2;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/debug/SWConsoleActivity$onCreate$2;-><init>(Lcom/superwall/sdk/debug/SWConsoleActivity;)V

    check-cast p1, Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 46
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    invoke-direct {p0}, Lcom/superwall/sdk/debug/SWConsoleActivity;->setupTableView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/SWConsoleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/superwall/sdk/R$menu;->menu_console:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 74
    sget v1, Lcom/superwall/sdk/R$id;->action_done:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/superwall/sdk/debug/SWConsoleActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
